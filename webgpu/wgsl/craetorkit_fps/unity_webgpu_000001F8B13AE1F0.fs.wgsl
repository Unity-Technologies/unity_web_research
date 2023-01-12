struct PGlobals {
  unity_FogColor : vec4<f32>,
  x_Color : vec4<f32>,
  x_EmissionColor : vec3<f32>,
  x_DstBlend : i32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_30 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD0 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat6 : f32;
  var u_xlatb6 : bool;
  var x_119 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_25 : vec4<f32> = u_xlat0;
  let x_34 : vec4<f32> = x_30.x_Color;
  u_xlat0 = (x_25 * x_34);
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = vs_COLOR0;
  u_xlat0 = (x_36 * x_39);
  let x_48 : vec2<f32> = vs_TEXCOORD1;
  let x_49 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_48);
  u_xlat1 = vec3<f32>(x_49.x, x_49.y, x_49.z);
  let x_51 : vec3<f32> = u_xlat1;
  let x_57 : f32 = x_30.x_EmissionColor.x;
  let x_60 : f32 = x_30.x_EmissionColor.y;
  let x_63 : f32 = x_30.x_EmissionColor.z;
  let x_66 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = ((x_51 * vec3<f32>(x_57, x_60, x_63)) + vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_76 : f32 = u_xlat0.w;
  SV_Target0.w = x_76;
  let x_79 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = x_30.unity_FogColor;
  u_xlat1 = (vec3<f32>(x_79.x, x_79.y, x_79.z) + -(vec3<f32>(x_83.x, x_83.y, x_83.z)));
  let x_90 : f32 = vs_TEXCOORD0;
  u_xlat6 = x_90;
  let x_91 : f32 = u_xlat6;
  u_xlat6 = clamp(x_91, 0.0f, 1.0f);
  let x_95 : f32 = u_xlat6;
  let x_97 : vec3<f32> = u_xlat1;
  let x_100 : vec4<f32> = x_30.unity_FogColor;
  u_xlat1 = ((vec3<f32>(x_95, x_95, x_95) * x_97) + vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : vec4<f32> = u_xlat0;
  let x_105 : f32 = u_xlat6;
  let x_107 : vec3<f32> = (vec3<f32>(x_103.x, x_103.y, x_103.z) * vec3<f32>(x_105, x_105, x_105));
  let x_108 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_116 : i32 = x_30.x_DstBlend;
  u_xlatb6 = (x_116 == 1i);
  let x_118 : bool = u_xlatb6;
  if (x_118) {
    let x_122 : vec4<f32> = u_xlat0;
    x_119 = vec3<f32>(x_122.x, x_122.y, x_122.z);
  } else {
    let x_125 : vec3<f32> = u_xlat1;
    x_119 = x_125;
  }
  let x_126 : vec3<f32> = x_119;
  let x_127 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
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

