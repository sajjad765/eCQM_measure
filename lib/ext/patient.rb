Patient = QDM::Patient

class Patient
	include QDM

	def gender
		get_by_hqmf_oid('2.16.840.1.113883.10.20.28.3.55').first.dataElementCodes.first.code
	end

end