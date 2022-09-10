import React from 'react';
import {usePage} from "@inertiajs/inertia-react";

export default function ApplicationLogo({ className }) {
    const {app_logo} = usePage().props
    return (
        <img src={app_logo.logo} className={className} alt=""/>
    );
}
