struct PGlobals {
  x_Color : vec4<f32>,
  x_EmissionColor : vec3<f32>,
  x_Cutoff : f32,
  x_ColorAddSubDiff : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat6 : f32;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
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
  let x_54 : vec4<f32> = vs_COLOR0;
  let x_58 : vec4<f32> = x_29.x_ColorAddSubDiff;
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec3<f32> = ((vec3<f32>(x_54.x, x_54.y, x_54.z) * vec3<f32>(x_58.x, x_58.x, x_58.x)) + vec3<f32>(x_61.x, x_61.y, x_61.z));
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_66 : f32 = u_xlat6;
  u_xlat6 = (x_66 + 0.0001f);
  let x_72 : f32 = u_xlat6;
  u_xlatb6 = (x_72 < 0.0f);
  let x_75 : bool = u_xlatb6;
  if (((select(0i, 1i, x_75) * -1i) != 0i)) {
    discard;
  }
  let x_86 : vec4<f32> = u_xlat0;
  let x_89 : vec4<f32> = u_xlat0;
  u_xlat1 = (-(vec3<f32>(x_86.x, x_86.y, x_86.z)) + abs(vec3<f32>(x_89.x, x_89.y, x_89.z)));
  let x_94 : vec4<f32> = x_29.x_ColorAddSubDiff;
  let x_96 : vec3<f32> = u_xlat1;
  let x_98 : vec4<f32> = u_xlat0;
  let x_100 : vec3<f32> = ((vec3<f32>(x_94.y, x_94.y, x_94.y) * x_96) + vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_108 : vec2<f32> = vs_TEXCOORD1;
  let x_109 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_108);
  u_xlat1 = vec3<f32>(x_109.x, x_109.y, x_109.z);
  let x_113 : vec3<f32> = u_xlat1;
  let x_116 : f32 = x_29.x_EmissionColor.x;
  let x_119 : f32 = x_29.x_EmissionColor.y;
  let x_122 : f32 = x_29.x_EmissionColor.z;
  let x_125 : vec4<f32> = u_xlat0;
  let x_127 : vec3<f32> = ((x_113 * vec3<f32>(x_116, x_119, x_122)) + vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

