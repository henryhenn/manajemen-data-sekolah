import React from 'react';
import Authenticated from '@/Layouts/Authenticated';

export default function DashboardLayout(props) {
    return (
        <Authenticated
            auth={props.props.auth}
            errors={props.props.errors}
            header={<h2 className="font-bold text-xl text-gray-800 leading-tight">Dashboard</h2>}
        >

            <div className="py-12">
                <div className="max-w-7xl mx-auto sm:px-6 lg:px-8">
                    {props.children}
                </div>
            </div>
        </Authenticated>
    )
}
