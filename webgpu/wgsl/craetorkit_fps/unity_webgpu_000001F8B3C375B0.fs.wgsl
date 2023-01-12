struct PGlobals {
  unity_FogColor : vec4<f32>,
  x_Color : vec4<f32>,
  x_DstBlend : i32,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlatb0 : bool;
  var u_xlat1 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat2 : f32;
  var x_95 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : i32 = x_14.x_DstBlend;
  u_xlatb0 = (x_18 == 1i);
  let x_36 : vec2<f32> = vs_TEXCOORD1;
  let x_37 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_36);
  u_xlat1 = x_37;
  let x_38 : vec4<f32> = u_xlat1;
  let x_41 : vec4<f32> = x_14.x_Color;
  u_xlat1 = (x_38 * x_41);
  let x_46 : vec4<f32> = u_xlat1;
  let x_50 : vec4<f32> = vs_COLOR0;
  let x_55 : vec4<f32> = x_14.unity_FogColor;
  u_xlat3 = ((vec3<f32>(x_46.x, x_46.y, x_46.z) * vec3<f32>(x_50.x, x_50.y, x_50.z)) + -(vec3<f32>(x_55.x, x_55.y, x_55.z)));
  let x_59 : vec4<f32> = u_xlat1;
  let x_60 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (x_59 * x_60);
  let x_66 : f32 = vs_TEXCOORD0;
  u_xlat2 = x_66;
  let x_67 : f32 = u_xlat2;
  u_xlat2 = clamp(x_67, 0.0f, 1.0f);
  let x_71 : f32 = u_xlat2;
  let x_73 : vec3<f32> = u_xlat3;
  let x_76 : vec4<f32> = x_14.unity_FogColor;
  u_xlat3 = ((vec3<f32>(x_71, x_71, x_71) * x_73) + vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_79 : vec4<f32> = u_xlat1;
  let x_81 : f32 = u_xlat2;
  let x_83 : vec3<f32> = (vec3<f32>(x_79.x, x_79.y, x_79.z) * vec3<f32>(x_81, x_81, x_81));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_91 : f32 = u_xlat1.w;
  SV_Target0.w = x_91;
  let x_94 : bool = u_xlatb0;
  if (x_94) {
    let x_98 : vec4<f32> = u_xlat1;
    x_95 = vec3<f32>(x_98.x, x_98.y, x_98.z);
  } else {
    let x_101 : vec3<f32> = u_xlat3;
    x_95 = x_101;
  }
  let x_102 : vec3<f32> = x_95;
  let x_103 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_102.x, x_102.y, x_102.z, x_103.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

