#tag Class
Protected Class Class_DICOM_Referenced_Frame_of_Ref_Sequence
	#tag Property, Flags = &h0
		FrameofReferenceUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ReferencedStudySequence(-1) As Class_DICOM_Referenced_Study_Sequence
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="FrameofReferenceUID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
