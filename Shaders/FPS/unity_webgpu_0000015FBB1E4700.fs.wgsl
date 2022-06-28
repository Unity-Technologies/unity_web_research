struct PGlobals {
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_50 : PGlobals;

@group(0) @binding(3) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_GrainTex : sampler;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlatb0 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_39 : vec2<f32> = vs_TEXCOORD1;
  let x_40 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_39);
  u_xlat1 = x_40;
  let x_41 : vec3<f32> = u_xlat0;
  let x_43 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_41.x, x_41.x, x_41.x) * vec3<f32>(x_43.x, x_43.y, x_43.z));
  let x_47 : vec2<f32> = vs_TEXCOORD1;
  let x_55 : vec4<f32> = x_50.x_Grain_Params2;
  let x_59 : vec4<f32> = x_50.x_Grain_Params2;
  let x_61 : vec2<f32> = ((x_47 * vec2<f32>(x_55.x, x_55.y)) + vec2<f32>(x_59.z, x_59.w));
  let x_62 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_61.x, x_61.y, x_62.z);
  let x_69 : vec3<f32> = u_xlat2;
  let x_71 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_69.x, x_69.y));
  u_xlat2 = vec3<f32>(x_71.x, x_71.y, x_71.z);
  let x_74 : vec3<f32> = u_xlat0;
  u_xlat3 = x_74;
  let x_75 : vec3<f32> = u_xlat3;
  u_xlat3 = clamp(x_75, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_82 : vec3<f32> = u_xlat3;
  u_xlat12 = dot(x_82, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_88 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_88);
  let x_93 : f32 = x_50.x_Grain_Params1.x;
  let x_94 : f32 = u_xlat12;
  u_xlat12 = ((x_93 * -(x_94)) + 1.0f);
  let x_98 : vec3<f32> = u_xlat0;
  let x_99 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_98 * x_99);
  let x_101 : vec3<f32> = u_xlat2;
  let x_104 : f32 = x_50.x_Grain_Params1.y;
  let x_106 : f32 = x_50.x_Grain_Params1.y;
  let x_108 : f32 = x_50.x_Grain_Params1.y;
  u_xlat2 = (x_101 * vec3<f32>(x_104, x_106, x_108));
  let x_111 : vec3<f32> = u_xlat2;
  let x_112 : f32 = u_xlat12;
  let x_115 : vec3<f32> = u_xlat0;
  let x_116 : vec3<f32> = ((x_111 * vec3<f32>(x_112, x_112, x_112)) + x_115);
  let x_117 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_125 : f32 = x_50.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_125);
  let x_127 : bool = u_xlatb0;
  if (x_127) {
    let x_130 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_130.x, x_130.y, x_130.z);
    let x_132 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_132, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_136 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_136, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_142 : vec4<f32> = u_xlat1;
  SV_Target0 = x_142;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

