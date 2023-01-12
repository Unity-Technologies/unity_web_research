struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
  x_Color : vec4<f32>,
  x_EmissionColor : vec3<f32>,
  x_DstBlend : i32,
}

var<private> vs_TEXCOORD0 : f32;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_140 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : f32 = vs_TEXCOORD0;
  let x_23 : f32 = x_17.x_ProjectionParams.y;
  u_xlat0 = (x_11 / x_23);
  let x_25 : f32 = u_xlat0;
  u_xlat0 = (-(x_25) + 1.0f);
  let x_29 : f32 = u_xlat0;
  let x_32 : f32 = x_17.x_ProjectionParams.z;
  u_xlat0 = (x_29 * x_32);
  let x_34 : f32 = u_xlat0;
  u_xlat0 = max(x_34, 0.0f);
  let x_37 : f32 = u_xlat0;
  let x_41 : f32 = x_17.unity_FogParams.x;
  u_xlat0 = (x_37 * x_41);
  let x_43 : f32 = u_xlat0;
  let x_44 : f32 = u_xlat0;
  u_xlat0 = (x_43 * -(x_44));
  let x_47 : f32 = u_xlat0;
  u_xlat0 = exp2(x_47);
  let x_64 : vec2<f32> = vs_TEXCOORD1;
  let x_65 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_64);
  u_xlat1 = x_65;
  let x_66 : vec4<f32> = u_xlat1;
  let x_70 : vec4<f32> = x_17.x_Color;
  u_xlat1 = (x_66 * x_70);
  let x_72 : vec4<f32> = u_xlat1;
  let x_75 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (x_72 * x_75);
  let x_84 : vec2<f32> = vs_TEXCOORD1;
  let x_85 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_84);
  u_xlat2 = vec3<f32>(x_85.x, x_85.y, x_85.z);
  let x_87 : vec3<f32> = u_xlat2;
  let x_90 : f32 = x_17.x_EmissionColor.x;
  let x_92 : f32 = x_17.x_EmissionColor.y;
  let x_94 : f32 = x_17.x_EmissionColor.z;
  let x_97 : vec4<f32> = u_xlat1;
  u_xlat2 = ((x_87 * vec3<f32>(x_90, x_92, x_94)) + vec3<f32>(x_97.x, x_97.y, x_97.z));
  let x_104 : f32 = u_xlat1.w;
  SV_Target0.w = x_104;
  let x_107 : vec3<f32> = u_xlat2;
  let x_110 : vec4<f32> = x_17.unity_FogColor;
  let x_113 : vec3<f32> = (x_107 + -(vec3<f32>(x_110.x, x_110.y, x_110.z)));
  let x_114 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_116 : vec3<f32> = u_xlat2;
  let x_117 : f32 = u_xlat0;
  u_xlat2 = (x_116 * vec3<f32>(x_117, x_117, x_117));
  let x_120 : f32 = u_xlat0;
  let x_122 : vec4<f32> = u_xlat1;
  let x_126 : vec4<f32> = x_17.unity_FogColor;
  let x_128 : vec3<f32> = ((vec3<f32>(x_120, x_120, x_120) * vec3<f32>(x_122.x, x_122.y, x_122.z)) + vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_129 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_137 : i32 = x_17.x_DstBlend;
  u_xlatb0 = (x_137 == 1i);
  let x_139 : bool = u_xlatb0;
  if (x_139) {
    let x_143 : vec3<f32> = u_xlat2;
    x_140 = x_143;
  } else {
    let x_145 : vec4<f32> = u_xlat1;
    x_140 = vec3<f32>(x_145.x, x_145.y, x_145.z);
  }
  let x_147 : vec3<f32> = x_140;
  let x_148 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : f32, @location(2) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

