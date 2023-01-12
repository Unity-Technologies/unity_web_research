struct PGlobals {
  unity_FogColor : vec4<f32>,
  x_Color : vec4<f32>,
  x_CameraFadeParams : vec4<f32>,
  x_DstBlend : i32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_49 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat7 : f32;
  var u_xlatb7 : bool;
  var x_112 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec3<f32> = vs_TEXCOORD2;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = x_26;
  let x_33 : vec2<f32> = vs_TEXCOORD1;
  let x_34 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_33);
  u_xlat1 = x_34;
  let x_35 : vec4<f32> = u_xlat0;
  let x_36 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_35 + -(x_36));
  let x_39 : vec3<f32> = vs_TEXCOORD2;
  let x_41 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec4<f32>(x_39.z, x_39.z, x_39.z, x_39.z) * x_41) + x_43);
  let x_45 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_49.x_Color;
  u_xlat0 = (x_45 * x_53);
  let x_55 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = vs_COLOR0;
  let x_64 : vec4<f32> = x_49.unity_FogColor;
  let x_67 : vec3<f32> = ((vec3<f32>(x_55.x, x_55.y, x_55.z) * vec3<f32>(x_59.x, x_59.y, x_59.z)) + -(vec3<f32>(x_64.x, x_64.y, x_64.z)));
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_70 : vec4<f32> = u_xlat0;
  let x_71 : vec4<f32> = vs_COLOR0;
  u_xlat0 = (x_70 * x_71);
  let x_77 : f32 = vs_TEXCOORD0;
  u_xlat7 = x_77;
  let x_78 : f32 = u_xlat7;
  u_xlat7 = clamp(x_78, 0.0f, 1.0f);
  let x_82 : f32 = u_xlat7;
  let x_84 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = x_49.unity_FogColor;
  let x_90 : vec3<f32> = ((vec3<f32>(x_82, x_82, x_82) * vec3<f32>(x_84.x, x_84.y, x_84.z)) + vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_93 : vec4<f32> = u_xlat0;
  let x_95 : f32 = u_xlat7;
  let x_97 : vec3<f32> = (vec3<f32>(x_93.x, x_93.y, x_93.z) * vec3<f32>(x_95, x_95, x_95));
  let x_98 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_106 : i32 = x_49.x_DstBlend;
  u_xlatb7 = (x_106 == 1i);
  let x_110 : bool = u_xlatb7;
  if (x_110) {
    let x_115 : vec4<f32> = u_xlat0;
    x_112 = vec3<f32>(x_115.x, x_115.y, x_115.z);
  } else {
    let x_118 : vec4<f32> = u_xlat1;
    x_112 = vec3<f32>(x_118.x, x_118.y, x_118.z);
  }
  let x_120 : vec3<f32> = x_112;
  let x_121 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_127 : f32 = vs_TEXCOORD3.z;
  let x_132 : f32 = x_49.x_CameraFadeParams.x;
  u_xlat0.x = (x_127 + -(x_132));
  let x_137 : f32 = u_xlat0.x;
  let x_140 : f32 = x_49.x_CameraFadeParams.y;
  u_xlat0.x = (x_137 * x_140);
  let x_144 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_144, 0.0f, 1.0f);
  let x_148 : f32 = u_xlat0.x;
  let x_151 : f32 = u_xlat0.w;
  SV_Target0.w = (x_148 * x_151);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec3<f32>, @location(2) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : f32, @location(4) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

