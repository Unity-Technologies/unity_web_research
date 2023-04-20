diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
}

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
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(32) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(96) */
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

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(3) var<uniform> x_16 : UnityPerMaterial;

var<private> vs_TEXCOORD5 : f32;

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_44 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(6) var<uniform> x_142 : VGlobals;

var<private> u_xlatb12 : bool;

var<private> u_xlat3 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat13 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_274 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_157 : f32;
  var x_209 : f32;
  var x_221 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  let x_21 : vec4<f32> = x_16.x_BaseMap_ST;
  let x_25 : vec4<f32> = x_16.x_BaseMap_ST;
  vs_TEXCOORD0 = ((x_12 * vec2<f32>(x_21.x, x_21.y)) + vec2<f32>(x_25.z, x_25.w));
  vs_TEXCOORD5 = 0.0f;
  let x_36 : vec4<f32> = in_POSITION0;
  let x_47 : vec4<f32> = x_44.unity_ObjectToWorld[1i];
  let x_49 : vec3<f32> = (vec3<f32>(x_36.y, x_36.y, x_36.y) * vec3<f32>(x_47.x, x_47.y, x_47.z));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_53 : vec4<f32> = x_44.unity_ObjectToWorld[0i];
  let x_55 : vec4<f32> = in_POSITION0;
  let x_58 : vec4<f32> = u_xlat0;
  let x_60 : vec3<f32> = ((vec3<f32>(x_53.x, x_53.y, x_53.z) * vec3<f32>(x_55.x, x_55.x, x_55.x)) + vec3<f32>(x_58.x, x_58.y, x_58.z));
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_60.x, x_60.y, x_60.z, x_61.w);
  let x_65 : vec4<f32> = x_44.unity_ObjectToWorld[2i];
  let x_67 : vec4<f32> = in_POSITION0;
  let x_70 : vec4<f32> = u_xlat0;
  let x_72 : vec3<f32> = ((vec3<f32>(x_65.x, x_65.y, x_65.z) * vec3<f32>(x_67.z, x_67.z, x_67.z)) + vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_72.x, x_72.y, x_72.z, x_73.w);
  let x_75 : vec4<f32> = u_xlat0;
  let x_79 : vec4<f32> = x_44.unity_ObjectToWorld[3i];
  let x_81 : vec3<f32> = (vec3<f32>(x_75.x, x_75.y, x_75.z) + vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_86 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_86.x, x_86.y, x_86.z);
  let x_91 : vec3<f32> = in_NORMAL0;
  let x_93 : vec4<f32> = x_44.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_91, vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_98 : vec3<f32> = in_NORMAL0;
  let x_100 : vec4<f32> = x_44.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_98, vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_105 : vec3<f32> = in_NORMAL0;
  let x_107 : vec4<f32> = x_44.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_105, vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_112 : vec4<f32> = u_xlat1;
  let x_114 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(vec3<f32>(x_112.x, x_112.y, x_112.z), vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_117 : f32 = u_xlat12;
  u_xlat12 = max(x_117, 1.17549435e-38f);
  let x_120 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_120);
  let x_122 : f32 = u_xlat12;
  let x_124 : vec4<f32> = u_xlat1;
  let x_126 : vec3<f32> = (vec3<f32>(x_122, x_122, x_122) * vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_127 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
  let x_131 : vec4<f32> = u_xlat1;
  let x_132 : vec3<f32> = vec3<f32>(x_131.x, x_131.y, x_131.z);
  let x_133 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_132.x, x_132.y, x_132.z, x_133.w);
  let x_137 : vec4<f32> = u_xlat0;
  let x_145 : vec3<f32> = x_142.x_WorldSpaceCameraPos;
  u_xlat2 = (-(vec3<f32>(x_137.x, x_137.y, x_137.z)) + x_145);
  let x_153 : f32 = x_142.unity_OrthoParams.w;
  u_xlatb12 = (x_153 == 0.0f);
  let x_155 : bool = u_xlatb12;
  if (x_155) {
    let x_161 : f32 = u_xlat2.x;
    x_157 = x_161;
  } else {
    let x_164 : f32 = x_142.unity_MatrixV[0i].z;
    x_157 = x_164;
  }
  let x_165 : f32 = x_157;
  vs_TEXCOORD2.w = x_165;
  let x_170 : vec4<f32> = in_TANGENT0;
  let x_173 : vec4<f32> = x_44.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_170.y, x_170.y, x_170.y) * vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_177 : vec4<f32> = x_44.unity_ObjectToWorld[0i];
  let x_179 : vec4<f32> = in_TANGENT0;
  let x_182 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_177.x, x_177.y, x_177.z) * vec3<f32>(x_179.x, x_179.x, x_179.x)) + x_182);
  let x_185 : vec4<f32> = x_44.unity_ObjectToWorld[2i];
  let x_187 : vec4<f32> = in_TANGENT0;
  let x_190 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187.z, x_187.z, x_187.z)) + x_190);
  let x_193 : vec3<f32> = u_xlat3;
  let x_194 : vec3<f32> = u_xlat3;
  u_xlat13 = dot(x_193, x_194);
  let x_196 : f32 = u_xlat13;
  u_xlat13 = max(x_196, 1.17549435e-38f);
  let x_198 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_198);
  let x_200 : f32 = u_xlat13;
  let x_202 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_200, x_200, x_200) * x_202);
  let x_205 : vec3<f32> = u_xlat3;
  let x_206 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_208 : bool = u_xlatb12;
  if (x_208) {
    let x_213 : f32 = u_xlat2.y;
    x_209 = x_213;
  } else {
    let x_216 : f32 = x_142.unity_MatrixV[1i].z;
    x_209 = x_216;
  }
  let x_217 : f32 = x_209;
  vs_TEXCOORD3.w = x_217;
  let x_220 : bool = u_xlatb12;
  if (x_220) {
    let x_225 : f32 = u_xlat2.z;
    x_221 = x_225;
  } else {
    let x_228 : f32 = x_142.unity_MatrixV[2i].z;
    x_221 = x_228;
  }
  let x_229 : f32 = x_221;
  vs_TEXCOORD4.w = x_229;
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = u_xlat3;
  u_xlat2 = (vec3<f32>(x_231.z, x_231.x, x_231.y) * vec3<f32>(x_233.y, x_233.z, x_233.x));
  let x_236 : vec4<f32> = u_xlat1;
  let x_238 : vec3<f32> = u_xlat3;
  let x_241 : vec3<f32> = u_xlat2;
  let x_243 : vec3<f32> = ((vec3<f32>(x_236.y, x_236.z, x_236.x) * vec3<f32>(x_238.z, x_238.x, x_238.y)) + -(x_241));
  let x_244 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_247 : f32 = x_44.unity_WorldTransformParams.w;
  u_xlatb12 = (x_247 >= 0.0f);
  let x_249 : bool = u_xlatb12;
  u_xlat12 = select(-1.0f, 1.0f, x_249);
  let x_253 : f32 = u_xlat12;
  let x_256 : f32 = in_TANGENT0.w;
  u_xlat12 = (x_253 * x_256);
  let x_258 : f32 = u_xlat12;
  let x_260 : vec4<f32> = u_xlat1;
  let x_262 : vec3<f32> = (vec3<f32>(x_258, x_258, x_258) * vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_265 : vec4<f32> = u_xlat0;
  let x_276 : vec4<f32> = x_274.x_MainLightWorldToShadow[0i][1i];
  let x_278 : vec3<f32> = (vec3<f32>(x_265.y, x_265.y, x_265.y) * vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_282 : vec4<f32> = x_274.x_MainLightWorldToShadow[0i][0i];
  let x_284 : vec4<f32> = u_xlat0;
  let x_287 : vec4<f32> = u_xlat1;
  let x_289 : vec3<f32> = ((vec3<f32>(x_282.x, x_282.y, x_282.z) * vec3<f32>(x_284.x, x_284.x, x_284.x)) + vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_293 : vec4<f32> = x_274.x_MainLightWorldToShadow[0i][2i];
  let x_295 : vec4<f32> = u_xlat0;
  let x_298 : vec4<f32> = u_xlat1;
  let x_300 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_295.z, x_295.z, x_295.z)) + vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_304 : vec4<f32> = u_xlat1;
  let x_307 : vec4<f32> = x_274.x_MainLightWorldToShadow[0i][3i];
  let x_309 : vec3<f32> = (vec3<f32>(x_304.x, x_304.y, x_304.z) + vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  vs_TEXCOORD6.w = 0.0f;
  vs_TEXCOORD7 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_315 : vec4<f32> = u_xlat0;
  let x_318 : vec4<f32> = x_142.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_315.y, x_315.y, x_315.y, x_315.y) * x_318);
  let x_321 : vec4<f32> = x_142.unity_MatrixVP[0i];
  let x_322 : vec4<f32> = u_xlat0;
  let x_325 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_321 * vec4<f32>(x_322.x, x_322.x, x_322.x, x_322.x)) + x_325);
  let x_328 : vec4<f32> = x_142.unity_MatrixVP[2i];
  let x_329 : vec4<f32> = u_xlat0;
  let x_332 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_328 * vec4<f32>(x_329.z, x_329.z, x_329.z, x_329.z)) + x_332);
  let x_338 : vec4<f32> = u_xlat0;
  let x_340 : vec4<f32> = x_142.unity_MatrixVP[3i];
  gl_Position = (x_338 + x_340);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD6_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(3) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD6, gl_Position);
}


