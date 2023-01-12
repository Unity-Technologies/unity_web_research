struct PGlobals {
  unity_FogColor : vec4<f32>,
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
  let x_86 : vec2<f32> = vs_TEXCOORD1;
  let x_87 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_86);
  u_xlat1 = vec3<f32>(x_87.x, x_87.y, x_87.z);
  let x_89 : vec3<f32> = u_xlat1;
  let x_93 : f32 = x_29.x_EmissionColor.x;
  let x_96 : f32 = x_29.x_EmissionColor.y;
  let x_99 : f32 = x_29.x_EmissionColor.z;
  let x_102 : vec4<f32> = u_xlat0;
  let x_104 : vec3<f32> = ((x_89 * vec3<f32>(x_93, x_96, x_99)) + vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_107 : vec4<f32> = u_xlat0;
  let x_110 : vec4<f32> = x_29.unity_FogColor;
  let x_113 : vec3<f32> = (vec3<f32>(x_107.x, x_107.y, x_107.z) + -(vec3<f32>(x_110.x, x_110.y, x_110.z)));
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_117 : f32 = vs_TEXCOORD0;
  u_xlat6 = x_117;
  let x_118 : f32 = u_xlat6;
  u_xlat6 = clamp(x_118, 0.0f, 1.0f);
  let x_123 : f32 = u_xlat6;
  let x_125 : vec4<f32> = u_xlat0;
  let x_129 : vec4<f32> = x_29.unity_FogColor;
  let x_131 : vec3<f32> = ((vec3<f32>(x_123, x_123, x_123) * vec3<f32>(x_125.x, x_125.y, x_125.z)) + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
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

