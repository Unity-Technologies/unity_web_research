type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
}

var<private> vs_INTERP1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_29 : UnityPerDraw;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(0) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(1) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_95 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlatb0 : vec2<bool>;
  var u_xlat0 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : f32 = vs_INTERP1.w;
  u_xlatb0.x = (0.0f < x_19);
  let x_34 : f32 = x_29.unity_WorldTransformParams.w;
  u_xlatb0.y = (x_34 >= 0.0f);
  let x_42 : bool = u_xlatb0.x;
  u_xlat0.x = select(-1.0f, 1.0f, x_42);
  let x_49 : bool = u_xlatb0.y;
  u_xlat0.y = select(-1.0f, 1.0f, x_49);
  let x_53 : f32 = u_xlat0.y;
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = (x_53 * x_55);
  let x_61 : vec3<f32> = vs_INTERP0;
  let x_63 : vec4<f32> = vs_INTERP1;
  u_xlat2 = (vec3<f32>(x_61.z, x_61.x, x_61.y) * vec3<f32>(x_63.y, x_63.z, x_63.x));
  let x_66 : vec3<f32> = vs_INTERP0;
  let x_68 : vec4<f32> = vs_INTERP1;
  let x_71 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_66.y, x_66.z, x_66.x) * vec3<f32>(x_68.z, x_68.x, x_68.y)) + -(x_71));
  let x_74 : vec3<f32> = u_xlat2;
  let x_75 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_74 * vec3<f32>(x_75.x, x_75.x, x_75.x));
  let x_91 : vec4<f32> = vs_INTERP2;
  let x_98 : f32 = x_95.x_GlobalMipBias.x;
  let x_99 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_91.x, x_91.y), x_98);
  u_xlat1 = vec3<f32>(x_99.x, x_99.y, x_99.w);
  let x_102 : f32 = u_xlat1.x;
  let x_104 : f32 = u_xlat1.z;
  u_xlat1.x = (x_102 * x_104);
  let x_107 : vec3<f32> = u_xlat1;
  let x_113 : vec2<f32> = ((vec2<f32>(x_107.x, x_107.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_114 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_113.x, x_113.y, x_114.z);
  let x_116 : vec3<f32> = u_xlat0;
  let x_117 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_116 * vec3<f32>(x_117.y, x_117.y, x_117.y));
  let x_120 : vec3<f32> = u_xlat1;
  let x_122 : vec4<f32> = vs_INTERP1;
  let x_125 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_120.x, x_120.x, x_120.x) * vec3<f32>(x_122.x, x_122.y, x_122.z)) + x_125);
  let x_128 : vec3<f32> = u_xlat1;
  let x_130 : vec3<f32> = u_xlat1;
  u_xlat6 = dot(vec2<f32>(x_128.x, x_128.y), vec2<f32>(x_130.x, x_130.y));
  let x_133 : f32 = u_xlat6;
  u_xlat6 = min(x_133, 1.0f);
  let x_135 : f32 = u_xlat6;
  u_xlat6 = (-(x_135) + 1.0f);
  let x_138 : f32 = u_xlat6;
  u_xlat6 = sqrt(x_138);
  let x_140 : f32 = u_xlat6;
  u_xlat6 = max(x_140, 1.00000002e-16f);
  let x_143 : f32 = u_xlat6;
  let x_145 : vec3<f32> = vs_INTERP0;
  let x_147 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_143, x_143, x_143) * x_145) + x_147);
  let x_149 : vec3<f32> = u_xlat0;
  let x_150 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(x_149, x_150);
  let x_152 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_152);
  let x_156 : f32 = u_xlat6;
  let x_158 : vec3<f32> = u_xlat0;
  let x_159 : vec3<f32> = (vec3<f32>(x_156, x_156, x_156) * x_158);
  let x_160 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_INTERP1_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP2 = vs_INTERP2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

