#tag Window
Begin Window Window_Transfer
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   False
   Compatibility   =   ""
   Composite       =   False
   Frame           =   4
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   511
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   -1100839426
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   2
   Resizeable      =   True
   Title           =   "Transfer Patient"
   Visible         =   False
   Width           =   938
   Begin ListBox ListBox_import
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   3
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   2
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   368
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Import Patients"
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   64
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   414
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin ListBox ListBox_Mcgill
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   False
      ColumnWidths    =   "100%"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   368
      HelpTag         =   ""
      Hierarchical    =   True
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "McGill Patients"
      Italic          =   False
      Left            =   571
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   64
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   347
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton PushButton_Quit
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Close"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   446
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   461
      Underline       =   False
      Visible         =   True
      Width           =   113
   End
   Begin PopupMenu PopupMenu_import
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   146
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   32
      Underline       =   False
      Visible         =   True
      Width           =   125
   End
   Begin Label ImportStaticText
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   44
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Folder..."
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   9.0
      TextUnit        =   0
      Top             =   437
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   414
   End
   Begin Label McGillStaticText
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   44
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   571
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "McGill Path:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   9.0
      TextUnit        =   0
      Top             =   437
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   342
   End
   Begin PushButton PushButton_Transfer
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Transfer ->"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   446
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   238
      Underline       =   False
      Visible         =   True
      Width           =   113
   End
   Begin PushButton PushButton_Physics
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Physics"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   446
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   337
      Underline       =   False
      Visible         =   True
      Width           =   113
   End
   Begin Label StaticText1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Import Format"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   32
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   114
   End
   Begin PushButton PushButton_Rewrite
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Rewrite DICOM"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   446
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   405
      Underline       =   False
      Visible         =   True
      Width           =   113
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  McGillrt=Nil
		  app.which_window_Transfer=False
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  Task_DICOMHeader.Enabled=True
		  Task_Contour.Enabled=False
		  Task_TreatmentPlanning.Enabled=False
		  TaskMERT.Enabled=False
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  '======Open Transfer window, set initial stuff
		  Dim s,line as String
		  Dim i,last as Integer
		  Dim d as New Date
		  Dim f as folderItem
		  Dim inp as textInputStream
		  '================================
		  
		  app.which_window_Transfer=True
		  DICOM= new Thread_DICOM_Object
		  
		  '=========Transfer import types. populate
		  s="DICOM,CADPLAN,RTOG"
		  last=CountFields(s,",")
		  PopupMenu_import.DeleteAllRows
		  For i=1 to last
		    PopupMenu_import.addRow NthField(s,",",i)
		  Next
		  
		  
		  
		  '======== Populate import files
		  
		  if PopupMenu_import.text="DICOM" then
		    ImportStaticText.text=gpref.dicomfi.NativePath
		  elseif PopupMenu_import.text="CADPLAN" then
		    ImportStaticText.text=gpref.cadplanfi.NativePath
		  elseif PopupMenu_import.text="RTOG" then
		    ImportStaticText.text=gpref.rtogfi.NativePath
		  end if
		  
		  McGillStaticText.text=gPref.mcgillfi.NativePath
		  
		  
		  UpDate_McGill
		  PopupMenu_import.ListIndex=0
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub save()
		  Dim answer as Boolean
		  
		  
		  answer=McGillRT.Write_McGill
		  Window_Transfer.McGillRT=nil
		  UpDate_McGill
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_CadPlan()
		  dim i as integer
		  dim strtmp as string
		  dim bs as binaryStream
		  dim patientname,ID as string
		  dim thisrow as integer
		  '=========================
		  
		  
		  ListBox_import.deleteAllRows
		  
		  Window_Transfer.ListBox_import.columncount=3
		  Window_Transfer.ListBox_import.columnwidths="32.5%,32.5% , 35%,"
		  Window_Transfer.ListBox_import.heading(0)= "Last"
		  Window_Transfer.ListBox_import.heading(1)= "First"
		  Window_Transfer.ListBox_import.heading(2)= "Patient ID"
		  
		  
		  PW_Title="Scanning CADPLAN folder..."
		  Window_Progress.ProgressBar.Maximum = gPref.cadplanfi.count
		  PW_Show=true
		  PW_StaticText="Scanning    "+ gPref.cadplanfi.NativePath
		  
		  thisrow=0
		  for i=1 to gPref.cadplanfi.count
		    PW_Progress = i+1
		    //have to filter "*.#0" -> like "047726700.110"
		    ID= gPref.cadplanfi.item(i).name
		    
		    strtmp=right(gPref.cadplanfi.item(i).name,3)
		    
		    if  left(strtmp,1)="." and right(strtmp,1)="0" and not gPref.cadplanfi.item(i).directory then //read in the ID and name of that patient from the 0 file
		      bs=gPref.cadplanfi.item(i).openasbinaryFile
		      bs.littleEndian=false
		      
		      ID=left(ID,11)
		      
		      bs.position=260
		      patientname= bs.read(40)
		      
		      //show in the listbox the ID and patient name
		      ListBox_import.addrow NthField(patientname,"^",1)'1st name
		      ListBox_import.cell(thisrow,1)=NthField(patientname,"^",2)'last name
		      ListBox_import.cell(thisrow,2) = left(ID,7)
		      ListBox_import.cell(thisrow,3) = ID
		      
		      
		      
		      bs.close
		      thisrow=thisrow+1
		    end if
		    
		  next
		  PW_Show=false
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_DICOM2()
		  Dim f,g as FolderItem
		  Dim i ,k as Integer
		  Dim s,temp,ID as string
		  Dim found,mm as Boolean
		  
		  
		  ListBox_import.deleteAllRows
		  
		  //import dicom
		  f=gPref.DICOMfi
		  
		  Window_Transfer.ListBox_import.columncount=2
		  Window_Transfer.ListBox_import.columnwidths="65%,35%,"
		  Window_Transfer.ListBox_import.heading(0)= "Patient name"
		  Window_Transfer.ListBox_import.heading(1)= "Patient ID"
		  PW_Title="Scanning DICOM folder : " +f.NativePath
		  Window_Progress.ProgressBar.Maximum = f.count
		  PW_Show=true
		  if f.Exists Then
		    DICOM=new Thread_DICOM_Object
		    if DICOM=nil Then
		      Return
		    end
		    for i=1 to f.count
		      PW_Progress = i+1
		      g=f.Item(i)
		      if g<> nil Then
		        if g.Exists Then
		          PW_StaticText="Reading file : "+g.Name
		          
		          
		          if not g.Directory and g.Visible then
		            //and InStr(g.Name,".dcm")>0 
		            DICOM.File = new Class_DICOM_file
		            mm=DICOM.File.Load_One_DICOM_file(g)
		            DICOM.File.Read_Names // populate di.Pname & di.p_id & di.study_date
		            
		            //(DICOM.File.p_id)>0 then
		            s =DICOM.File.p_id // Patient whole name & ID
		            found=False
		            for k=0 to ListBox_import.ListCount-1 // look if that patient already exists in the list
		              temp = ListBox_import.Cell(k,1)
		              if s=temp then
		                found=True
		                exit
		              end
		            next
		            if not found then
		              ListBox_import.AddRow  DICOM.File.Pname
		              ListBox_import.Cell(ListBox_import.LastIndex,1)=DICOM.File.p_id
		            end
		            //end if
		            
		          end
		        end
		      end
		    next
		  end
		  PW_Show=false
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpDate_McGill()
		  //------------------------------------
		  // Updates the McGill Patient listbox 
		  // within the transfer window
		  //
		  //------------------------------------
		  Dim g as FolderItem
		  Dim i, u ,count,count2,count3 as Integer
		  Dim name,name2, name_id,datasets ,s2 as String
		  //------------------------------------
		  
		  ListBox_Mcgill.DeleteAllRows
		  UpdateMcGill=False
		  
		  // get McGill folder
		  g=gPref.mcgillfi
		  count=0
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
		          name2=(g.item(u).name)
		          if count2>1 then
		            s2=s2+","+name2
		          else
		            s2=name2
		          end
		        end
		      next
		      g=g.Parent
		      if count >1 then
		        datasets=datasets+";"+s2
		      else
		        datasets=s2
		      end
		    end if
		  next
		  
		  ListBox_Mcgill.columnwidths="100%"
		  u=CountFields(name_id,",")
		  For i=1 to u
		    ListBox_Mcgill.addfolder ""
		    ListBox_Mcgill.cell(i-1,1)=NthField(datasets,";",i)
		    ListBox_Mcgill.cell(i-1,0)=NthField(NthField(name_id,",",i),String_Separate,1) +" "+NthField(NthField(name_id,",",i),String_Separate,2)+ " " +NthField(NthField(name_id,",",i),String_Separate,3)
		    
		    
		    
		  Next
		  ListBox_Mcgill.ColumnCount=1
		  ListBox_Mcgill.hierarchical=true
		  //Row_Header=name_id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpDate_RTOG()
		  //-------------------------------------------
		  //
		  //
		  //-------------------------------------------
		  Dim g, tmpfi As folderItem
		  Dim i,k,row as integer
		  Dim ts as TextInputStream
		  Dim temp,temp2 as String
		  //-------------------------------------------
		  
		  ListBox_import.DeleteAllRows
		  
		  g=gPref.rtogfi
		  Window_Transfer.ListBox_import.columncount=2
		  Window_Transfer.ListBox_import.columnwidths="50%,50%,"
		  Window_Transfer.ListBox_import.heading(0)= "Last Name"
		  Window_Transfer.ListBox_import.heading(1)= "First Name"
		  
		  row=-1
		  for i = 1 to g.count
		    tmpfi=g.item(i)
		    if InStr(tmpfi.Name,"aapm0000")>0  then
		      ts=tmpfi.OpenAsTextFile
		      While ts.EOF=False
		        Temp=ts.ReadLine
		        if InStr(Temp,"Patient name")> 0 Then
		          row=row+1
		          temp2=Trim(NthField(Temp,":=",2))
		          Window_Transfer.ListBox_import.addrow Trim(NthField(temp2,",",1))
		          Window_Transfer.ListBox_import.cell(row,1)= Trim(NthField(temp2,",",2))
		          exit
		        end
		      wend
		      ts.Close
		    end if
		  next
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Window_Close()
		  Window_Transfer.close
		  app.which_window_Transfer=False
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CADPLAN As Thread_RTOG
	#tag EndProperty

	#tag Property, Flags = &h0
		DICOM As Thread_DICOM_Object
	#tag EndProperty

	#tag Property, Flags = &h0
		Displays(-1) As window_DICOM_View
	#tag EndProperty

	#tag Property, Flags = &h0
		McGillRT As Thread_RTOG
	#tag EndProperty

	#tag Property, Flags = &h0
		RTOG As Thread_RTOG
	#tag EndProperty

	#tag Property, Flags = &h0
		UpdateMcGill As Boolean = false
	#tag EndProperty


#tag EndWindowCode

#tag Events ListBox_Mcgill
	#tag Event
		Sub DoubleClick()
		  Me.expanded(Me.listindex)=Not Me.expanded(Me.listindex)
		End Sub
	#tag EndEvent
	#tag Event
		Sub ExpandRow(row As Integer)
		  Dim s1 as String
		  Dim i,u as Integer
		  Dim b as Boolean
		  Dim g as Graphics
		  
		  s1=me.cell(row,1)
		  u=CountFields(s1,",")
		  
		  
		  For i=1 to u
		    Me.addrow ""
		    Me.cell(me.lastIndex,0)=NthField(s1,",",i)
		    
		  Next
		End Sub
	#tag EndEvent
	#tag Event
		Sub CollapseRow(row As Integer)
		  Dim i,j,u,NSubRows as Integer
		  
		  NSubRows=CountFields(Me.cell(row,1),",")
		  u=row+1
		  
		  For i=row+NSubRows downto u
		    Me.removerow i
		  Next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Quit
	#tag Event
		Sub Action()
		  Window_Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_import
	#tag Event
		Sub Change()
		  if me.text="RTOG" then
		    ImportStaticText.text=gPref.rtogfi.NativePath
		    UpDate_RTOG
		  elseif me.text="CadPlan" then
		    ImportStaticText.text=gpref.cadplanfi.NativePath
		    UpDate_CadPlan
		  elseif me.text="DICOM" then
		    ImportStaticText.text=gpref.DICOMfi.NativePath
		    Update_DICOM2
		    
		    
		  end if
		  
		  ImportStaticText.Refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ImportStaticText
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim fi,opfi as FolderItem
		  dim fdlg as new SelectFolderDialog
		  
		  
		  
		  if PopupMenu_import.text="DICOM" then
		    opfi=gPref.DICOMfi
		  elseif PopupMenu_import.text="CADPLAN" then
		    opfi=gpref.cadplanfi
		  elseif PopupMenu_import.text="RTOG" then
		    opfi=gpref.rtogfi
		  end
		  
		  
		  
		  fdlg.InitialDirectory=opfi
		  fdlg.Title="Select Folder"
		  fi = fdlg.ShowModal()
		  
		  if fi<>nil then
		    if PopupMenu_import.text="DICOM" then
		      gPref.DICOMfi=fi
		      ImportStaticText.text=gpref.dicomfi.NativePath
		      Update_DICOM2
		    elseif PopupMenu_import.text="CADPLAN" then
		      ImportStaticText.text=gpref.cadplanfi.NativePath
		      gpref.cadplanfi=fi
		      Update_CadPlan
		    elseif PopupMenu_import.text="RTOG" then
		      gpref.rtogfi=fi
		      ImportStaticText.text=gpref.rtogfi.NativePath
		      UpDate_RTOG
		    end if
		    ImportStaticText.Refresh
		    gpref.Write_Pref
		  end if
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events McGillStaticText
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim fi as FolderItem
		  dim fdlg as new SelectFolderDialog
		  
		  
		  
		  
		  
		  fdlg.InitialDirectory=gPref.McGillfi
		  fdlg.Title="Select Folder"
		  fi = fdlg.ShowModal()
		  
		  if fi<>nil then //fi.Exists then
		    gPref.McGillfi=fi
		    McGillStaticText.text=gpref.mcgillfi.NativePath
		    McGillStaticText.Refresh
		    gpref.Write_Pref
		    UpDate_McGill
		  end if
		  
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Transfer
	#tag Event
		Sub Action()
		  //----------------------------------------------------------------------
		  //
		  //
		  //
		  //----------------------------------------------------------------------
		  Dim f,g as folderItem
		  Dim i,k,Z as integer
		  dim fname,Temp,lname, id_string as string
		  Dim ts_in as TextInputStream
		  Dim ts as TextInputStream
		  Dim found as Boolean
		  //----------------------------------------------------------------------
		  
		  
		  
		  i=ListBox_import.listindex
		  if i>=0 then
		    if PopupMenu_import.text="DICOM" then
		      DICOM=nil
		      DICOM=new Thread_DICOM_Object
		      DICOM.File= new Class_DICOM_File
		      
		      id_string=ListBox_import.cell(ListBox_import.listindex,1)
		      fname=ListBox_import.cell(ListBox_import.listindex,0)
		      DICOM.Import_ID=id_string
		      DICOM.Import_Name=fname
		      DICOM.Run
		      DICOM=nil
		      
		      
		    elseif PopupMenu_import.text="CADPLAN" then
		      //import cadplan
		      //get the base file name then
		      fname=ListBox_import.cell(ListBox_import.listindex,3)
		      f=gPref.cadplanfi.child(fname+"0")  //passing image #0 folder item since all cadplan are in same folder...
		      if f<>nil then
		        CADPLAN=nil
		        CADPLAN=new Thread_RTOG
		        PW_Title="Reading CadPlan files"
		        PW_Show=true
		        CADPLAN.Read_CadPlan(f)
		        McGillRT=nil
		        McGillRT= new Thread_RTOG
		        McGillRT.Convert_CadPlan2McGilRT(CADPLAN)
		        PW_Show=false
		      end if
		      
		      
		    elseif PopupMenu_import.text="RTOG" then
		      //import RTOG
		      
		      fname= ListBox_import.cell(i,0)
		      lname=ListBox_import.cell(i,1)
		      
		      
		      
		      for k = 1 to gPref.rtogfi.Count
		        f=gPref.rtogfi.item(k)
		        
		        if InStr(f.Name,"aapm0000")>0  then
		          ts=f.OpenAsTextFile
		          
		          While ts.EOF=False
		            Temp=ts.ReadLine
		            if InStr(Temp,"Patient name")> 0 Then
		              exit
		            end
		          Wend
		          ts.Close
		          
		          if InStr(Temp, fname)>0 and InStr(Temp,lname)> 0 Then
		            
		            f=f.child("aapm0000")
		            
		            PW_Title="Reading RTOG files"
		            PW_Show=true
		            
		            RTOG=nil
		            RTOG=new Thread_RTOG
		            RTOG.Read_RTOG(f)
		            
		            
		            McGillRT=nil
		            McGillRT= new Thread_RTOG
		            McGillRT.Convert_RTOG2McGillRT(RTOG)
		            
		            
		            PW_Show=false
		            
		            exit
		          end
		        end
		      next
		      
		      Window_Import_Changes.Title="Writing to McGill RT format"
		      Window_Import_Changes.Show
		      
		      
		    end if
		    
		    
		    
		  end
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Physics
	#tag Event
		Sub Action()
		  Window_CreatBox.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Rewrite
	#tag Event
		Sub Action()
		  //----------------------------------------------------------------------
		  //
		  //
		  //
		  //----------------------------------------------------------------------
		  Dim f,g as folderItem
		  Dim i,k,Z as integer
		  dim fname,Temp,lname, id_string as string
		  Dim ts_in as TextInputStream
		  Dim ts as TextInputStream
		  Dim found as Boolean
		  //----------------------------------------------------------------------
		  
		  i=ListBox_import.listindex
		  if i>=0 then
		    if PopupMenu_import.text="DICOM" then
		      DICOM=nil
		      DICOM=new Thread_DICOM_Object
		      DICOM.File= new Class_DICOM_File
		      DICOM.TaskNum=0
		      id_string=ListBox_import.cell(ListBox_import.listindex,1)
		      fname=ListBox_import.cell(ListBox_import.listindex,0)
		      DICOM.Import_ID=id_string
		      DICOM.Import_Name=fname
		      DICOM.Run
		      DICOM=nil
		    end if
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="UpdateMcGill"
		Group="Behavior"
		InitialValue="false"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
