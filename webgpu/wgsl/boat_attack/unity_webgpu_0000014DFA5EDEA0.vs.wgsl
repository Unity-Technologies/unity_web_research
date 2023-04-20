diagnostic(off, derivative_uniformity);

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

struct VGlobals {
  /* @offset(0) */
  unity_MatrixVP : mat4x4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_2,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_3,
}

var<private> u_xlat0 : vec3<f32>;

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_21 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_59 : VGlobals;

var<private> vs_INTERP2 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_100 : LightShadows;

var<private> vs_INTERP7 : vec3<f32>;

var<private> vs_INTERP3 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat6 : f32;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP5 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat0 = (vec3<f32>(x_12.y, x_12.y, x_12.y) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_31 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_33 : vec3<f32> = in_POSITION0;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_31.x, x_31.y, x_31.z) * vec3<f32>(x_33.x, x_33.x, x_33.x)) + x_36);
  let x_40 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_42 : vec3<f32> = in_POSITION0;
  let x_45 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_40.x, x_40.y, x_40.z) * vec3<f32>(x_42.z, x_42.z, x_42.z)) + x_45);
  let x_47 : vec3<f32> = u_xlat0;
  let x_50 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  u_xlat0 = (x_47 + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_55 : vec3<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_59.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_55.y, x_55.y, x_55.y, x_55.y) * x_61);
  let x_64 : vec4<f32> = x_59.unity_MatrixVP[0i];
  let x_65 : vec3<f32> = u_xlat0;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.x, x_65.x, x_65.x, x_65.x)) + x_68);
  let x_71 : vec4<f32> = x_59.unity_MatrixVP[2i];
  let x_72 : vec3<f32> = u_xlat0;
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_71 * vec4<f32>(x_72.z, x_72.z, x_72.z, x_72.z)) + x_75);
  let x_82 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = x_59.unity_MatrixVP[3i];
  gl_Position = (x_82 + x_84);
  vs_INTERP2 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_91 : vec3<f32> = u_xlat0;
  let x_102 : vec4<f32> = x_100.x_MainLightWorldToShadow[0i][1i];
  let x_104 : vec3<f32> = (vec3<f32>(x_91.y, x_91.y, x_91.y) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_108 : vec4<f32> = x_100.x_MainLightWorldToShadow[0i][0i];
  let x_110 : vec3<f32> = u_xlat0;
  let x_113 : vec4<f32> = u_xlat1;
  let x_115 : vec3<f32> = ((vec3<f32>(x_108.x, x_108.y, x_108.z) * vec3<f32>(x_110.x, x_110.x, x_110.x)) + vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_116 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
  let x_119 : vec4<f32> = x_100.x_MainLightWorldToShadow[0i][2i];
  let x_121 : vec3<f32> = u_xlat0;
  let x_124 : vec4<f32> = u_xlat1;
  let x_126 : vec3<f32> = ((vec3<f32>(x_119.x, x_119.y, x_119.z) * vec3<f32>(x_121.z, x_121.z, x_121.z)) + vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_127 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
  let x_131 : vec3<f32> = u_xlat0;
  vs_INTERP7 = x_131;
  let x_133 : vec4<f32> = u_xlat1;
  let x_136 : vec4<f32> = x_100.x_MainLightWorldToShadow[0i][3i];
  let x_138 : vec3<f32> = (vec3<f32>(x_133.x, x_133.y, x_133.z) + vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_139 : vec4<f32> = vs_INTERP3;
  vs_INTERP3 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  vs_INTERP3.w = 0.0f;
  let x_146 : vec4<f32> = in_TANGENT0;
  let x_149 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat0 = (vec3<f32>(x_146.y, x_146.y, x_146.y) * vec3<f32>(x_149.x, x_149.y, x_149.z));
  let x_153 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_155 : vec4<f32> = in_TANGENT0;
  let x_158 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155.x, x_155.x, x_155.x)) + x_158);
  let x_161 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_163 : vec4<f32> = in_TANGENT0;
  let x_166 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_161.x, x_161.y, x_161.z) * vec3<f32>(x_163.z, x_163.z, x_163.z)) + x_166);
  let x_170 : vec3<f32> = u_xlat0;
  let x_171 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(x_170, x_171);
  let x_173 : f32 = u_xlat6;
  u_xlat6 = max(x_173, 1.17549435e-38f);
  let x_176 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_176);
  let x_179 : f32 = u_xlat6;
  let x_181 : vec3<f32> = u_xlat0;
  let x_182 : vec3<f32> = (vec3<f32>(x_179, x_179, x_179) * x_181);
  let x_183 : vec4<f32> = vs_INTERP4;
  vs_INTERP4 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_187 : f32 = in_TANGENT0.w;
  vs_INTERP4.w = x_187;
  let x_191 : vec4<f32> = in_TEXCOORD0;
  vs_INTERP5 = x_191;
  vs_INTERP6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_195 : vec3<f32> = in_NORMAL0;
  let x_197 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_195, vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_202 : vec3<f32> = in_NORMAL0;
  let x_204 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_202, vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_208 : vec3<f32> = in_NORMAL0;
  let x_210 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_208, vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_214 : vec3<f32> = u_xlat0;
  let x_215 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(x_214, x_215);
  let x_217 : f32 = u_xlat6;
  u_xlat6 = max(x_217, 1.17549435e-38f);
  let x_219 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_219);
  let x_222 : f32 = u_xlat6;
  let x_224 : vec3<f32> = u_xlat0;
  vs_INTERP8 = (vec3<f32>(x_222, x_222, x_222) * x_224);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(3)
  vs_INTERP7_1 : vec3<f32>,
  @location(0)
  vs_INTERP3_1 : vec4<f32>,
  @location(1)
  vs_INTERP4_1 : vec4<f32>,
  @location(2)
  vs_INTERP5_1 : vec4<f32>,
  @location(4)
  vs_INTERP8_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(2) in_TANGENT0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_INTERP7, vs_INTERP3, vs_INTERP4, vs_INTERP5, vs_INTERP8);
}


