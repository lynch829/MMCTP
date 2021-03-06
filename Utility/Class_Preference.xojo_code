#tag Class
Protected Class Class_Preference
	#tag Method, Flags = &h0
		Sub Initialize()
		  //-------------------
		  // FIND config folder, reset all folder paths
		  //
		  // Alexander 2011
		  // Update MsgBox for confi folder
		  //-------------------
		  Dim fi as FolderItem
		  Dim eb as Boolean
		  Dim ss as String
		  //-------------------
		  
		  // Initialize the main MMCTP folders
		  cadplanfi=new FolderItem
		  mcgillfi=new FolderItem
		  DICOMfi=new FolderItem
		  rtogfi=new FolderItem
		  Commission_fi=new FolderItem
		  
		  // Get the MMCTP app folder
		  fi=Initialize_MMCTP_Folder
		  
		  // Get Config folder
		  fi=fi.child("Configurations")
		  
		  if fi.Exists Then
		    Config_fi=fi
		  else // Could not find Configurations folder
		    MsgBox("MMCTP not installed, could not find folder : "+fi.Name+chr(13)+"At location : "+fi.ShellPath)
		    Quit
		  end
		  
		  // Open MMCTP settings
		  Read_Settings
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Initialize_MMCTP_Folder() As folderItem
		  //---------------------------------------------------
		  // FIND MMCTP Main folder
		  //
		  // A Alexander 2012
		  // Update MsgBox for main folder location
		  //-------------------------------------------------
		  Dim fi as FolderItem
		  //---------------------------------------------------
		  
		  if TargetWin32 Then
		    fi=SpecialFolder.Applications
		    fi=fi.child("McGill Medical Physics")
		    if fi<> nil Then
		      fi=fi.Child("MMCTP")
		    end
		  elseif TargetMacOS Then
		    fi=SpecialFolder.Applications
		    fi=fi.child("MMCTP")
		  elseif TargetLinux Then
		    fi=SpecialFolder.UserLibrary //2011 Linux UPDATE for MMCTP Install area
		    fi=fi.child("MMCTP")
		  end
		  
		  if fi=nil Then
		    MsgBox("MMCTP not installed, app folder returned Nil")
		    Quit
		  end
		  
		  if fi.Exists=False Then
		    MsgBox("MMCTP not installed, app folder at location "+fi.ShellPath+" does not exist")
		    Quit
		  else
		    Return fi
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Read_mcgill() As string
		  //-----------------------------------
		  // Readin McGill RT folder
		  //
		  //-----------------------------------
		  Dim g as FolderItem
		  Dim i,u,count,count2,count3 as Integer
		  Dim name,name2,name_id,dataset ,s2 as String
		  '==================Find Strings for folder listbox
		  ' get McGill folder
		  
		  
		  g=gPref.mcgillfi
		  count=0
		  if g<>nil Then
		    for i =1 to g.count
		      
		      name=(g.item(i).name)
		      
		      if g.item(i).directory and InStr(name,String_Separate)>0 then
		        count=count+1
		        
		        if count>1 then
		          name_id=name_id+","+name
		        else
		          name_id=name
		        end
		        
		        g=g.Child(name)
		        count2=0
		        for u=1 to g.Count
		          if g.item(u).directory then
		            count2=count2+1
		            name2=(g.item(u).name)+"%%"+str(Count)
		            if count2>1 then
		              s2=s2+","+name2
		            else
		              s2=name2
		            end
		          end
		        next
		        g=g.Parent
		        if count >1 then
		          dataset=dataset+";"+s2
		        else
		          dataset=s2
		        end
		      end if
		    next
		  end
		  '=========================
		  Return name_id +"Dataset"+dataset
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_pref(fi as folderitem)
		  //-----------------------------------------------
		  // Opens MMCTP preference file to read folder locations
		  // pref.txt
		  //
		  // Updates
		  // 2012: Alexander, update endian options for user to select endian 
		  //           for McGill RT files 
		  //-----------------------------------------------
		  dim ts as TextInputStream
		  dim tempstr,modstr as String
		  dim openfol as new SelectFolderDialog
		  dim f as FolderItem
		  //-----------------------------------------------
		  
		  ts=fi.OpenAsTextFile
		  if ts=nil then
		    Return
		  end
		  
		  // Set dafault endian type to big for previous versions of MMCTP and McGill RT files
		  // This is needed for anyone who's McGill RT files predate Feb 2012
		  endian=False
		  
		  while not ts.eof
		    tempstr=ts.ReadLine
		    if instr(tempstr,"CadPlan Path")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      f=GetFolderItem(modstr)
		      if f<> nil Then
		        if f.Exists Then
		          cadplanfi=f
		        end
		      end
		      
		    elseif InStr(tempstr,"DICOM Path")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      f=GetFolderItem(modstr)
		      if f<> nil Then
		        if f.Exists Then
		          Dicomfi=f
		        end
		      end
		      
		    elseif instr(tempstr,"RTOG Path")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      f=GetFolderItem(modstr)
		      if f<> nil Then
		        if f.Exists Then
		          rtogfi=f
		        end
		      end
		      
		      
		    elseif instr(tempstr,"McGill Path")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      f= new FolderItem(modstr, FolderItem.PathTypeNative)
		      if f<> nil Then
		        if f.Exists Then
		          mcgillfi=f
		        end
		      end
		      
		    elseif instr(tempstr,"BEAMnrc")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      
		      try
		        f= new FolderItem(modstr, FolderItem.PathTypeShell)
		      Exception err as RuntimeException
		        Errors.Append "Error within read preference folders/files"
		        
		      end try
		      
		      if f<> nil Then
		        if f.Exists Then
		          BEAMnrc_fi=f
		        end
		      end
		      
		    elseif instr(tempstr,"VMC")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      f=GetFolderItem(modstr)
		      if f<> nil Then
		        if f.Exists Then
		          VMC_fi=f
		        end
		      end
		      
		    elseif instr(tempstr,"Commission")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      f=GetFolderItem(modstr)
		      if f<> nil Then
		        if f.Exists Then
		          Commission_fi=f
		        end
		      end
		      
		    elseif instr(tempstr,"McGillCutout")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      f=GetFolderItem(modstr)
		      if f<> nil Then
		        if f.Exists Then
		          McGillCutout=f
		        end
		      end
		      
		    elseif instr(tempstr,"EXPORTDICOM")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      if modstr="Yes" Then
		        EXPORT_DICOM_Plane=True
		      else
		        EXPORT_DICOM_Plane=False
		      end
		      
		    elseif instr(tempstr,"EXPORTtext")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      if modstr="Yes" Then
		        Export_Text_Plane=True
		      else
		        Export_Text_Plane=False
		      end
		      
		    elseif instr(tempstr,"EXPORTinterpolation")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      Dose_Interpolate=Val(modstr)
		      
		    elseif instr(tempstr,"DVHCalc")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      DVH_Calc=Val(modstr)
		      
		    elseif instr(tempstr,"DICOMImportInvertContour")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      if modstr="Yes" Then
		        DICOM_IN_Inverse=True
		      else
		        DICOM_IN_Inverse=False
		      end
		      
		    elseif instr(tempstr,"McGillRTendian")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      if modstr="Little" Then
		        endian=True
		      else
		        endian=False
		      end
		      
		    elseif instr(tempstr,"DICOMZInvert")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      if modstr="Yes" Then
		        DICOM_Z_Invert=True
		      else
		        DICOM_Z_Invert=False
		      end
		      
		    elseif instr(tempstr,"DICOMCT")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      if modstr="Yes" Then
		        DICOM_IN_CT=True
		      else
		        DICOM_IN_CT=False
		      end
		      
		    elseif instr(tempstr,"DICOMSTRUCT")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      if modstr="Yes" Then
		        DICOM_IN_STRUCT=True
		      else
		        DICOM_IN_STRUCT=False
		      end
		      
		    elseif instr(tempstr,"DICOMRTPLAN")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      if modstr="Yes" Then
		        DICOM_IN_RTPLAN=True
		      else
		        DICOM_IN_RTPLAN=False
		      end
		      
		    elseif instr(tempstr,"DICOMRTDOSE")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      if modstr="Yes" Then
		        DICOM_IN_RTDOSE=True
		      else
		        DICOM_IN_RTDOSE=False
		      end
		      
		    elseif instr(tempstr,"DICOMBytes")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      DICOM_Bytes=Val(modstr)
		      
		    elseif instr(tempstr,"ManufacturerID")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      Manufacturer=(modstr)
		      
		    elseif instr(tempstr,"ManufacturerName")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      ManufacturerName=(modstr)
		      
		    elseif instr(tempstr,"StationName")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      StationName=(modstr)
		      
		    elseif instr(tempstr,"SoftwareVersion")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      SoftwareVersion=(modstr)
		      
		    elseif instr(tempstr,"DICOMFileStructure")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      DICOM_FileStructure=val(modstr)
		      
		    elseif instr(tempstr,"DICOMRTTOMOCONVERT")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      if modstr="Yes" Then
		        DICOM_Convert_Tomo=True
		      else
		        DICOM_Convert_Tomo=False
		      end
		      
		    elseif instr(tempstr,"DICOMRTAnonymize")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      if modstr="Yes" Then
		        DICOM_Convert_Anonymize=True
		      else
		        DICOM_Convert_Anonymize=False
		      end
		      
		    elseif instr(tempstr,"DVHCLEAN")>0 then
		      modstr=trim(NthField(tempstr,":=",2))
		      if modstr="Yes" Then
		        DVH_clean=True
		      else
		        DVH_clean=False
		      end
		      
		    end if
		  wend
		  ts.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Read_Settings()
		  //-----------------------------------
		  // 
		  //
		  //-----------------------------------
		  Dim fi as FolderItem
		  //-----------------------------------
		  
		  
		  
		  fi=SpecialFolder.ApplicationData
		  fi=fi.Child("MMCTP")
		  if fi.Exists = False Then
		    fi.CreateAsFolder
		  end
		  
		  
		  fi=fi.Child("MMCTP-Settings")
		  if fi.Exists Then
		    Settings_fi=fi
		  else
		    fi.CreateAsFolder
		    Settings_fi=fi
		  end
		  
		  // Set all folders to default locations
		  cadplanfi=Settings_fi
		  mcgillfi=SpecialFolder.Documents.Child("McGillRT")
		  DICOMfi=Settings_fi
		  rtogfi=Settings_fi
		  BEAMnrc_fi=Settings_fi
		  VMC_fi=Settings_fi
		  McGillCutout=Settings_fi
		  Commission_fi=Settings_fi
		  Linacs_file=Settings_fi.child("BEAM.pref")
		  
		  fi=Settings_fi.Child("pref.txt")
		  if fi.Exists Then
		    Read_pref(fi)
		  else
		    Write_Pref
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write_Pref()
		  //------------------------------
		  // Write MMCTP pref.txt file
		  // File contains folder paths for user files
		  //------------------------------
		  dim ts as TextOutputStream
		  dim fi as folderitem
		  //------------------------------
		  
		  fi=Settings_fi.Child("pref.txt")
		  
		  ts=fi.CreateTextFile
		  if ts=nil Then
		    Return
		  end
		  
		  if rtogfi=nil then
		    ts.writeline "RTOG path := "+ fi.Parent.NativePath
		  else
		    ts.writeline "RTOG path := "+ rtogfi.NativePath
		  end
		  
		  if DICOMfi=nil then
		    ts.writeline "DICOM path := "+ fi.Parent.NativePath
		  else
		    ts.writeline "DICOM path := "+ DICOMfi.NativePath
		  end
		  
		  if cadplanfi=nil then
		    ts.writeline "CadPlan path := "+ fi.Parent.NativePath
		  else
		    ts.writeline "CadPlan path := "+ cadplanfi.NativePath
		  end
		  
		  if mcgillfi=nil then
		    mcgillfi=SpecialFolder.Documents
		    mcgillfi=mcgillfi.Child("McGillRT")
		    mcgillfi.CreateAsFolder
		  end
		  
		  ts.WriteLine "McGill path := "+mcgillfi.NativePath
		  
		  if BEAMnrc_fi=nil then
		    ts.writeline "BEAMnrc path := "+ fi.Parent.NativePath
		  else
		    ts.writeline "BEAMnrc path := "+ BEAMnrc_fi.ShellPath
		  end
		  
		  
		  if VMC_fi=nil then
		    ts.writeline "VMC path := "+ fi.Parent.NativePath
		  else
		    ts.writeline "VMC path := "+ VMC_fi.NativePath
		  end
		  
		  if Commission_fi=nil then
		    ts.writeline "Commission path := "+ fi.Parent.NativePath
		  else
		    ts.writeline "Commission path := "+ Commission_fi.NativePath
		  end
		  
		  if McGillCUtout=nil then
		    ts.writeline "McGillCutout path := "+ fi.Parent.NativePath
		  else
		    ts.writeline "McGillCutout path := "+ McGillCUtout.NativePath
		  end
		  
		  if EXPORT_DICOM_Plane Then
		    ts.writeline "EXPORTDICOM := Yes"
		  else
		    ts.writeline "EXPORTDICOM := No"
		  end
		  
		  if Export_Text_Plane Then
		    ts.writeline "EXPORTtext := Yes"
		  else
		    ts.writeline "EXPORTtext := No"
		  end
		  
		  ts.writeline "EXPORTinterpolation := "+Format(Dose_Interpolate,"#")
		  ts.writeline "DVHCalc := "+Format(DVH_Calc,"#")
		  
		  if DICOM_IN_Inverse Then
		    ts.writeline "DICOMImportInvertContour := Yes"
		  else
		    ts.writeline "DICOMImportInvertContour := No"
		  end
		  
		  if endian Then
		    ts.writeline "McGillRTendian := Little"
		  else
		    ts.writeline "McGillRTendian := Big"
		  end
		  
		  
		  if DICOM_Z_Invert Then
		    ts.writeline "DICOMZInvert := Yes"
		  else
		    ts.writeline "DICOMZInvert := No"
		  end
		  
		  ts.writeline "DICOMBytes := "+Format(DICOM_Bytes,"#")
		  ts.writeline "ManufacturerID := "+Manufacturer
		  ts.writeline "ManufacturerName := "+ManufacturerName
		  ts.writeline "StationName := "+StationName
		  ts.writeline "SoftwareVersion := "+SoftwareVersion
		  
		  
		  if DICOM_IN_CT Then
		    ts.writeline "DICOMCT := Yes"
		  else
		    ts.writeline "DICOMCT := No"
		  end
		  
		  if DICOM_IN_STRUCT Then
		    ts.writeline "DICOMSTRUCT := Yes"
		  else
		    ts.writeline "DICOMSTRUCT := No"
		  end
		  
		  if DICOM_IN_RTPLAN Then
		    ts.writeline "DICOMRTPLAN := Yes"
		  else
		    ts.writeline "DICOMRTPLAN := No"
		  end
		  
		  if DICOM_IN_RTDOSE Then
		    ts.writeline "DICOMRTDOSE := Yes"
		  else
		    ts.writeline "DICOMRTDOSE := No"
		  end
		  
		  if DICOM_Convert_Tomo Then
		    ts.writeline "DICOMRTTOMOCONVERT := Yes"
		  else
		    ts.writeline "DICOMRTTOMOCONVERT := No"
		  end
		  
		  if DVH_clean Then
		    ts.writeline "DVHCLEAN := Yes"
		  else
		    ts.writeline "DVHCLEAN := No"
		  end
		  
		  ts.writeline "DICOMFileStructure := "+str(DICOM_FileStructure)
		  
		  if DICOM_Convert_Anonymize Then
		    ts.writeline "DICOMRTAnonymize := Yes"
		  else
		    ts.writeline "DICOMRTAnonymize := No"
		  end
		  
		  ts.close
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BEAMnrc_fi As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		cadplanfi As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Commission_fi As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Config_fi As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOMfi As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_Bytes As Integer = 16
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_Convert_Anonymize As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_Convert_Tomo As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			0 Varian
			1 Tomotherapy
			2 XiO
		#tag EndNote
		DICOM_FileStructure As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			0 Implicit
			1 Explicit
		#tag EndNote
		DICOM_Format As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_IN_CT As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_IN_Inverse As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_IN_RTDOSE As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_IN_RTPLAN As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_IN_STRUCT As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_In_Structure_Slice_Assigment As Single
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM_Z_Invert As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			// 0 for no interpolation
			// 1 to interpolate
		#tag EndNote
		Dose_Interpolate As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Graphics
			
			0 for Graphics
			
			1 for iswithin
			
			2 for Graphics and iswithin
		#tag EndNote
		DVH_Calc As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		DVH_clean As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			little = true
			big =false
		#tag EndNote
		endian As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		EXPORT_DICOM_Plane As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Export_Text_Plane As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Linacs_file As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Manufacturer As String = "MMCTP"
	#tag EndProperty

	#tag Property, Flags = &h0
		ManufacturerName As String = "MMCTP"
	#tag EndProperty

	#tag Property, Flags = &h0
		McGillCutout As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		mcgillfi As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		McGillRT_Dose_Skip As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		rtogfi As folderitem
	#tag EndProperty

	#tag Property, Flags = &h0
		Settings_fi As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Show_Patient_Info As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		SoftwareVersion As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StationName As String = "MMCTP"
	#tag EndProperty

	#tag Property, Flags = &h0
		VMC_fi As FolderItem
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DICOM_Bytes"
			Group="Behavior"
			InitialValue="16"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_Convert_Anonymize"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_Convert_Tomo"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_FileStructure"
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_Format"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_IN_CT"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_IN_Inverse"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_IN_RTDOSE"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_IN_RTPLAN"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_IN_STRUCT"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_In_Structure_Slice_Assigment"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DICOM_Z_Invert"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dose_Interpolate"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DVH_Calc"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DVH_clean"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="endian"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EXPORT_DICOM_Plane"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Export_Text_Plane"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Manufacturer"
			Group="Behavior"
			InitialValue="MMCTP"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ManufacturerName"
			Group="Behavior"
			InitialValue="MMCTP"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="McGillRT_Dose_Skip"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Show_Patient_Info"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SoftwareVersion"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StationName"
			Group="Behavior"
			InitialValue="MMCTP"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
