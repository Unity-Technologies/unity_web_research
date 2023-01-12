struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
  x_Color : vec4<f32>,
  x_EmissionColor : vec3<f32>,
  x_Cutoff : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD0 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlatb6 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_25 : vec4<f32> = u_xlat0;
  let x_34 : vec4<f32> = x_29.x_Color;
  u_xlat0 = (x_25 * x_34);
  let x_41 : f32 = u_xlat0.w;
  let x_46 : f32 = vs_COLOR0.w;
  let x_51 : f32 = x_29.x_Cutoff;
  u_xlat6 = ((x_41 * x_46) + -(x_51));
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = vs_COLOR0;
  let x_58 : vec3<f32> = (vec3<f32>(x_54.x, x_54.y, x_54.z) * vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_59 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_58.x, x_58.y, x_58.z, x_59.w);
  let x_61 : f32 = u_xlat6;
  u_xlat6 = (x_61 + 0.0001f);
  let x_67 : f32 = u_xlat6;
  u_xlatb6 = (x_67 < 0.0f);
  let x_70 : bool = u_xlatb6;
  if (((select(0i, 1i, x_70) * -1i) != 0i)) {
    discard;
  }
  let x_87 : vec2<f32> = vs_TEXCOORD1;
  let x_88 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_87);
  u_xlat1 = vec3<f32>(x_88.x, x_88.y, x_88.z);
  let x_90 : vec3<f32> = u_xlat1;
  let x_94 : f32 = x_29.x_EmissionColor.x;
  let x_97 : f32 = x_29.x_EmissionColor.y;
  let x_100 : f32 = x_29.x_EmissionColor.z;
  let x_103 : vec4<f32> = u_xlat0;
  let x_105 : vec3<f32> = ((x_90 * vec3<f32>(x_94, x_97, x_100)) + vec3<f32>(x_103.x, x_103.y, x_103.z));
  let x_106 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
  let x_108 : vec4<f32> = u_xlat0;
  let x_111 : vec4<f32> = x_29.unity_FogColor;
  let x_114 : vec3<f32> = (vec3<f32>(x_108.x, x_108.y, x_108.z) + -(vec3<f32>(x_111.x, x_111.y, x_111.z)));
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_118 : f32 = vs_TEXCOORD0;
  let x_120 : f32 = x_29.x_ProjectionParams.y;
  u_xlat6 = (x_118 / x_120);
  let x_122 : f32 = u_xlat6;
  u_xlat6 = (-(x_122) + 1.0f);
  let x_126 : f32 = u_xlat6;
  let x_128 : f32 = x_29.x_ProjectionParams.z;
  u_xlat6 = (x_126 * x_128);
  let x_130 : f32 = u_xlat6;
  u_xlat6 = max(x_130, 0.0f);
  let x_132 : f32 = u_xlat6;
  let x_135 : f32 = x_29.unity_FogParams.x;
  u_xlat6 = (x_132 * x_135);
  let x_137 : f32 = u_xlat6;
  let x_138 : f32 = u_xlat6;
  u_xlat6 = (x_137 * -(x_138));
  let x_141 : f32 = u_xlat6;
  u_xlat6 = exp2(x_141);
  let x_145 : f32 = u_xlat6;
  let x_147 : vec4<f32> = u_xlat0;
  let x_151 : vec4<f32> = x_29.unity_FogColor;
  let x_153 : vec3<f32> = ((vec3<f32>(x_145, x_145, x_145) * vec3<f32>(x_147.x, x_147.y, x_147.z)) + vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_154 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  SV_Target0.w = 1.0f;
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

