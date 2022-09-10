import React from 'react'
import {Link, Head} from '@inertiajs/inertia-react'
import DashboardLayout from "@/Layouts/Dashboard";
import {EditFormGuru, EditFormInventaris, EditFormKaryawan, EditFormSiswa} from "@/Components/EditForms";

export default function Edit(props) {
    if(route().current('siswa.*')) {
        return (
            <DashboardLayout props={props}>
                <Head title="Edit Data Siswa"/>

                <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div className="p-6 bg-white border-b border-gray-200">
                        <EditFormSiswa siswa={props} />
                    </div>
                </div>
            </DashboardLayout>
        )
    } else if (route().current('guru.*')) {
        return (
            <DashboardLayout props={props}>
                <Head title="Edit Data Guru"/>

                <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div className="p-6 bg-white border-b border-gray-200">
                        <EditFormGuru guru={props} />
                    </div>
                </div>
            </DashboardLayout>
        )
    } else if (route().current('karyawan.*')) {
        return (
            <DashboardLayout props={props}>
                <Head title="Edit Data Guru"/>

                <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div className="p-6 bg-white border-b border-gray-200">
                        <EditFormKaryawan karyawan={props} />
                    </div>
                </div>
            </DashboardLayout>
        )
    } else if(route().current('inventaris.*')) {
        return (
            <DashboardLayout props={props}>
                <Head title="Edit Data Guru"/>

                <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div className="p-6 bg-white border-b border-gray-200">
                        <EditFormInventaris inventaris={props} />
                    </div>
                </div>
            </DashboardLayout>
        )
    }
}
