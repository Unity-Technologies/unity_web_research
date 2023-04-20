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

@group(1) @binding(3) var<uniform> x_150 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat14 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat36 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb14 : bool;

var<private> u_xlatb26 : bool;

var<private> u_xlat26 : f32;

var<private> u_xlat41 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_592 : UnityPerDraw;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu41 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlati41 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_836 : AdditionalLights;

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

var<private> u_xlatu14 : u32;

var<private> u_xlatb41 : bool;

fn main_1() {
  var x_91 : f32;
  var x_104 : f32;
  var x_117 : f32;
  var txVec0 : vec3<f32>;
  var x_487 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_971 : f32;
  var x_982 : f32;
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
  let x_142 : vec3<f32> = vs_TEXCOORD7;
  let x_153 : vec4<f32> = x_150.x_CascadeShadowSplitSpheres0;
  let x_156 : vec3<f32> = (x_142 + -(vec3<f32>(x_153.x, x_153.y, x_153.z)));
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_160 : vec3<f32> = vs_TEXCOORD7;
  let x_162 : vec4<f32> = x_150.x_CascadeShadowSplitSpheres1;
  let x_165 : vec3<f32> = (x_160 + -(vec3<f32>(x_162.x, x_162.y, x_162.z)));
  let x_166 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec3<f32> = vs_TEXCOORD7;
  let x_172 : vec4<f32> = x_150.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_169 + -(vec3<f32>(x_172.x, x_172.y, x_172.z)));
  let x_177 : vec3<f32> = vs_TEXCOORD7;
  let x_179 : vec4<f32> = x_150.x_CascadeShadowSplitSpheres3;
  let x_182 : vec3<f32> = (x_177 + -(vec3<f32>(x_179.x, x_179.y, x_179.z)));
  let x_183 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat2;
  let x_187 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_185.x, x_185.y, x_185.z), vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_191 : vec4<f32> = u_xlat4;
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat2.y = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_197 : vec3<f32> = u_xlat5;
  let x_198 : vec3<f32> = u_xlat5;
  u_xlat2.z = dot(x_197, x_198);
  let x_201 : vec4<f32> = u_xlat6;
  let x_203 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_210 : vec4<f32> = u_xlat2;
  let x_212 : vec4<f32> = x_150.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_210 < x_212);
  let x_215 : bool = u_xlatb2.x;
  u_xlat4.x = select(0.0f, 1.0f, x_215);
  let x_220 : bool = u_xlatb2.y;
  u_xlat4.y = select(0.0f, 1.0f, x_220);
  let x_224 : bool = u_xlatb2.z;
  u_xlat4.z = select(0.0f, 1.0f, x_224);
  let x_228 : bool = u_xlatb2.w;
  u_xlat4.w = select(0.0f, 1.0f, x_228);
  let x_232 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_232);
  let x_238 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_238);
  let x_242 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_242);
  let x_245 : vec4<f32> = u_xlat2;
  let x_247 : vec4<f32> = u_xlat4;
  let x_249 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) + vec3<f32>(x_247.y, x_247.z, x_247.w));
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat2;
  let x_255 : vec3<f32> = max(vec3<f32>(x_252.x, x_252.y, x_252.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_256 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_256.x, x_255.x, x_255.y, x_255.z);
  let x_258 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(x_258, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_266 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_266) + 4.0f);
  let x_273 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_273);
  let x_277 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_277) << bitcast<u32>(2i));
  let x_281 : vec3<f32> = vs_TEXCOORD7;
  let x_283 : i32 = u_xlati2;
  let x_286 : i32 = u_xlati2;
  let x_290 : vec4<f32> = x_150.x_MainLightWorldToShadow[((x_283 + 1i) / 4i)][((x_286 + 1i) % 4i)];
  u_xlat14 = (vec3<f32>(x_281.y, x_281.y, x_281.y) * vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : i32 = u_xlati2;
  let x_295 : i32 = u_xlati2;
  let x_298 : vec4<f32> = x_150.x_MainLightWorldToShadow[(x_293 / 4i)][(x_295 % 4i)];
  let x_300 : vec3<f32> = vs_TEXCOORD7;
  let x_303 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(x_300.x, x_300.x, x_300.x)) + x_303);
  let x_305 : i32 = u_xlati2;
  let x_308 : i32 = u_xlati2;
  let x_312 : vec4<f32> = x_150.x_MainLightWorldToShadow[((x_305 + 2i) / 4i)][((x_308 + 2i) % 4i)];
  let x_314 : vec3<f32> = vs_TEXCOORD7;
  let x_317 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.z, x_314.z, x_314.z)) + x_317);
  let x_319 : vec3<f32> = u_xlat14;
  let x_320 : i32 = u_xlati2;
  let x_323 : i32 = u_xlati2;
  let x_327 : vec4<f32> = x_150.x_MainLightWorldToShadow[((x_320 + 3i) / 4i)][((x_323 + 3i) % 4i)];
  let x_329 : vec3<f32> = (x_319 + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_337 : vec4<f32> = vs_TEXCOORD0;
  let x_340 : f32 = x_29.x_GlobalMipBias.x;
  let x_341 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_337.z, x_337.w), x_340);
  u_xlat4 = x_341;
  let x_346 : vec4<f32> = vs_TEXCOORD0;
  let x_349 : f32 = x_29.x_GlobalMipBias.x;
  let x_350 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_346.z, x_346.w), x_349);
  u_xlat5 = vec3<f32>(x_350.x, x_350.y, x_350.z);
  let x_352 : vec4<f32> = u_xlat4;
  let x_356 : vec3<f32> = (vec3<f32>(x_352.x, x_352.y, x_352.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_357 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_360 : vec3<f32> = u_xlat13;
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat38 = dot(x_360, vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : f32 = u_xlat38;
  u_xlat38 = (x_364 + 0.5f);
  let x_367 : f32 = u_xlat38;
  let x_369 : vec3<f32> = u_xlat5;
  let x_370 : vec3<f32> = (vec3<f32>(x_367, x_367, x_367) * x_369);
  let x_371 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_374 : f32 = u_xlat4.w;
  u_xlat38 = max(x_374, 0.00009999999747378752f);
  let x_377 : vec4<f32> = u_xlat4;
  let x_379 : f32 = u_xlat38;
  let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) / vec3<f32>(x_379, x_379, x_379));
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : f32 = u_xlat1;
  u_xlat38 = ((-(x_384) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_390 : f32 = u_xlat38;
  u_xlat39 = (-(x_390) + 1.0f);
  let x_393 : vec4<f32> = u_xlat0;
  let x_395 : f32 = u_xlat38;
  u_xlat5 = (vec3<f32>(x_393.x, x_393.y, x_393.z) * vec3<f32>(x_395, x_395, x_395));
  let x_398 : vec4<f32> = u_xlat0;
  let x_402 : vec3<f32> = (vec3<f32>(x_398.x, x_398.y, x_398.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_403 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : f32 = u_xlat1;
  let x_407 : vec4<f32> = u_xlat0;
  let x_412 : vec3<f32> = ((vec3<f32>(x_405, x_405, x_405) * vec3<f32>(x_407.x, x_407.y, x_407.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_413 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_416 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_416) + 1.0f);
  let x_419 : f32 = u_xlat1;
  let x_420 : f32 = u_xlat1;
  u_xlat38 = (x_419 * x_420);
  let x_422 : f32 = u_xlat38;
  u_xlat38 = max(x_422, 0.0078125f);
  let x_426 : f32 = u_xlat38;
  let x_427 : f32 = u_xlat38;
  u_xlat40 = (x_426 * x_427);
  let x_431 : f32 = u_xlat0.w;
  let x_432 : f32 = u_xlat39;
  u_xlat36 = (x_431 + x_432);
  let x_434 : f32 = u_xlat36;
  u_xlat36 = clamp(x_434, 0.0f, 1.0f);
  let x_436 : f32 = u_xlat38;
  u_xlat39 = ((x_436 * 4.0f) + 2.0f);
  let x_441 : vec4<f32> = u_xlat2;
  let x_442 : vec2<f32> = vec2<f32>(x_441.x, x_441.y);
  let x_444 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_442.x, x_442.y, x_444);
  let x_456 : vec3<f32> = txVec0;
  let x_458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_456.xy, x_456.z);
  u_xlat2.x = x_458;
  let x_462 : f32 = x_150.x_MainLightShadowParams.x;
  u_xlat14.x = (-(x_462) + 1.0f);
  let x_467 : f32 = u_xlat2.x;
  let x_469 : f32 = x_150.x_MainLightShadowParams.x;
  let x_472 : f32 = u_xlat14.x;
  u_xlat2.x = ((x_467 * x_469) + x_472);
  let x_477 : f32 = u_xlat2.z;
  u_xlatb14 = (0.0f >= x_477);
  let x_481 : f32 = u_xlat2.z;
  u_xlatb26 = (x_481 >= 1.0f);
  let x_483 : bool = u_xlatb26;
  let x_484 : bool = u_xlatb14;
  u_xlatb14 = (x_483 | x_484);
  let x_486 : bool = u_xlatb14;
  if (x_486) {
    x_487 = 1.0f;
  } else {
    let x_492 : f32 = u_xlat2.x;
    x_487 = x_492;
  }
  let x_493 : f32 = x_487;
  u_xlat2.x = x_493;
  let x_495 : vec3<f32> = vs_TEXCOORD7;
  let x_497 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_499 : vec3<f32> = (x_495 + -(x_497));
  let x_500 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec4<f32> = u_xlat6;
  let x_504 : vec4<f32> = u_xlat6;
  u_xlat14.x = dot(vec3<f32>(x_502.x, x_502.y, x_502.z), vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_510 : f32 = u_xlat14.x;
  let x_512 : f32 = x_150.x_MainLightShadowParams.z;
  let x_515 : f32 = x_150.x_MainLightShadowParams.w;
  u_xlat26 = ((x_510 * x_512) + x_515);
  let x_517 : f32 = u_xlat26;
  u_xlat26 = clamp(x_517, 0.0f, 1.0f);
  let x_521 : f32 = u_xlat2.x;
  u_xlat41 = (-(x_521) + 1.0f);
  let x_524 : f32 = u_xlat26;
  let x_525 : f32 = u_xlat41;
  let x_528 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_524 * x_525) + x_528);
  let x_531 : vec3<f32> = u_xlat3;
  let x_533 : vec3<f32> = u_xlat13;
  u_xlat26 = dot(-(x_531), x_533);
  let x_535 : f32 = u_xlat26;
  let x_536 : f32 = u_xlat26;
  u_xlat26 = (x_535 + x_536);
  let x_538 : vec3<f32> = u_xlat13;
  let x_539 : f32 = u_xlat26;
  let x_543 : vec3<f32> = u_xlat3;
  let x_545 : vec3<f32> = ((x_538 * -(vec3<f32>(x_539, x_539, x_539))) + -(x_543));
  let x_546 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_548 : vec3<f32> = u_xlat13;
  let x_549 : vec3<f32> = u_xlat3;
  u_xlat26 = dot(x_548, x_549);
  let x_551 : f32 = u_xlat26;
  u_xlat26 = clamp(x_551, 0.0f, 1.0f);
  let x_553 : f32 = u_xlat26;
  u_xlat26 = (-(x_553) + 1.0f);
  let x_556 : f32 = u_xlat26;
  let x_557 : f32 = u_xlat26;
  u_xlat26 = (x_556 * x_557);
  let x_559 : f32 = u_xlat26;
  let x_560 : f32 = u_xlat26;
  u_xlat26 = (x_559 * x_560);
  let x_562 : f32 = u_xlat1;
  u_xlat41 = ((-(x_562) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_568 : f32 = u_xlat1;
  let x_569 : f32 = u_xlat41;
  u_xlat1 = (x_568 * x_569);
  let x_571 : f32 = u_xlat1;
  u_xlat1 = (x_571 * 6.0f);
  let x_582 : vec4<f32> = u_xlat6;
  let x_584 : f32 = u_xlat1;
  let x_585 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_582.x, x_582.y, x_582.z), x_584);
  u_xlat6 = x_585;
  let x_587 : f32 = u_xlat6.w;
  u_xlat1 = (x_587 + -1.0f);
  let x_594 : f32 = x_592.unity_SpecCube0_HDR.w;
  let x_595 : f32 = u_xlat1;
  u_xlat1 = ((x_594 * x_595) + 1.0f);
  let x_598 : f32 = u_xlat1;
  u_xlat1 = max(x_598, 0.0f);
  let x_600 : f32 = u_xlat1;
  u_xlat1 = log2(x_600);
  let x_602 : f32 = u_xlat1;
  let x_604 : f32 = x_592.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_602 * x_604);
  let x_606 : f32 = u_xlat1;
  u_xlat1 = exp2(x_606);
  let x_608 : f32 = u_xlat1;
  let x_610 : f32 = x_592.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_608 * x_610);
  let x_612 : vec4<f32> = u_xlat6;
  let x_614 : f32 = u_xlat1;
  let x_616 : vec3<f32> = (vec3<f32>(x_612.x, x_612.y, x_612.z) * vec3<f32>(x_614, x_614, x_614));
  let x_617 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_621 : f32 = u_xlat38;
  let x_623 : f32 = u_xlat38;
  u_xlat7 = ((vec2<f32>(x_621, x_621) * vec2<f32>(x_623, x_623)) + vec2<f32>(-1.0f, 1.0f));
  let x_629 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_629);
  let x_632 : vec4<f32> = u_xlat0;
  let x_635 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_632.x, x_632.y, x_632.z)) + vec3<f32>(x_635, x_635, x_635));
  let x_638 : f32 = u_xlat26;
  let x_640 : vec3<f32> = u_xlat19;
  let x_642 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_638, x_638, x_638) * x_640) + vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_645 : f32 = u_xlat1;
  let x_647 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_645, x_645, x_645) * x_647);
  let x_649 : vec4<f32> = u_xlat6;
  let x_651 : vec3<f32> = u_xlat19;
  let x_652 : vec3<f32> = (vec3<f32>(x_649.x, x_649.y, x_649.z) * x_651);
  let x_653 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_655 : vec4<f32> = u_xlat4;
  let x_657 : vec3<f32> = u_xlat5;
  let x_659 : vec4<f32> = u_xlat6;
  let x_661 : vec3<f32> = ((vec3<f32>(x_655.x, x_655.y, x_655.z) * x_657) + vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_662 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_665 : f32 = u_xlat2.x;
  let x_667 : f32 = x_592.unity_LightData.z;
  u_xlat36 = (x_665 * x_667);
  let x_669 : vec3<f32> = u_xlat13;
  let x_671 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_669, vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : f32 = u_xlat1;
  u_xlat1 = clamp(x_674, 0.0f, 1.0f);
  let x_676 : f32 = u_xlat36;
  let x_677 : f32 = u_xlat1;
  u_xlat36 = (x_676 * x_677);
  let x_679 : f32 = u_xlat36;
  let x_682 : vec4<f32> = x_29.x_MainLightColor;
  let x_684 : vec3<f32> = (vec3<f32>(x_679, x_679, x_679) * vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_684.x, x_685.y, x_684.y, x_684.z);
  let x_687 : vec3<f32> = u_xlat3;
  let x_689 : vec4<f32> = x_29.x_MainLightPosition;
  let x_691 : vec3<f32> = (x_687 + vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat6;
  let x_696 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_694.x, x_694.y, x_694.z), vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : f32 = u_xlat36;
  u_xlat36 = max(x_699, 1.17549435e-38f);
  let x_702 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_702);
  let x_704 : f32 = u_xlat36;
  let x_706 : vec4<f32> = u_xlat6;
  let x_708 : vec3<f32> = (vec3<f32>(x_704, x_704, x_704) * vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : vec3<f32> = u_xlat13;
  let x_712 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_711, vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : f32 = u_xlat36;
  u_xlat36 = clamp(x_715, 0.0f, 1.0f);
  let x_718 : vec4<f32> = x_29.x_MainLightPosition;
  let x_720 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_718.x, x_718.y, x_718.z), vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : f32 = u_xlat1;
  u_xlat1 = clamp(x_723, 0.0f, 1.0f);
  let x_725 : f32 = u_xlat36;
  let x_726 : f32 = u_xlat36;
  u_xlat36 = (x_725 * x_726);
  let x_728 : f32 = u_xlat36;
  let x_730 : f32 = u_xlat7.x;
  u_xlat36 = ((x_728 * x_730) + 1.00001001358032226562f);
  let x_734 : f32 = u_xlat1;
  let x_735 : f32 = u_xlat1;
  u_xlat1 = (x_734 * x_735);
  let x_737 : f32 = u_xlat36;
  let x_738 : f32 = u_xlat36;
  u_xlat36 = (x_737 * x_738);
  let x_740 : f32 = u_xlat1;
  u_xlat1 = max(x_740, 0.10000000149011611938f);
  let x_743 : f32 = u_xlat36;
  let x_744 : f32 = u_xlat1;
  u_xlat36 = (x_743 * x_744);
  let x_746 : f32 = u_xlat39;
  let x_747 : f32 = u_xlat36;
  u_xlat36 = (x_746 * x_747);
  let x_749 : f32 = u_xlat40;
  let x_750 : f32 = u_xlat36;
  u_xlat36 = (x_749 / x_750);
  let x_752 : vec4<f32> = u_xlat0;
  let x_754 : f32 = u_xlat36;
  let x_757 : vec3<f32> = u_xlat5;
  let x_758 : vec3<f32> = ((vec3<f32>(x_752.x, x_752.y, x_752.z) * vec3<f32>(x_754, x_754, x_754)) + x_757);
  let x_759 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_762 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_764 : f32 = x_592.unity_LightData.y;
  u_xlat36 = min(x_762, x_764);
  let x_767 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_767));
  let x_771 : f32 = u_xlat14.x;
  let x_774 : f32 = x_150.x_AdditionalShadowFadeParams.x;
  let x_777 : f32 = x_150.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_771 * x_774) + x_777);
  let x_779 : f32 = u_xlat1;
  u_xlat1 = clamp(x_779, 0.0f, 1.0f);
  u_xlat19.x = 0.0f;
  u_xlat19.y = 0.0f;
  u_xlat19.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_791 : u32 = u_xlatu_loop_1;
    let x_792 : u32 = u_xlatu36;
    if ((x_791 < x_792)) {
    } else {
      break;
    }
    let x_795 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_795 >> 2u);
    let x_798 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_798 & 3u));
    let x_801 : u32 = u_xlatu41;
    let x_804 : vec4<f32> = x_592.unity_LightIndices[bitcast<i32>(x_801)];
    let x_814 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_819 : vec4<u32> = indexable[x_814];
    u_xlat41 = dot(x_804, bitcast<vec4<f32>>(x_819));
    let x_823 : f32 = u_xlat41;
    u_xlati41 = i32(x_823);
    let x_826 : vec3<f32> = vs_TEXCOORD7;
    let x_837 : i32 = u_xlati41;
    let x_839 : vec4<f32> = x_836.x_AdditionalLightsPosition[x_837];
    let x_842 : i32 = u_xlati41;
    let x_844 : vec4<f32> = x_836.x_AdditionalLightsPosition[x_842];
    u_xlat8 = ((-(x_826) * vec3<f32>(x_839.w, x_839.w, x_839.w)) + vec3<f32>(x_844.x, x_844.y, x_844.z));
    let x_848 : vec3<f32> = u_xlat8;
    let x_849 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_848, x_849);
    let x_851 : f32 = u_xlat42;
    u_xlat42 = max(x_851, 0.00006103515625f);
    let x_855 : f32 = u_xlat42;
    u_xlat44 = inverseSqrt(x_855);
    let x_858 : f32 = u_xlat44;
    let x_860 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_858, x_858, x_858) * x_860);
    let x_863 : f32 = u_xlat42;
    u_xlat45 = (1.0f / x_863);
    let x_865 : f32 = u_xlat42;
    let x_866 : i32 = u_xlati41;
    let x_868 : f32 = x_836.x_AdditionalLightsAttenuation[x_866].x;
    u_xlat42 = (x_865 * x_868);
    let x_870 : f32 = u_xlat42;
    let x_872 : f32 = u_xlat42;
    u_xlat42 = ((-(x_870) * x_872) + 1.0f);
    let x_875 : f32 = u_xlat42;
    u_xlat42 = max(x_875, 0.0f);
    let x_877 : f32 = u_xlat42;
    let x_878 : f32 = u_xlat42;
    u_xlat42 = (x_877 * x_878);
    let x_880 : f32 = u_xlat42;
    let x_881 : f32 = u_xlat45;
    u_xlat42 = (x_880 * x_881);
    let x_883 : i32 = u_xlati41;
    let x_885 : vec4<f32> = x_836.x_AdditionalLightsSpotDir[x_883];
    let x_887 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_885.x, x_885.y, x_885.z), x_887);
    let x_889 : f32 = u_xlat45;
    let x_890 : i32 = u_xlati41;
    let x_892 : f32 = x_836.x_AdditionalLightsAttenuation[x_890].z;
    let x_894 : i32 = u_xlati41;
    let x_896 : f32 = x_836.x_AdditionalLightsAttenuation[x_894].w;
    u_xlat45 = ((x_889 * x_892) + x_896);
    let x_898 : f32 = u_xlat45;
    u_xlat45 = clamp(x_898, 0.0f, 1.0f);
    let x_900 : f32 = u_xlat45;
    let x_901 : f32 = u_xlat45;
    u_xlat45 = (x_900 * x_901);
    let x_903 : f32 = u_xlat42;
    let x_904 : f32 = u_xlat45;
    u_xlat42 = (x_903 * x_904);
    let x_908 : i32 = u_xlati41;
    let x_910 : f32 = x_150.x_AdditionalShadowParams[x_908].w;
    u_xlati45 = i32(x_910);
    let x_915 : i32 = u_xlati45;
    u_xlatb10.x = (x_915 >= 0i);
    let x_919 : bool = u_xlatb10.x;
    if (x_919) {
      let x_923 : i32 = u_xlati41;
      let x_925 : f32 = x_150.x_AdditionalShadowParams[x_923].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_925, x_925, x_925, x_925))));
      let x_931 : bool = u_xlatb10.x;
      if (x_931) {
        let x_934 : vec3<f32> = u_xlat9;
        let x_937 : vec3<f32> = u_xlat9;
        let x_940 : vec4<bool> = (abs(vec4<f32>(x_934.z, x_934.z, x_934.y, x_934.z)) >= abs(vec4<f32>(x_937.x, x_937.y, x_937.x, x_937.x)));
        u_xlatb10 = vec3<bool>(x_940.x, x_940.y, x_940.z);
        let x_943 : bool = u_xlatb10.y;
        let x_945 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_943 & x_945);
        let x_949 : vec3<f32> = u_xlat9;
        let x_952 : vec4<bool> = (-(vec4<f32>(x_949.z, x_949.y, x_949.x, x_949.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_952.x, x_952.y, x_952.z);
        let x_956 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_956);
        let x_961 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_961);
        let x_966 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_966);
        let x_970 : bool = u_xlatb10.z;
        if (x_970) {
          let x_975 : f32 = u_xlat22.z;
          x_971 = x_975;
        } else {
          let x_977 : f32 = u_xlat11;
          x_971 = x_977;
        }
        let x_978 : f32 = x_971;
        u_xlat34 = x_978;
        let x_981 : bool = u_xlatb10.x;
        if (x_981) {
          let x_986 : f32 = u_xlat22.x;
          x_982 = x_986;
        } else {
          let x_988 : f32 = u_xlat34;
          x_982 = x_988;
        }
        let x_989 : f32 = x_982;
        u_xlat10.x = x_989;
        let x_991 : i32 = u_xlati41;
        let x_993 : f32 = x_150.x_AdditionalShadowParams[x_991].w;
        u_xlat22.x = trunc(x_993);
        let x_997 : f32 = u_xlat10.x;
        let x_999 : f32 = u_xlat22.x;
        u_xlat10.x = (x_997 + x_999);
        let x_1003 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1003);
      }
      let x_1005 : i32 = u_xlati45;
      u_xlati45 = (x_1005 << bitcast<u32>(2i));
      let x_1007 : vec3<f32> = vs_TEXCOORD7;
      let x_1010 : i32 = u_xlati45;
      let x_1013 : i32 = u_xlati45;
      let x_1017 : vec4<f32> = x_150.x_AdditionalLightsWorldToShadow[((x_1010 + 1i) / 4i)][((x_1013 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1007.y, x_1007.y, x_1007.y, x_1007.y) * x_1017);
      let x_1019 : i32 = u_xlati45;
      let x_1021 : i32 = u_xlati45;
      let x_1024 : vec4<f32> = x_150.x_AdditionalLightsWorldToShadow[(x_1019 / 4i)][(x_1021 % 4i)];
      let x_1025 : vec3<f32> = vs_TEXCOORD7;
      let x_1028 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1024 * vec4<f32>(x_1025.x, x_1025.x, x_1025.x, x_1025.x)) + x_1028);
      let x_1030 : i32 = u_xlati45;
      let x_1033 : i32 = u_xlati45;
      let x_1037 : vec4<f32> = x_150.x_AdditionalLightsWorldToShadow[((x_1030 + 2i) / 4i)][((x_1033 + 2i) % 4i)];
      let x_1038 : vec3<f32> = vs_TEXCOORD7;
      let x_1041 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1037 * vec4<f32>(x_1038.z, x_1038.z, x_1038.z, x_1038.z)) + x_1041);
      let x_1043 : vec4<f32> = u_xlat10;
      let x_1044 : i32 = u_xlati45;
      let x_1047 : i32 = u_xlati45;
      let x_1051 : vec4<f32> = x_150.x_AdditionalLightsWorldToShadow[((x_1044 + 3i) / 4i)][((x_1047 + 3i) % 4i)];
      u_xlat10 = (x_1043 + x_1051);
      let x_1053 : vec4<f32> = u_xlat10;
      let x_1055 : vec4<f32> = u_xlat10;
      let x_1057 : vec3<f32> = (vec3<f32>(x_1053.x, x_1053.y, x_1053.z) / vec3<f32>(x_1055.w, x_1055.w, x_1055.w));
      let x_1058 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
      let x_1061 : vec4<f32> = u_xlat10;
      let x_1062 : vec2<f32> = vec2<f32>(x_1061.x, x_1061.y);
      let x_1064 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1062.x, x_1062.y, x_1064);
      let x_1072 : vec3<f32> = txVec1;
      let x_1074 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1072.xy, x_1072.z);
      u_xlat45 = x_1074;
      let x_1075 : i32 = u_xlati41;
      let x_1077 : f32 = x_150.x_AdditionalShadowParams[x_1075].x;
      u_xlat10.x = (1.0f + -(x_1077));
      let x_1081 : f32 = u_xlat45;
      let x_1082 : i32 = u_xlati41;
      let x_1084 : f32 = x_150.x_AdditionalShadowParams[x_1082].x;
      let x_1087 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1081 * x_1084) + x_1087);
      let x_1090 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1090);
      let x_1095 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1095 >= 1.0f);
      let x_1097 : bool = u_xlatb22;
      let x_1099 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1097 | x_1099);
      let x_1103 : bool = u_xlatb10.x;
      let x_1104 : f32 = u_xlat45;
      u_xlat45 = select(x_1104, 1.0f, x_1103);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1107 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1107) + 1.0f);
    let x_1111 : f32 = u_xlat1;
    let x_1113 : f32 = u_xlat10.x;
    let x_1115 : f32 = u_xlat45;
    u_xlat45 = ((x_1111 * x_1113) + x_1115);
    let x_1117 : f32 = u_xlat42;
    let x_1118 : f32 = u_xlat45;
    u_xlat42 = (x_1117 * x_1118);
    let x_1120 : vec3<f32> = u_xlat13;
    let x_1121 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1120, x_1121);
    let x_1123 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1123, 0.0f, 1.0f);
    let x_1125 : f32 = u_xlat42;
    let x_1126 : f32 = u_xlat45;
    u_xlat42 = (x_1125 * x_1126);
    let x_1128 : f32 = u_xlat42;
    let x_1130 : i32 = u_xlati41;
    let x_1132 : vec4<f32> = x_836.x_AdditionalLightsColor[x_1130];
    let x_1134 : vec3<f32> = (vec3<f32>(x_1128, x_1128, x_1128) * vec3<f32>(x_1132.x, x_1132.y, x_1132.z));
    let x_1135 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
    let x_1137 : vec3<f32> = u_xlat8;
    let x_1138 : f32 = u_xlat44;
    let x_1141 : vec3<f32> = u_xlat3;
    u_xlat8 = ((x_1137 * vec3<f32>(x_1138, x_1138, x_1138)) + x_1141);
    let x_1143 : vec3<f32> = u_xlat8;
    let x_1144 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1143, x_1144);
    let x_1146 : f32 = u_xlat41;
    u_xlat41 = max(x_1146, 1.17549435e-38f);
    let x_1148 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1148);
    let x_1150 : f32 = u_xlat41;
    let x_1152 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1150, x_1150, x_1150) * x_1152);
    let x_1154 : vec3<f32> = u_xlat13;
    let x_1155 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1154, x_1155);
    let x_1157 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1157, 0.0f, 1.0f);
    let x_1159 : vec3<f32> = u_xlat9;
    let x_1160 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1159, x_1160);
    let x_1162 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1162, 0.0f, 1.0f);
    let x_1164 : f32 = u_xlat41;
    let x_1165 : f32 = u_xlat41;
    u_xlat41 = (x_1164 * x_1165);
    let x_1167 : f32 = u_xlat41;
    let x_1169 : f32 = u_xlat7.x;
    u_xlat41 = ((x_1167 * x_1169) + 1.00001001358032226562f);
    let x_1172 : f32 = u_xlat42;
    let x_1173 : f32 = u_xlat42;
    u_xlat42 = (x_1172 * x_1173);
    let x_1175 : f32 = u_xlat41;
    let x_1176 : f32 = u_xlat41;
    u_xlat41 = (x_1175 * x_1176);
    let x_1178 : f32 = u_xlat42;
    u_xlat42 = max(x_1178, 0.10000000149011611938f);
    let x_1180 : f32 = u_xlat41;
    let x_1181 : f32 = u_xlat42;
    u_xlat41 = (x_1180 * x_1181);
    let x_1183 : f32 = u_xlat39;
    let x_1184 : f32 = u_xlat41;
    u_xlat41 = (x_1183 * x_1184);
    let x_1186 : f32 = u_xlat40;
    let x_1187 : f32 = u_xlat41;
    u_xlat41 = (x_1186 / x_1187);
    let x_1189 : vec4<f32> = u_xlat0;
    let x_1191 : f32 = u_xlat41;
    let x_1194 : vec3<f32> = u_xlat5;
    u_xlat8 = ((vec3<f32>(x_1189.x, x_1189.y, x_1189.z) * vec3<f32>(x_1191, x_1191, x_1191)) + x_1194);
    let x_1196 : vec3<f32> = u_xlat8;
    let x_1197 : vec4<f32> = u_xlat10;
    let x_1200 : vec3<f32> = u_xlat19;
    u_xlat19 = ((x_1196 * vec3<f32>(x_1197.x, x_1197.y, x_1197.z)) + x_1200);

    continuing {
      let x_1202 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1202 + bitcast<u32>(1i));
    }
  }
  let x_1204 : vec4<f32> = u_xlat6;
  let x_1206 : vec4<f32> = u_xlat2;
  let x_1209 : vec4<f32> = u_xlat4;
  let x_1211 : vec3<f32> = ((vec3<f32>(x_1204.x, x_1204.y, x_1204.z) * vec3<f32>(x_1206.x, x_1206.z, x_1206.w)) + vec3<f32>(x_1209.x, x_1209.y, x_1209.z));
  let x_1212 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1212.w);
  let x_1216 : vec3<f32> = u_xlat19;
  let x_1217 : vec4<f32> = u_xlat0;
  let x_1219 : vec3<f32> = (x_1216 + vec3<f32>(x_1217.x, x_1217.y, x_1217.z));
  let x_1220 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


