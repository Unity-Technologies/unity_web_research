diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
}

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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat8 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlatb16 : bool;

var<private> u_xlatb8 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_158 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu8 : u32;

var<private> u_xlati8 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

var<private> u_xlatb26 : bool;

var<private> u_xlat26 : f32;

@group(1) @binding(2) var<uniform> x_515 : UnityPerDraw;

var<private> u_xlatu24 : u32;

var<private> u_xlatu27 : u32;

var<private> u_xlati28 : i32;

var<private> u_xlat27 : f32;

var<private> u_xlati27 : i32;

@group(1) @binding(1) var<uniform> x_626 : AdditionalLights;

var<private> u_xlat28 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlati29 : i32;

var<private> u_xlatb30 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat30 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu26 : u32;

var<private> u_xlatb27 : bool;

fn main_1() {
  var x_61 : f32;
  var x_111 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_757 : f32;
  var x_767 : f32;
  var txVec1 : vec3<f32>;
  var x_973 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_65 : f32 = u_xlat1.x;
    x_61 = x_65;
  } else {
    x_61 = 0.0f;
  }
  let x_68 : f32 = x_61;
  u_xlat0.x = x_68;
  let x_73 : f32 = u_xlat0.w;
  let x_75 : f32 = x_42.x_BaseColor.w;
  let x_78 : f32 = x_42.x_Cutoff;
  u_xlat8 = ((x_73 * x_75) + -(x_78));
  let x_83 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_83);
  let x_87 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_87);
  let x_89 : f32 = u_xlat24;
  let x_91 : f32 = u_xlat16;
  u_xlat16 = (abs(x_89) + abs(x_91));
  let x_94 : f32 = u_xlat16;
  u_xlat16 = max(x_94, 0.00009999999747378752f);
  let x_97 : f32 = u_xlat8;
  let x_98 : f32 = u_xlat16;
  u_xlat8 = (x_97 / x_98);
  let x_100 : f32 = u_xlat8;
  u_xlat8 = (x_100 + 0.5f);
  let x_103 : f32 = u_xlat8;
  u_xlat8 = clamp(x_103, 0.0f, 1.0f);
  let x_108 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_108 == 0.0f));
  let x_110 : bool = u_xlatb16;
  if (x_110) {
    let x_114 : f32 = u_xlat8;
    x_111 = x_114;
  } else {
    let x_117 : f32 = u_xlat0.x;
    x_111 = x_117;
  }
  let x_118 : f32 = x_111;
  u_xlat0.x = x_118;
  let x_121 : f32 = u_xlat0.x;
  u_xlat8 = (x_121 + -0.00009999999747378752f);
  let x_125 : f32 = u_xlat8;
  u_xlatb8 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb8;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8 = dot(x_137, x_138);
  let x_140 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_140);
  let x_144 : f32 = u_xlat8;
  let x_146 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_144, x_144, x_144) * x_146);
  let x_150 : vec3<f32> = vs_TEXCOORD1;
  let x_160 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres0;
  let x_163 : vec3<f32> = (x_150 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec3<f32> = vs_TEXCOORD1;
  let x_170 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres1;
  let x_173 : vec3<f32> = (x_167 + -(vec3<f32>(x_170.x, x_170.y, x_170.z)));
  let x_174 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_177 : vec3<f32> = vs_TEXCOORD1;
  let x_180 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_177 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_185 : vec3<f32> = vs_TEXCOORD1;
  let x_187 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_185 + -(vec3<f32>(x_187.x, x_187.y, x_187.z)));
  let x_191 : vec4<f32> = u_xlat3;
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_197 : vec4<f32> = u_xlat4;
  let x_199 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_197.x, x_197.y, x_197.z), vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_204 : vec3<f32> = u_xlat5;
  let x_205 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_204, x_205);
  let x_209 : vec3<f32> = u_xlat6;
  let x_210 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_209, x_210);
  let x_216 : vec4<f32> = u_xlat3;
  let x_219 : vec4<f32> = x_158.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_216 < x_219);
  let x_222 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_222);
  let x_226 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_226);
  let x_230 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_238);
  let x_244 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_244);
  let x_248 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_248);
  let x_251 : vec4<f32> = u_xlat3;
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec3<f32> = (vec3<f32>(x_251.x, x_251.y, x_251.z) + vec3<f32>(x_253.y, x_253.z, x_253.w));
  let x_256 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat3;
  let x_261 : vec3<f32> = max(vec3<f32>(x_258.x, x_258.y, x_258.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_262 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_262.x, x_261.x, x_261.y, x_261.z);
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat8 = dot(x_264, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_270 : f32 = u_xlat8;
  u_xlat8 = (-(x_270) + 4.0f);
  let x_275 : f32 = u_xlat8;
  u_xlatu8 = u32(x_275);
  let x_279 : u32 = u_xlatu8;
  u_xlati8 = (bitcast<i32>(x_279) << bitcast<u32>(2i));
  let x_282 : vec3<f32> = vs_TEXCOORD1;
  let x_284 : i32 = u_xlati8;
  let x_287 : i32 = u_xlati8;
  let x_291 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_284 + 1i) / 4i)][((x_287 + 1i) % 4i)];
  let x_293 : vec3<f32> = (vec3<f32>(x_282.y, x_282.y, x_282.y) * vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : i32 = u_xlati8;
  let x_298 : i32 = u_xlati8;
  let x_301 : vec4<f32> = x_158.x_MainLightWorldToShadow[(x_296 / 4i)][(x_298 % 4i)];
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_306 : vec4<f32> = u_xlat3;
  let x_308 : vec3<f32> = ((vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.x, x_303.x, x_303.x)) + vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : i32 = u_xlati8;
  let x_314 : i32 = u_xlati8;
  let x_318 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_311 + 2i) / 4i)][((x_314 + 2i) % 4i)];
  let x_320 : vec3<f32> = vs_TEXCOORD1;
  let x_323 : vec4<f32> = u_xlat3;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_320.z, x_320.z, x_320.z)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat3;
  let x_330 : i32 = u_xlati8;
  let x_333 : i32 = u_xlati8;
  let x_337 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_330 + 3i) / 4i)][((x_333 + 3i) % 4i)];
  let x_339 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_344 : f32 = vs_TEXCOORD1.y;
  let x_347 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat8 = (x_344 * x_347);
  let x_350 : f32 = x_28.unity_MatrixV[0i].z;
  let x_352 : f32 = vs_TEXCOORD1.x;
  let x_354 : f32 = u_xlat8;
  u_xlat8 = ((x_350 * x_352) + x_354);
  let x_357 : f32 = x_28.unity_MatrixV[2i].z;
  let x_359 : f32 = vs_TEXCOORD1.z;
  let x_361 : f32 = u_xlat8;
  u_xlat8 = ((x_357 * x_359) + x_361);
  let x_363 : f32 = u_xlat8;
  let x_365 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat8 = (x_363 + x_365);
  let x_367 : f32 = u_xlat8;
  let x_371 : f32 = x_28.x_ProjectionParams.y;
  u_xlat8 = (-(x_367) + -(x_371));
  let x_374 : f32 = u_xlat8;
  u_xlat8 = max(x_374, 0.0f);
  let x_376 : f32 = u_xlat8;
  let x_379 : f32 = x_28.unity_FogParams.x;
  u_xlat8 = (x_376 * x_379);
  let x_387 : vec2<f32> = vs_TEXCOORD7;
  let x_389 : f32 = x_28.x_GlobalMipBias.x;
  let x_390 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_387, x_389);
  u_xlat4 = x_390;
  let x_395 : vec2<f32> = vs_TEXCOORD7;
  let x_397 : f32 = x_28.x_GlobalMipBias.x;
  let x_398 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_395, x_397);
  u_xlat5 = vec3<f32>(x_398.x, x_398.y, x_398.z);
  let x_400 : vec4<f32> = u_xlat4;
  let x_404 : vec3<f32> = (vec3<f32>(x_400.x, x_400.y, x_400.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_405 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec3<f32> = u_xlat2;
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(x_407, vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : f32 = u_xlat24;
  u_xlat24 = (x_411 + 0.5f);
  let x_413 : f32 = u_xlat24;
  let x_415 : vec3<f32> = u_xlat5;
  let x_416 : vec3<f32> = (vec3<f32>(x_413, x_413, x_413) * x_415);
  let x_417 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_420 : f32 = u_xlat4.w;
  u_xlat24 = max(x_420, 0.00009999999747378752f);
  let x_422 : vec4<f32> = u_xlat4;
  let x_424 : f32 = u_xlat24;
  let x_426 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) / vec3<f32>(x_424, x_424, x_424));
  let x_427 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_431 : vec4<f32> = u_xlat3;
  let x_432 : vec2<f32> = vec2<f32>(x_431.x, x_431.y);
  let x_434 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_432.x, x_432.y, x_434);
  let x_446 : vec3<f32> = txVec0;
  let x_448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_446.xy, x_446.z);
  u_xlat24 = x_448;
  let x_451 : f32 = x_158.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_451) + 1.0f);
  let x_455 : f32 = u_xlat24;
  let x_457 : f32 = x_158.x_MainLightShadowParams.x;
  let x_460 : f32 = u_xlat1.x;
  u_xlat24 = ((x_455 * x_457) + x_460);
  let x_464 : f32 = u_xlat3.z;
  u_xlatb1 = (0.0f >= x_464);
  let x_468 : f32 = u_xlat3.z;
  u_xlatb26 = (x_468 >= 1.0f);
  let x_470 : bool = u_xlatb1;
  let x_471 : bool = u_xlatb26;
  u_xlatb1 = (x_470 | x_471);
  let x_473 : bool = u_xlatb1;
  let x_474 : f32 = u_xlat24;
  u_xlat24 = select(x_474, 1.0f, x_473);
  let x_476 : vec3<f32> = vs_TEXCOORD1;
  let x_479 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_481 : vec3<f32> = (x_476 + -(x_479));
  let x_482 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat3;
  let x_486 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_484.x, x_484.y, x_484.z), vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_492 : f32 = u_xlat1.x;
  let x_494 : f32 = x_158.x_MainLightShadowParams.z;
  let x_497 : f32 = x_158.x_MainLightShadowParams.w;
  u_xlat26 = ((x_492 * x_494) + x_497);
  let x_499 : f32 = u_xlat26;
  u_xlat26 = clamp(x_499, 0.0f, 1.0f);
  let x_501 : f32 = u_xlat24;
  u_xlat3.x = (-(x_501) + 1.0f);
  let x_505 : f32 = u_xlat26;
  let x_507 : f32 = u_xlat3.x;
  let x_509 : f32 = u_xlat24;
  u_xlat24 = ((x_505 * x_507) + x_509);
  let x_511 : f32 = u_xlat24;
  let x_517 : f32 = x_515.unity_LightData.z;
  u_xlat24 = (x_511 * x_517);
  let x_519 : f32 = u_xlat24;
  let x_522 : vec4<f32> = x_28.x_MainLightColor;
  let x_524 : vec3<f32> = (vec3<f32>(x_519, x_519, x_519) * vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_525 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_527 : vec3<f32> = u_xlat2;
  let x_529 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat24 = dot(x_527, vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_532 : f32 = u_xlat24;
  u_xlat24 = clamp(x_532, 0.0f, 1.0f);
  let x_534 : f32 = u_xlat24;
  let x_536 : vec4<f32> = u_xlat3;
  let x_538 : vec3<f32> = (vec3<f32>(x_534, x_534, x_534) * vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat1;
  let x_543 : vec4<f32> = u_xlat3;
  let x_545 : vec3<f32> = (vec3<f32>(x_541.y, x_541.z, x_541.w) * vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_549 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_551 : f32 = x_515.unity_LightData.y;
  u_xlat24 = min(x_549, x_551);
  let x_554 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_554));
  let x_558 : f32 = u_xlat1.x;
  let x_561 : f32 = x_158.x_AdditionalShadowFadeParams.x;
  let x_564 : f32 = x_158.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_558 * x_561) + x_564);
  let x_568 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_568, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_581 : u32 = u_xlatu_loop_1;
    let x_582 : u32 = u_xlatu24;
    if ((x_581 < x_582)) {
    } else {
      break;
    }
    let x_585 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_585 >> 2u);
    let x_588 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_588 & 3u));
    let x_592 : u32 = u_xlatu27;
    let x_595 : vec4<f32> = x_515.unity_LightIndices[bitcast<i32>(x_592)];
    let x_605 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_610 : vec4<u32> = indexable[x_605];
    u_xlat27 = dot(x_595, bitcast<vec4<f32>>(x_610));
    let x_614 : f32 = u_xlat27;
    u_xlati27 = i32(x_614);
    let x_616 : vec3<f32> = vs_TEXCOORD1;
    let x_627 : i32 = u_xlati27;
    let x_629 : vec4<f32> = x_626.x_AdditionalLightsPosition[x_627];
    let x_632 : i32 = u_xlati27;
    let x_634 : vec4<f32> = x_626.x_AdditionalLightsPosition[x_632];
    u_xlat6 = ((-(x_616) * vec3<f32>(x_629.w, x_629.w, x_629.w)) + vec3<f32>(x_634.x, x_634.y, x_634.z));
    let x_638 : vec3<f32> = u_xlat6;
    let x_639 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_638, x_639);
    let x_641 : f32 = u_xlat28;
    u_xlat28 = max(x_641, 0.00006103515625f);
    let x_645 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_645);
    let x_647 : f32 = u_xlat29;
    let x_649 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_647, x_647, x_647) * x_649);
    let x_651 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_651);
    let x_653 : f32 = u_xlat28;
    let x_654 : i32 = u_xlati27;
    let x_656 : f32 = x_626.x_AdditionalLightsAttenuation[x_654].x;
    u_xlat28 = (x_653 * x_656);
    let x_658 : f32 = u_xlat28;
    let x_660 : f32 = u_xlat28;
    u_xlat28 = ((-(x_658) * x_660) + 1.0f);
    let x_663 : f32 = u_xlat28;
    u_xlat28 = max(x_663, 0.0f);
    let x_665 : f32 = u_xlat28;
    let x_666 : f32 = u_xlat28;
    u_xlat28 = (x_665 * x_666);
    let x_668 : f32 = u_xlat28;
    let x_669 : f32 = u_xlat29;
    u_xlat28 = (x_668 * x_669);
    let x_671 : i32 = u_xlati27;
    let x_673 : vec4<f32> = x_626.x_AdditionalLightsSpotDir[x_671];
    let x_675 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_673.x, x_673.y, x_673.z), x_675);
    let x_677 : f32 = u_xlat29;
    let x_678 : i32 = u_xlati27;
    let x_680 : f32 = x_626.x_AdditionalLightsAttenuation[x_678].z;
    let x_682 : i32 = u_xlati27;
    let x_684 : f32 = x_626.x_AdditionalLightsAttenuation[x_682].w;
    u_xlat29 = ((x_677 * x_680) + x_684);
    let x_686 : f32 = u_xlat29;
    u_xlat29 = clamp(x_686, 0.0f, 1.0f);
    let x_688 : f32 = u_xlat29;
    let x_689 : f32 = u_xlat29;
    u_xlat29 = (x_688 * x_689);
    let x_691 : f32 = u_xlat28;
    let x_692 : f32 = u_xlat29;
    u_xlat28 = (x_691 * x_692);
    let x_696 : i32 = u_xlati27;
    let x_698 : f32 = x_158.x_AdditionalShadowParams[x_696].w;
    u_xlati29 = i32(x_698);
    let x_701 : i32 = u_xlati29;
    u_xlatb30 = (x_701 >= 0i);
    let x_703 : bool = u_xlatb30;
    if (x_703) {
      let x_707 : i32 = u_xlati27;
      let x_709 : f32 = x_158.x_AdditionalShadowParams[x_707].z;
      u_xlatb30 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_709, x_709, x_709, x_709))));
      let x_713 : bool = u_xlatb30;
      if (x_713) {
        let x_717 : vec3<f32> = u_xlat6;
        let x_720 : vec3<f32> = u_xlat6;
        let x_723 : vec4<bool> = (abs(vec4<f32>(x_717.z, x_717.z, x_717.y, x_717.z)) >= abs(vec4<f32>(x_720.x, x_720.y, x_720.x, x_720.x)));
        let x_725 : vec3<bool> = vec3<bool>(x_723.x, x_723.y, x_723.z);
        let x_726 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_725.x, x_725.y, x_725.z, x_726.w);
        let x_729 : bool = u_xlatb7.y;
        let x_731 : bool = u_xlatb7.x;
        u_xlatb30 = (x_729 & x_731);
        let x_733 : vec3<f32> = u_xlat6;
        let x_736 : vec4<bool> = (-(vec4<f32>(x_733.z, x_733.y, x_733.z, x_733.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_737 : vec3<bool> = vec3<bool>(x_736.x, x_736.y, x_736.w);
        let x_738 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_737.x, x_737.y, x_738.z, x_737.z);
        let x_742 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_742);
        let x_747 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_747);
        let x_752 : bool = u_xlatb7.w;
        u_xlat31 = select(0.0f, 1.0f, x_752);
        let x_756 : bool = u_xlatb7.z;
        if (x_756) {
          let x_761 : f32 = u_xlat7.y;
          x_757 = x_761;
        } else {
          let x_763 : f32 = u_xlat31;
          x_757 = x_763;
        }
        let x_764 : f32 = x_757;
        u_xlat15 = x_764;
        let x_766 : bool = u_xlatb30;
        if (x_766) {
          let x_771 : f32 = u_xlat7.x;
          x_767 = x_771;
        } else {
          let x_773 : f32 = u_xlat15;
          x_767 = x_773;
        }
        let x_774 : f32 = x_767;
        u_xlat30 = x_774;
        let x_775 : i32 = u_xlati27;
        let x_777 : f32 = x_158.x_AdditionalShadowParams[x_775].w;
        u_xlat7.x = trunc(x_777);
        let x_780 : f32 = u_xlat30;
        let x_782 : f32 = u_xlat7.x;
        u_xlat30 = (x_780 + x_782);
        let x_784 : f32 = u_xlat30;
        u_xlati29 = i32(x_784);
      }
      let x_786 : i32 = u_xlati29;
      u_xlati29 = (x_786 << bitcast<u32>(2i));
      let x_788 : vec3<f32> = vs_TEXCOORD1;
      let x_791 : i32 = u_xlati29;
      let x_794 : i32 = u_xlati29;
      let x_798 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_791 + 1i) / 4i)][((x_794 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_788.y, x_788.y, x_788.y, x_788.y) * x_798);
      let x_800 : i32 = u_xlati29;
      let x_802 : i32 = u_xlati29;
      let x_805 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[(x_800 / 4i)][(x_802 % 4i)];
      let x_806 : vec3<f32> = vs_TEXCOORD1;
      let x_809 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_805 * vec4<f32>(x_806.x, x_806.x, x_806.x, x_806.x)) + x_809);
      let x_811 : i32 = u_xlati29;
      let x_814 : i32 = u_xlati29;
      let x_818 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_811 + 2i) / 4i)][((x_814 + 2i) % 4i)];
      let x_819 : vec3<f32> = vs_TEXCOORD1;
      let x_822 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_818 * vec4<f32>(x_819.z, x_819.z, x_819.z, x_819.z)) + x_822);
      let x_824 : vec4<f32> = u_xlat7;
      let x_825 : i32 = u_xlati29;
      let x_828 : i32 = u_xlati29;
      let x_832 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_825 + 3i) / 4i)][((x_828 + 3i) % 4i)];
      u_xlat7 = (x_824 + x_832);
      let x_834 : vec4<f32> = u_xlat7;
      let x_836 : vec4<f32> = u_xlat7;
      let x_838 : vec3<f32> = (vec3<f32>(x_834.x, x_834.y, x_834.z) / vec3<f32>(x_836.w, x_836.w, x_836.w));
      let x_839 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
      let x_842 : vec4<f32> = u_xlat7;
      let x_843 : vec2<f32> = vec2<f32>(x_842.x, x_842.y);
      let x_845 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_843.x, x_843.y, x_845);
      let x_853 : vec3<f32> = txVec1;
      let x_855 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_853.xy, x_853.z);
      u_xlat29 = x_855;
      let x_856 : i32 = u_xlati27;
      let x_858 : f32 = x_158.x_AdditionalShadowParams[x_856].x;
      u_xlat30 = (1.0f + -(x_858));
      let x_861 : f32 = u_xlat29;
      let x_862 : i32 = u_xlati27;
      let x_864 : f32 = x_158.x_AdditionalShadowParams[x_862].x;
      let x_866 : f32 = u_xlat30;
      u_xlat29 = ((x_861 * x_864) + x_866);
      let x_869 : f32 = u_xlat7.z;
      u_xlatb30 = (0.0f >= x_869);
      let x_872 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_872 >= 1.0f);
      let x_875 : bool = u_xlatb30;
      let x_877 : bool = u_xlatb7.x;
      u_xlatb30 = (x_875 | x_877);
      let x_879 : bool = u_xlatb30;
      let x_880 : f32 = u_xlat29;
      u_xlat29 = select(x_880, 1.0f, x_879);
    } else {
      u_xlat29 = 1.0f;
    }
    let x_883 : f32 = u_xlat29;
    u_xlat30 = (-(x_883) + 1.0f);
    let x_887 : f32 = u_xlat1.x;
    let x_888 : f32 = u_xlat30;
    let x_890 : f32 = u_xlat29;
    u_xlat29 = ((x_887 * x_888) + x_890);
    let x_892 : f32 = u_xlat28;
    let x_893 : f32 = u_xlat29;
    u_xlat28 = (x_892 * x_893);
    let x_895 : f32 = u_xlat28;
    let x_897 : i32 = u_xlati27;
    let x_899 : vec4<f32> = x_626.x_AdditionalLightsColor[x_897];
    let x_901 : vec3<f32> = (vec3<f32>(x_895, x_895, x_895) * vec3<f32>(x_899.x, x_899.y, x_899.z));
    let x_902 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
    let x_904 : vec3<f32> = u_xlat2;
    let x_905 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_904, x_905);
    let x_907 : f32 = u_xlat27;
    u_xlat27 = clamp(x_907, 0.0f, 1.0f);
    let x_909 : f32 = u_xlat27;
    let x_911 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_909, x_909, x_909) * vec3<f32>(x_911.x, x_911.y, x_911.z));
    let x_914 : vec3<f32> = u_xlat6;
    let x_915 : vec4<f32> = u_xlat1;
    let x_918 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_914 * vec3<f32>(x_915.y, x_915.z, x_915.w)) + x_918);

    continuing {
      let x_920 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_920 + bitcast<u32>(1i));
    }
  }
  let x_922 : vec4<f32> = u_xlat4;
  let x_924 : vec4<f32> = u_xlat1;
  let x_927 : vec4<f32> = u_xlat3;
  let x_929 : vec3<f32> = ((vec3<f32>(x_922.x, x_922.y, x_922.z) * vec3<f32>(x_924.y, x_924.z, x_924.w)) + vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_930 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_932 : vec3<f32> = u_xlat5;
  let x_933 : vec4<f32> = u_xlat1;
  let x_935 : vec3<f32> = (x_932 + vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : f32 = u_xlat8;
  let x_939 : f32 = u_xlat8;
  u_xlat8 = (x_938 * -(x_939));
  let x_942 : f32 = u_xlat8;
  u_xlat8 = exp2(x_942);
  let x_944 : vec4<f32> = u_xlat1;
  let x_947 : vec4<f32> = x_28.unity_FogColor;
  let x_950 : vec3<f32> = (vec3<f32>(x_944.x, x_944.y, x_944.z) + -(vec3<f32>(x_947.x, x_947.y, x_947.z)));
  let x_951 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_955 : f32 = u_xlat8;
  let x_957 : vec4<f32> = u_xlat1;
  let x_961 : vec4<f32> = x_28.unity_FogColor;
  let x_963 : vec3<f32> = ((vec3<f32>(x_955, x_955, x_955) * vec3<f32>(x_957.x, x_957.y, x_957.z)) + vec3<f32>(x_961.x, x_961.y, x_961.z));
  let x_964 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_967 : f32 = x_42.x_Surface;
  u_xlatb8 = (x_967 == 1.0f);
  let x_969 : bool = u_xlatb8;
  let x_970 : bool = u_xlatb16;
  u_xlatb8 = (x_969 | x_970);
  let x_972 : bool = u_xlatb8;
  if (x_972) {
    let x_977 : f32 = u_xlat0.x;
    x_973 = x_977;
  } else {
    x_973 = 1.0f;
  }
  let x_979 : f32 = x_973;
  SV_Target0.w = x_979;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


