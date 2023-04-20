diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_PointClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlatu1 : vec3<u32>;

var<private> u_xlatb2 : vec3<bool>;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlatb9 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_99 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, x_23, x_33);
  u_xlat0 = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_40 : vec3<f32> = u_xlat0;
  u_xlatu1 = (bitcast<vec3<u32>>(x_40) & vec3<u32>(2147483647u, 2147483647u, 2147483647u));
  let x_52 : vec3<u32> = u_xlatu1;
  let x_55 : vec4<bool> = (vec4<u32>(2139095040u, 2139095040u, 2139095040u, 0u) < vec4<u32>(x_52.x, x_52.y, x_52.z, x_52.x));
  u_xlatb2 = vec3<bool>(x_55.x, x_55.y, x_55.z);
  let x_58 : vec3<u32> = u_xlatu1;
  let x_64 : vec4<bool> = (bitcast<vec4<i32>>(vec4<u32>(x_58.x, x_58.y, x_58.z, x_58.x)) == vec4<i32>(2139095040i, 2139095040i, 2139095040i, 0i));
  u_xlatb1 = vec3<bool>(x_64.x, x_64.y, x_64.z);
  let x_70 : bool = u_xlatb2.y;
  let x_72 : bool = u_xlatb2.x;
  u_xlatb9 = (x_70 | x_72);
  let x_76 : bool = u_xlatb2.z;
  let x_77 : bool = u_xlatb9;
  u_xlatb9 = (x_76 | x_77);
  let x_80 : bool = u_xlatb1.y;
  let x_82 : bool = u_xlatb1.x;
  u_xlatb1.x = (x_80 | x_82);
  let x_86 : bool = u_xlatb1.z;
  let x_88 : bool = u_xlatb1.x;
  u_xlatb1.x = (x_86 | x_88);
  let x_91 : bool = u_xlatb9;
  let x_93 : bool = u_xlatb1.x;
  u_xlatb9 = (x_91 | x_93);
  let x_97 : bool = u_xlatb9;
  if (x_97) {
    x_99 = vec3<f32>(0.0f, 0.0f, 0.0f);
  } else {
    let x_105 : vec3<f32> = u_xlat0;
    x_99 = x_105;
  }
  let x_106 : vec3<f32> = x_99;
  let x_107 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


