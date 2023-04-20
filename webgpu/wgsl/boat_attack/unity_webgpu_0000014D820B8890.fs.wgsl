diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlatb13 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_288 : LightShadows;

var<private> u_xlatb17 : bool;

var<private> u_xlatb29 : bool;

var<private> u_xlat29 : f32;

var<private> u_xlat41 : f32;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_419 : UnityPerDraw;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu17 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlati17 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_669 : AdditionalLights;

var<private> u_xlat42 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu38 : u32;

fn main_1() {
  var x_91 : f32;
  var x_104 : f32;
  var x_117 : f32;
  var txVec0 : vec3<f32>;
  var x_316 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_806 : f32;
  var x_817 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_45 : vec4<f32> = vs_TEXCOORD0;
  let x_48 : f32 = x_29.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_45.x, x_45.y), x_48);
  u_xlat1 = x_49.x;
  let x_57 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb13 = (x_57 == 0.0f);
  let x_63 : vec3<f32> = vs_TEXCOORD7;
  let x_68 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_69 : vec3<f32> = (-(x_63) + x_68);
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat2;
  let x_75 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(vec3<f32>(x_73.x, x_73.y, x_73.z), vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_78 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_78);
  let x_80 : f32 = u_xlat25;
  let x_82 : vec4<f32> = u_xlat2;
  let x_84 : vec3<f32> = (vec3<f32>(x_80, x_80, x_80) * vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_89 : bool = u_xlatb13;
  if (x_89) {
    let x_95 : f32 = u_xlat2.x;
    x_91 = x_95;
  } else {
    let x_100 : f32 = x_29.unity_MatrixV[0i].z;
    x_91 = x_100;
  }
  let x_101 : f32 = x_91;
  u_xlat3.x = x_101;
  let x_103 : bool = u_xlatb13;
  if (x_103) {
    let x_109 : f32 = u_xlat2.y;
    x_104 = x_109;
  } else {
    let x_113 : f32 = x_29.unity_MatrixV[1i].z;
    x_104 = x_113;
  }
  let x_114 : f32 = x_104;
  u_xlat3.y = x_114;
  let x_116 : bool = u_xlatb13;
  if (x_116) {
    let x_121 : f32 = u_xlat2.z;
    x_117 = x_121;
  } else {
    let x_125 : f32 = x_29.unity_MatrixV[2i].z;
    x_117 = x_125;
  }
  let x_126 : f32 = x_117;
  u_xlat3.z = x_126;
  let x_130 : vec3<f32> = vs_TEXCOORD3;
  let x_131 : vec3<f32> = vs_TEXCOORD3;
  u_xlat13.x = dot(x_130, x_131);
  let x_135 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_135);
  let x_138 : vec3<f32> = u_xlat13;
  let x_140 : vec3<f32> = vs_TEXCOORD3;
  u_xlat13 = (vec3<f32>(x_138.x, x_138.x, x_138.x) * x_140);
  let x_147 : vec4<f32> = vs_TEXCOORD0;
  let x_150 : f32 = x_29.x_GlobalMipBias.x;
  let x_151 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_147.z, x_147.w), x_150);
  u_xlat2 = x_151;
  let x_157 : vec4<f32> = vs_TEXCOORD0;
  let x_160 : f32 = x_29.x_GlobalMipBias.x;
  let x_161 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_157.z, x_157.w), x_160);
  u_xlat4 = vec3<f32>(x_161.x, x_161.y, x_161.z);
  let x_163 : vec4<f32> = u_xlat2;
  let x_167 : vec3<f32> = (vec3<f32>(x_163.x, x_163.y, x_163.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec3<f32> = u_xlat13;
  let x_171 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_170, vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_176 : f32 = u_xlat2.x;
  u_xlat2.x = (x_176 + 0.5f);
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec3<f32> = u_xlat4;
  let x_183 : vec3<f32> = (vec3<f32>(x_180.x, x_180.x, x_180.x) * x_182);
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_188 : f32 = u_xlat2.w;
  u_xlat38 = max(x_188, 0.00009999999747378752f);
  let x_191 : vec4<f32> = u_xlat2;
  let x_193 : f32 = u_xlat38;
  let x_195 : vec3<f32> = (vec3<f32>(x_191.x, x_191.y, x_191.z) / vec3<f32>(x_193, x_193, x_193));
  let x_196 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_198 : f32 = u_xlat1;
  u_xlat38 = ((-(x_198) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_204 : f32 = u_xlat38;
  u_xlat39 = (-(x_204) + 1.0f);
  let x_208 : vec4<f32> = u_xlat0;
  let x_210 : f32 = u_xlat38;
  u_xlat4 = (vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(x_210, x_210, x_210));
  let x_213 : vec4<f32> = u_xlat0;
  let x_217 : vec3<f32> = (vec3<f32>(x_213.x, x_213.y, x_213.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_218 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : f32 = u_xlat1;
  let x_222 : vec4<f32> = u_xlat0;
  let x_227 : vec3<f32> = ((vec3<f32>(x_220, x_220, x_220) * vec3<f32>(x_222.x, x_222.y, x_222.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_231 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_231) + 1.0f);
  let x_234 : f32 = u_xlat1;
  let x_235 : f32 = u_xlat1;
  u_xlat38 = (x_234 * x_235);
  let x_237 : f32 = u_xlat38;
  u_xlat38 = max(x_237, 0.0078125f);
  let x_241 : f32 = u_xlat38;
  let x_242 : f32 = u_xlat38;
  u_xlat40 = (x_241 * x_242);
  let x_246 : f32 = u_xlat0.w;
  let x_247 : f32 = u_xlat39;
  u_xlat36 = (x_246 + x_247);
  let x_249 : f32 = u_xlat36;
  u_xlat36 = clamp(x_249, 0.0f, 1.0f);
  let x_251 : f32 = u_xlat38;
  u_xlat39 = ((x_251 * 4.0f) + 2.0f);
  let x_259 : vec4<f32> = vs_TEXCOORD8;
  let x_260 : vec2<f32> = vec2<f32>(x_259.x, x_259.y);
  let x_263 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_260.x, x_260.y, x_263);
  let x_276 : vec3<f32> = txVec0;
  let x_278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_276.xy, x_276.z);
  u_xlat5.x = x_278;
  let x_291 : f32 = x_288.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_291) + 1.0f);
  let x_296 : f32 = u_xlat5.x;
  let x_298 : f32 = x_288.x_MainLightShadowParams.x;
  let x_301 : f32 = u_xlat17.x;
  u_xlat5.x = ((x_296 * x_298) + x_301);
  let x_306 : f32 = vs_TEXCOORD8.z;
  u_xlatb17 = (0.0f >= x_306);
  let x_310 : f32 = vs_TEXCOORD8.z;
  u_xlatb29 = (x_310 >= 1.0f);
  let x_312 : bool = u_xlatb29;
  let x_313 : bool = u_xlatb17;
  u_xlatb17 = (x_312 | x_313);
  let x_315 : bool = u_xlatb17;
  if (x_315) {
    x_316 = 1.0f;
  } else {
    let x_321 : f32 = u_xlat5.x;
    x_316 = x_321;
  }
  let x_322 : f32 = x_316;
  u_xlat5.x = x_322;
  let x_324 : vec3<f32> = vs_TEXCOORD7;
  let x_326 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat17 = (x_324 + -(x_326));
  let x_329 : vec3<f32> = u_xlat17;
  let x_330 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_329, x_330);
  let x_335 : f32 = u_xlat17.x;
  let x_337 : f32 = x_288.x_MainLightShadowParams.z;
  let x_340 : f32 = x_288.x_MainLightShadowParams.w;
  u_xlat29 = ((x_335 * x_337) + x_340);
  let x_342 : f32 = u_xlat29;
  u_xlat29 = clamp(x_342, 0.0f, 1.0f);
  let x_346 : f32 = u_xlat5.x;
  u_xlat41 = (-(x_346) + 1.0f);
  let x_349 : f32 = u_xlat29;
  let x_350 : f32 = u_xlat41;
  let x_353 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_349 * x_350) + x_353);
  let x_356 : vec3<f32> = u_xlat3;
  let x_358 : vec3<f32> = u_xlat13;
  u_xlat29 = dot(-(x_356), x_358);
  let x_360 : f32 = u_xlat29;
  let x_361 : f32 = u_xlat29;
  u_xlat29 = (x_360 + x_361);
  let x_364 : vec3<f32> = u_xlat13;
  let x_365 : f32 = u_xlat29;
  let x_369 : vec3<f32> = u_xlat3;
  let x_371 : vec3<f32> = ((x_364 * -(vec3<f32>(x_365, x_365, x_365))) + -(x_369));
  let x_372 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec3<f32> = u_xlat13;
  let x_375 : vec3<f32> = u_xlat3;
  u_xlat29 = dot(x_374, x_375);
  let x_377 : f32 = u_xlat29;
  u_xlat29 = clamp(x_377, 0.0f, 1.0f);
  let x_379 : f32 = u_xlat29;
  u_xlat29 = (-(x_379) + 1.0f);
  let x_382 : f32 = u_xlat29;
  let x_383 : f32 = u_xlat29;
  u_xlat29 = (x_382 * x_383);
  let x_385 : f32 = u_xlat29;
  let x_386 : f32 = u_xlat29;
  u_xlat29 = (x_385 * x_386);
  let x_388 : f32 = u_xlat1;
  u_xlat41 = ((-(x_388) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_394 : f32 = u_xlat1;
  let x_395 : f32 = u_xlat41;
  u_xlat1 = (x_394 * x_395);
  let x_397 : f32 = u_xlat1;
  u_xlat1 = (x_397 * 6.0f);
  let x_408 : vec4<f32> = u_xlat6;
  let x_410 : f32 = u_xlat1;
  let x_411 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_408.x, x_408.y, x_408.z), x_410);
  u_xlat6 = x_411;
  let x_413 : f32 = u_xlat6.w;
  u_xlat1 = (x_413 + -1.0f);
  let x_421 : f32 = x_419.unity_SpecCube0_HDR.w;
  let x_422 : f32 = u_xlat1;
  u_xlat1 = ((x_421 * x_422) + 1.0f);
  let x_425 : f32 = u_xlat1;
  u_xlat1 = max(x_425, 0.0f);
  let x_427 : f32 = u_xlat1;
  u_xlat1 = log2(x_427);
  let x_429 : f32 = u_xlat1;
  let x_431 : f32 = x_419.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_429 * x_431);
  let x_433 : f32 = u_xlat1;
  u_xlat1 = exp2(x_433);
  let x_435 : f32 = u_xlat1;
  let x_437 : f32 = x_419.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_435 * x_437);
  let x_439 : vec4<f32> = u_xlat6;
  let x_441 : f32 = u_xlat1;
  let x_443 : vec3<f32> = (vec3<f32>(x_439.x, x_439.y, x_439.z) * vec3<f32>(x_441, x_441, x_441));
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_448 : f32 = u_xlat38;
  let x_450 : f32 = u_xlat38;
  u_xlat7 = ((vec2<f32>(x_448, x_448) * vec2<f32>(x_450, x_450)) + vec2<f32>(-1.0f, 1.0f));
  let x_456 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_456);
  let x_459 : vec4<f32> = u_xlat0;
  let x_462 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_459.x, x_459.y, x_459.z)) + vec3<f32>(x_462, x_462, x_462));
  let x_465 : f32 = u_xlat29;
  let x_467 : vec3<f32> = u_xlat19;
  let x_469 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_465, x_465, x_465) * x_467) + vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : f32 = u_xlat1;
  let x_474 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_472, x_472, x_472) * x_474);
  let x_476 : vec4<f32> = u_xlat6;
  let x_478 : vec3<f32> = u_xlat19;
  let x_479 : vec3<f32> = (vec3<f32>(x_476.x, x_476.y, x_476.z) * x_478);
  let x_480 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_482 : vec4<f32> = u_xlat2;
  let x_484 : vec3<f32> = u_xlat4;
  let x_486 : vec4<f32> = u_xlat6;
  let x_488 : vec3<f32> = ((vec3<f32>(x_482.x, x_482.y, x_482.z) * x_484) + vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_492 : f32 = u_xlat5.x;
  let x_494 : f32 = x_419.unity_LightData.z;
  u_xlat36 = (x_492 * x_494);
  let x_496 : vec3<f32> = u_xlat13;
  let x_499 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_496, vec3<f32>(x_499.x, x_499.y, x_499.z));
  let x_502 : f32 = u_xlat1;
  u_xlat1 = clamp(x_502, 0.0f, 1.0f);
  let x_504 : f32 = u_xlat36;
  let x_505 : f32 = u_xlat1;
  u_xlat36 = (x_504 * x_505);
  let x_507 : f32 = u_xlat36;
  let x_510 : vec4<f32> = x_29.x_MainLightColor;
  let x_512 : vec3<f32> = (vec3<f32>(x_507, x_507, x_507) * vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_512.x, x_513.y, x_512.y, x_512.z);
  let x_515 : vec3<f32> = u_xlat3;
  let x_517 : vec4<f32> = x_29.x_MainLightPosition;
  let x_519 : vec3<f32> = (x_515 + vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : vec4<f32> = u_xlat6;
  let x_524 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_522.x, x_522.y, x_522.z), vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_527 : f32 = u_xlat36;
  u_xlat36 = max(x_527, 1.17549435e-38f);
  let x_530 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_530);
  let x_532 : f32 = u_xlat36;
  let x_534 : vec4<f32> = u_xlat6;
  let x_536 : vec3<f32> = (vec3<f32>(x_532, x_532, x_532) * vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_539 : vec3<f32> = u_xlat13;
  let x_540 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_539, vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : f32 = u_xlat36;
  u_xlat36 = clamp(x_543, 0.0f, 1.0f);
  let x_546 : vec4<f32> = x_29.x_MainLightPosition;
  let x_548 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_546.x, x_546.y, x_546.z), vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_551 : f32 = u_xlat1;
  u_xlat1 = clamp(x_551, 0.0f, 1.0f);
  let x_553 : f32 = u_xlat36;
  let x_554 : f32 = u_xlat36;
  u_xlat36 = (x_553 * x_554);
  let x_556 : f32 = u_xlat36;
  let x_558 : f32 = u_xlat7.x;
  u_xlat36 = ((x_556 * x_558) + 1.00001001358032226562f);
  let x_562 : f32 = u_xlat1;
  let x_563 : f32 = u_xlat1;
  u_xlat1 = (x_562 * x_563);
  let x_565 : f32 = u_xlat36;
  let x_566 : f32 = u_xlat36;
  u_xlat36 = (x_565 * x_566);
  let x_568 : f32 = u_xlat1;
  u_xlat1 = max(x_568, 0.10000000149011611938f);
  let x_571 : f32 = u_xlat36;
  let x_572 : f32 = u_xlat1;
  u_xlat36 = (x_571 * x_572);
  let x_574 : f32 = u_xlat39;
  let x_575 : f32 = u_xlat36;
  u_xlat36 = (x_574 * x_575);
  let x_577 : f32 = u_xlat40;
  let x_578 : f32 = u_xlat36;
  u_xlat36 = (x_577 / x_578);
  let x_580 : vec4<f32> = u_xlat0;
  let x_582 : f32 = u_xlat36;
  let x_585 : vec3<f32> = u_xlat4;
  let x_586 : vec3<f32> = ((vec3<f32>(x_580.x, x_580.y, x_580.z) * vec3<f32>(x_582, x_582, x_582)) + x_585);
  let x_587 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
  let x_591 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_593 : f32 = x_419.unity_LightData.y;
  u_xlat36 = min(x_591, x_593);
  let x_597 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_597));
  let x_601 : f32 = u_xlat17.x;
  let x_604 : f32 = x_288.x_AdditionalShadowFadeParams.x;
  let x_607 : f32 = x_288.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_601 * x_604) + x_607);
  let x_609 : f32 = u_xlat1;
  u_xlat1 = clamp(x_609, 0.0f, 1.0f);
  u_xlat19.x = 0.0f;
  u_xlat19.y = 0.0f;
  u_xlat19.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_621 : u32 = u_xlatu_loop_1;
    let x_622 : u32 = u_xlatu36;
    if ((x_621 < x_622)) {
    } else {
      break;
    }
    let x_625 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_625 >> 2u);
    let x_629 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_629 & 3u));
    let x_632 : u32 = u_xlatu17;
    let x_635 : vec4<f32> = x_419.unity_LightIndices[bitcast<i32>(x_632)];
    let x_645 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_650 : vec4<u32> = indexable[x_645];
    u_xlat17.x = dot(x_635, bitcast<vec4<f32>>(x_650));
    let x_656 : f32 = u_xlat17.x;
    u_xlati17 = i32(x_656);
    let x_659 : vec3<f32> = vs_TEXCOORD7;
    let x_670 : i32 = u_xlati17;
    let x_672 : vec4<f32> = x_669.x_AdditionalLightsPosition[x_670];
    let x_675 : i32 = u_xlati17;
    let x_677 : vec4<f32> = x_669.x_AdditionalLightsPosition[x_675];
    u_xlat8 = ((-(x_659) * vec3<f32>(x_672.w, x_672.w, x_672.w)) + vec3<f32>(x_677.x, x_677.y, x_677.z));
    let x_681 : vec3<f32> = u_xlat8;
    let x_682 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_681, x_682);
    let x_684 : f32 = u_xlat42;
    u_xlat42 = max(x_684, 0.00006103515625f);
    let x_688 : f32 = u_xlat42;
    u_xlat44 = inverseSqrt(x_688);
    let x_691 : f32 = u_xlat44;
    let x_693 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_691, x_691, x_691) * x_693);
    let x_696 : f32 = u_xlat42;
    u_xlat45 = (1.0f / x_696);
    let x_698 : f32 = u_xlat42;
    let x_699 : i32 = u_xlati17;
    let x_701 : f32 = x_669.x_AdditionalLightsAttenuation[x_699].x;
    u_xlat42 = (x_698 * x_701);
    let x_703 : f32 = u_xlat42;
    let x_705 : f32 = u_xlat42;
    u_xlat42 = ((-(x_703) * x_705) + 1.0f);
    let x_708 : f32 = u_xlat42;
    u_xlat42 = max(x_708, 0.0f);
    let x_710 : f32 = u_xlat42;
    let x_711 : f32 = u_xlat42;
    u_xlat42 = (x_710 * x_711);
    let x_713 : f32 = u_xlat42;
    let x_714 : f32 = u_xlat45;
    u_xlat42 = (x_713 * x_714);
    let x_716 : i32 = u_xlati17;
    let x_718 : vec4<f32> = x_669.x_AdditionalLightsSpotDir[x_716];
    let x_720 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_718.x, x_718.y, x_718.z), x_720);
    let x_722 : f32 = u_xlat45;
    let x_723 : i32 = u_xlati17;
    let x_725 : f32 = x_669.x_AdditionalLightsAttenuation[x_723].z;
    let x_727 : i32 = u_xlati17;
    let x_729 : f32 = x_669.x_AdditionalLightsAttenuation[x_727].w;
    u_xlat45 = ((x_722 * x_725) + x_729);
    let x_731 : f32 = u_xlat45;
    u_xlat45 = clamp(x_731, 0.0f, 1.0f);
    let x_733 : f32 = u_xlat45;
    let x_734 : f32 = u_xlat45;
    u_xlat45 = (x_733 * x_734);
    let x_736 : f32 = u_xlat42;
    let x_737 : f32 = u_xlat45;
    u_xlat42 = (x_736 * x_737);
    let x_741 : i32 = u_xlati17;
    let x_743 : f32 = x_288.x_AdditionalShadowParams[x_741].w;
    u_xlati45 = i32(x_743);
    let x_748 : i32 = u_xlati45;
    u_xlatb10.x = (x_748 >= 0i);
    let x_752 : bool = u_xlatb10.x;
    if (x_752) {
      let x_756 : i32 = u_xlati17;
      let x_758 : f32 = x_288.x_AdditionalShadowParams[x_756].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_758, x_758, x_758, x_758))));
      let x_765 : bool = u_xlatb10.x;
      if (x_765) {
        let x_768 : vec3<f32> = u_xlat9;
        let x_771 : vec3<f32> = u_xlat9;
        let x_774 : vec4<bool> = (abs(vec4<f32>(x_768.z, x_768.z, x_768.y, x_768.z)) >= abs(vec4<f32>(x_771.x, x_771.y, x_771.x, x_771.x)));
        u_xlatb10 = vec3<bool>(x_774.x, x_774.y, x_774.z);
        let x_777 : bool = u_xlatb10.y;
        let x_779 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_777 & x_779);
        let x_783 : vec3<f32> = u_xlat9;
        let x_786 : vec4<bool> = (-(vec4<f32>(x_783.z, x_783.y, x_783.x, x_783.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_786.x, x_786.y, x_786.z);
        let x_790 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_790);
        let x_795 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_795);
        let x_801 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_801);
        let x_805 : bool = u_xlatb10.z;
        if (x_805) {
          let x_810 : f32 = u_xlat22.z;
          x_806 = x_810;
        } else {
          let x_812 : f32 = u_xlat11;
          x_806 = x_812;
        }
        let x_813 : f32 = x_806;
        u_xlat34 = x_813;
        let x_816 : bool = u_xlatb10.x;
        if (x_816) {
          let x_821 : f32 = u_xlat22.x;
          x_817 = x_821;
        } else {
          let x_823 : f32 = u_xlat34;
          x_817 = x_823;
        }
        let x_824 : f32 = x_817;
        u_xlat10.x = x_824;
        let x_826 : i32 = u_xlati17;
        let x_828 : f32 = x_288.x_AdditionalShadowParams[x_826].w;
        u_xlat22.x = trunc(x_828);
        let x_832 : f32 = u_xlat10.x;
        let x_834 : f32 = u_xlat22.x;
        u_xlat10.x = (x_832 + x_834);
        let x_838 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_838);
      }
      let x_840 : i32 = u_xlati45;
      u_xlati45 = (x_840 << bitcast<u32>(2i));
      let x_842 : vec3<f32> = vs_TEXCOORD7;
      let x_845 : i32 = u_xlati45;
      let x_848 : i32 = u_xlati45;
      let x_852 : vec4<f32> = x_288.x_AdditionalLightsWorldToShadow[((x_845 + 1i) / 4i)][((x_848 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_842.y, x_842.y, x_842.y, x_842.y) * x_852);
      let x_854 : i32 = u_xlati45;
      let x_856 : i32 = u_xlati45;
      let x_859 : vec4<f32> = x_288.x_AdditionalLightsWorldToShadow[(x_854 / 4i)][(x_856 % 4i)];
      let x_860 : vec3<f32> = vs_TEXCOORD7;
      let x_863 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_859 * vec4<f32>(x_860.x, x_860.x, x_860.x, x_860.x)) + x_863);
      let x_865 : i32 = u_xlati45;
      let x_868 : i32 = u_xlati45;
      let x_872 : vec4<f32> = x_288.x_AdditionalLightsWorldToShadow[((x_865 + 2i) / 4i)][((x_868 + 2i) % 4i)];
      let x_873 : vec3<f32> = vs_TEXCOORD7;
      let x_876 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_872 * vec4<f32>(x_873.z, x_873.z, x_873.z, x_873.z)) + x_876);
      let x_878 : vec4<f32> = u_xlat10;
      let x_879 : i32 = u_xlati45;
      let x_882 : i32 = u_xlati45;
      let x_886 : vec4<f32> = x_288.x_AdditionalLightsWorldToShadow[((x_879 + 3i) / 4i)][((x_882 + 3i) % 4i)];
      u_xlat10 = (x_878 + x_886);
      let x_888 : vec4<f32> = u_xlat10;
      let x_890 : vec4<f32> = u_xlat10;
      let x_892 : vec3<f32> = (vec3<f32>(x_888.x, x_888.y, x_888.z) / vec3<f32>(x_890.w, x_890.w, x_890.w));
      let x_893 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
      let x_896 : vec4<f32> = u_xlat10;
      let x_897 : vec2<f32> = vec2<f32>(x_896.x, x_896.y);
      let x_899 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_897.x, x_897.y, x_899);
      let x_907 : vec3<f32> = txVec1;
      let x_909 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_907.xy, x_907.z);
      u_xlat45 = x_909;
      let x_910 : i32 = u_xlati17;
      let x_912 : f32 = x_288.x_AdditionalShadowParams[x_910].x;
      u_xlat10.x = (1.0f + -(x_912));
      let x_916 : f32 = u_xlat45;
      let x_917 : i32 = u_xlati17;
      let x_919 : f32 = x_288.x_AdditionalShadowParams[x_917].x;
      let x_922 : f32 = u_xlat10.x;
      u_xlat45 = ((x_916 * x_919) + x_922);
      let x_925 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_925);
      let x_930 : f32 = u_xlat10.z;
      u_xlatb22 = (x_930 >= 1.0f);
      let x_932 : bool = u_xlatb22;
      let x_934 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_932 | x_934);
      let x_938 : bool = u_xlatb10.x;
      let x_939 : f32 = u_xlat45;
      u_xlat45 = select(x_939, 1.0f, x_938);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_942 : f32 = u_xlat45;
    u_xlat10.x = (-(x_942) + 1.0f);
    let x_946 : f32 = u_xlat1;
    let x_948 : f32 = u_xlat10.x;
    let x_950 : f32 = u_xlat45;
    u_xlat45 = ((x_946 * x_948) + x_950);
    let x_952 : f32 = u_xlat42;
    let x_953 : f32 = u_xlat45;
    u_xlat42 = (x_952 * x_953);
    let x_955 : vec3<f32> = u_xlat13;
    let x_956 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_955, x_956);
    let x_958 : f32 = u_xlat45;
    u_xlat45 = clamp(x_958, 0.0f, 1.0f);
    let x_960 : f32 = u_xlat42;
    let x_961 : f32 = u_xlat45;
    u_xlat42 = (x_960 * x_961);
    let x_963 : f32 = u_xlat42;
    let x_965 : i32 = u_xlati17;
    let x_967 : vec4<f32> = x_669.x_AdditionalLightsColor[x_965];
    let x_969 : vec3<f32> = (vec3<f32>(x_963, x_963, x_963) * vec3<f32>(x_967.x, x_967.y, x_967.z));
    let x_970 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
    let x_972 : vec3<f32> = u_xlat8;
    let x_973 : f32 = u_xlat44;
    let x_976 : vec3<f32> = u_xlat3;
    u_xlat8 = ((x_972 * vec3<f32>(x_973, x_973, x_973)) + x_976);
    let x_978 : vec3<f32> = u_xlat8;
    let x_979 : vec3<f32> = u_xlat8;
    u_xlat17.x = dot(x_978, x_979);
    let x_983 : f32 = u_xlat17.x;
    u_xlat17.x = max(x_983, 1.17549435e-38f);
    let x_987 : f32 = u_xlat17.x;
    u_xlat17.x = inverseSqrt(x_987);
    let x_990 : vec3<f32> = u_xlat17;
    let x_992 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_990.x, x_990.x, x_990.x) * x_992);
    let x_994 : vec3<f32> = u_xlat13;
    let x_995 : vec3<f32> = u_xlat8;
    u_xlat17.x = dot(x_994, x_995);
    let x_999 : f32 = u_xlat17.x;
    u_xlat17.x = clamp(x_999, 0.0f, 1.0f);
    let x_1002 : vec3<f32> = u_xlat9;
    let x_1003 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1002, x_1003);
    let x_1005 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1005, 0.0f, 1.0f);
    let x_1008 : f32 = u_xlat17.x;
    let x_1010 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1008 * x_1010);
    let x_1014 : f32 = u_xlat17.x;
    let x_1016 : f32 = u_xlat7.x;
    u_xlat17.x = ((x_1014 * x_1016) + 1.00001001358032226562f);
    let x_1020 : f32 = u_xlat42;
    let x_1021 : f32 = u_xlat42;
    u_xlat42 = (x_1020 * x_1021);
    let x_1024 : f32 = u_xlat17.x;
    let x_1026 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1024 * x_1026);
    let x_1029 : f32 = u_xlat42;
    u_xlat42 = max(x_1029, 0.10000000149011611938f);
    let x_1032 : f32 = u_xlat17.x;
    let x_1033 : f32 = u_xlat42;
    u_xlat17.x = (x_1032 * x_1033);
    let x_1036 : f32 = u_xlat39;
    let x_1038 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1036 * x_1038);
    let x_1041 : f32 = u_xlat40;
    let x_1043 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1041 / x_1043);
    let x_1046 : vec4<f32> = u_xlat0;
    let x_1048 : vec3<f32> = u_xlat17;
    let x_1051 : vec3<f32> = u_xlat4;
    u_xlat8 = ((vec3<f32>(x_1046.x, x_1046.y, x_1046.z) * vec3<f32>(x_1048.x, x_1048.x, x_1048.x)) + x_1051);
    let x_1053 : vec3<f32> = u_xlat8;
    let x_1054 : vec4<f32> = u_xlat10;
    let x_1057 : vec3<f32> = u_xlat19;
    u_xlat19 = ((x_1053 * vec3<f32>(x_1054.x, x_1054.y, x_1054.z)) + x_1057);

    continuing {
      let x_1059 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1059 + bitcast<u32>(1i));
    }
  }
  let x_1061 : vec4<f32> = u_xlat6;
  let x_1063 : vec4<f32> = u_xlat5;
  let x_1066 : vec4<f32> = u_xlat2;
  let x_1068 : vec3<f32> = ((vec3<f32>(x_1061.x, x_1061.y, x_1061.z) * vec3<f32>(x_1063.x, x_1063.z, x_1063.w)) + vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1069 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1073 : vec3<f32> = u_xlat19;
  let x_1074 : vec4<f32> = u_xlat0;
  let x_1076 : vec3<f32> = (x_1073 + vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
  let x_1077 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


