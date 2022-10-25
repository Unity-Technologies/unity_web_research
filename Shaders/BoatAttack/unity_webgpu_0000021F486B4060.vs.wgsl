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

struct VGlobals {
  unity_MatrixVP : mat4x4<f32>,
}

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_21 : UnityPerDraw;

@group(1) @binding(5) var<uniform> x_69 : VGlobals;

var<private> vs_INTERP0 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP3 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_INTERP4 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_INTERP5 : vec2<f32>;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> vs_INTERP6 : vec2<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> vs_INTERP8 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_232 : MainLightShadows;

var<private> vs_INTERP9 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_29 : vec3<f32> = (vec3<f32>(x_13.y, x_13.y, x_13.y) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_29.y, x_29.z, x_30.w);
  let x_33 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_35 : vec3<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  let x_40 : vec3<f32> = ((vec3<f32>(x_33.x, x_33.y, x_33.z) * vec3<f32>(x_35.x, x_35.x, x_35.x)) + vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_45 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_47 : vec3<f32> = in_POSITION0;
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.z) * vec3<f32>(x_47.z, x_47.z, x_47.z)) + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_55 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_61 : vec3<f32> = (vec3<f32>(x_55.x, x_55.y, x_55.z) + vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_61.z, x_62.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_71 : vec4<f32> = x_69.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_65.y, x_65.y, x_65.y, x_65.y) * x_71);
  let x_74 : vec4<f32> = x_69.unity_MatrixVP[0i];
  let x_75 : vec4<f32> = u_xlat0;
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_74 * vec4<f32>(x_75.x, x_75.x, x_75.x, x_75.x)) + x_78);
  let x_81 : vec4<f32> = x_69.unity_MatrixVP[2i];
  let x_82 : vec4<f32> = u_xlat0;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_81 * vec4<f32>(x_82.z, x_82.z, x_82.z, x_82.z)) + x_85);
  let x_92 : vec4<f32> = u_xlat1;
  let x_94 : vec4<f32> = x_69.unity_MatrixVP[3i];
  gl_Position = (x_92 + x_94);
  let x_100 : vec4<f32> = u_xlat0;
  vs_INTERP0 = vec3<f32>(x_100.x, x_100.y, x_100.z);
  let x_103 : vec3<f32> = in_NORMAL0;
  let x_105 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_103, vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_111 : vec3<f32> = in_NORMAL0;
  let x_113 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_111, vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_117 : vec3<f32> = in_NORMAL0;
  let x_119 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_117, vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_124 : vec4<f32> = u_xlat1;
  let x_126 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec3<f32>(x_124.x, x_124.y, x_124.z), vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_129 : f32 = u_xlat6;
  u_xlat6 = max(x_129, 1.17549435e-37f);
  let x_132 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_132);
  let x_135 : f32 = u_xlat6;
  let x_137 : vec4<f32> = u_xlat1;
  vs_INTERP1 = (vec3<f32>(x_135, x_135, x_135) * vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_142 : vec4<f32> = in_TANGENT0;
  let x_145 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_147 : vec3<f32> = (vec3<f32>(x_142.y, x_142.y, x_142.y) * vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_153 : vec4<f32> = in_TANGENT0;
  let x_156 : vec4<f32> = u_xlat1;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153.x, x_153.x, x_153.x)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_162 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_164 : vec4<f32> = in_TANGENT0;
  let x_167 : vec4<f32> = u_xlat1;
  let x_169 : vec3<f32> = ((vec3<f32>(x_162.x, x_162.y, x_162.z) * vec3<f32>(x_164.z, x_164.z, x_164.z)) + vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_170 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_172 : vec4<f32> = u_xlat1;
  let x_174 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec3<f32>(x_172.x, x_172.y, x_172.z), vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : f32 = u_xlat6;
  u_xlat6 = max(x_177, 1.17549435e-37f);
  let x_179 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_179);
  let x_182 : f32 = u_xlat6;
  let x_184 : vec4<f32> = u_xlat1;
  let x_186 : vec3<f32> = (vec3<f32>(x_182, x_182, x_182) * vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : vec4<f32> = vs_INTERP2;
  vs_INTERP2 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_192 : f32 = in_TANGENT0.w;
  vs_INTERP2.w = x_192;
  let x_197 : vec4<f32> = in_TEXCOORD0;
  vs_INTERP3 = x_197;
  let x_200 : vec4<f32> = in_COLOR0;
  vs_INTERP4 = x_200;
  let x_205 : vec4<f32> = in_TEXCOORD1;
  let x_209 : vec4<f32> = x_21.unity_LightmapST;
  let x_213 : vec4<f32> = x_21.unity_LightmapST;
  vs_INTERP5 = ((vec2<f32>(x_205.x, x_205.y) * vec2<f32>(x_209.x, x_209.y)) + vec2<f32>(x_213.z, x_213.w));
  vs_INTERP6 = vec2<f32>(0.0f, 0.0f);
  vs_INTERP7 = vec3<f32>(0.0f, 0.0f, 0.0f);
  vs_INTERP8 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_226 : vec4<f32> = u_xlat0;
  let x_234 : vec4<f32> = x_232.x_MainLightWorldToShadow[0i][1i];
  let x_236 : vec3<f32> = (vec3<f32>(x_226.y, x_226.y, x_226.y) * vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_240 : vec4<f32> = x_232.x_MainLightWorldToShadow[0i][0i];
  let x_242 : vec4<f32> = u_xlat0;
  let x_245 : vec4<f32> = u_xlat1;
  let x_247 : vec3<f32> = ((vec3<f32>(x_240.x, x_240.y, x_240.z) * vec3<f32>(x_242.x, x_242.x, x_242.x)) + vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_247.x, x_247.y, x_248.z, x_247.z);
  let x_251 : vec4<f32> = x_232.x_MainLightWorldToShadow[0i][2i];
  let x_253 : vec4<f32> = u_xlat0;
  let x_256 : vec4<f32> = u_xlat0;
  let x_258 : vec3<f32> = ((vec3<f32>(x_251.x, x_251.y, x_251.z) * vec3<f32>(x_253.z, x_253.z, x_253.z)) + vec3<f32>(x_256.x, x_256.y, x_256.w));
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_262 : vec4<f32> = u_xlat0;
  let x_265 : vec4<f32> = x_232.x_MainLightWorldToShadow[0i][3i];
  let x_267 : vec3<f32> = (vec3<f32>(x_262.x, x_262.y, x_262.z) + vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : vec4<f32> = vs_INTERP9;
  vs_INTERP9 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  vs_INTERP9.w = 0.0f;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_INTERP0_1 : vec3<f32>,
  @location(1)
  vs_INTERP1_1 : vec3<f32>,
  @location(2)
  vs_INTERP2_1 : vec4<f32>,
  @location(3)
  vs_INTERP3_1 : vec4<f32>,
  @location(4)
  vs_INTERP4_1 : vec4<f32>,
  @location(5)
  vs_INTERP5_1 : vec2<f32>,
  @location(6)
  vs_INTERP9_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_TANGENT0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(5) in_COLOR0_param : vec4<f32>, @location(4) in_TEXCOORD1_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  main_1();
  return main_out(gl_Position, vs_INTERP0, vs_INTERP1, vs_INTERP2, vs_INTERP3, vs_INTERP4, vs_INTERP5, vs_INTERP9);
}

