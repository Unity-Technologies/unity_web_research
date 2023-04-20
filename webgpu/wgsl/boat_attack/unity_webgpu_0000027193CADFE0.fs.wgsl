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

alias Arr_4 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_150 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat16 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb16 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_536 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_716 : UnityPerDraw;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_975 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat49 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu16 : u32;

var<private> u_xlatb47 : bool;

fn main_1() {
  var x_91 : f32;
  var x_104 : f32;
  var x_117 : f32;
  var txVec0 : vec3<f32>;
  var x_487 : f32;
  var x_620 : f32;
  var x_631 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1107 : f32;
  var x_1117 : f32;
  var txVec1 : vec3<f32>;
  var x_1547 : f32;
  var x_1560 : f32;
  var x_1618 : f32;
  var x_1629 : vec3<f32>;
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
  u_xlatb15 = (x_57 == 0.0f);
  let x_63 : vec3<f32> = vs_TEXCOORD7;
  let x_68 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_69 : vec3<f32> = (-(x_63) + x_68);
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat2;
  let x_75 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_73.x, x_73.y, x_73.z), vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_78 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_78);
  let x_80 : f32 = u_xlat29;
  let x_82 : vec4<f32> = u_xlat2;
  let x_84 : vec3<f32> = (vec3<f32>(x_80, x_80, x_80) * vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_89 : bool = u_xlatb15;
  if (x_89) {
    let x_95 : f32 = u_xlat2.x;
    x_91 = x_95;
  } else {
    let x_100 : f32 = x_29.unity_MatrixV[0i].z;
    x_91 = x_100;
  }
  let x_101 : f32 = x_91;
  u_xlat3.x = x_101;
  let x_103 : bool = u_xlatb15;
  if (x_103) {
    let x_109 : f32 = u_xlat2.y;
    x_104 = x_109;
  } else {
    let x_113 : f32 = x_29.unity_MatrixV[1i].z;
    x_104 = x_113;
  }
  let x_114 : f32 = x_104;
  u_xlat3.y = x_114;
  let x_116 : bool = u_xlatb15;
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
  u_xlat15.x = dot(x_130, x_131);
  let x_135 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_135);
  let x_138 : vec3<f32> = u_xlat15;
  let x_140 : vec3<f32> = vs_TEXCOORD3;
  u_xlat15 = (vec3<f32>(x_138.x, x_138.x, x_138.x) * x_140);
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
  u_xlat16 = (vec3<f32>(x_281.y, x_281.y, x_281.y) * vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : i32 = u_xlati2;
  let x_295 : i32 = u_xlati2;
  let x_298 : vec4<f32> = x_150.x_MainLightWorldToShadow[(x_293 / 4i)][(x_295 % 4i)];
  let x_300 : vec3<f32> = vs_TEXCOORD7;
  let x_303 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(x_300.x, x_300.x, x_300.x)) + x_303);
  let x_305 : i32 = u_xlati2;
  let x_308 : i32 = u_xlati2;
  let x_312 : vec4<f32> = x_150.x_MainLightWorldToShadow[((x_305 + 2i) / 4i)][((x_308 + 2i) % 4i)];
  let x_314 : vec3<f32> = vs_TEXCOORD7;
  let x_317 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.z, x_314.z, x_314.z)) + x_317);
  let x_319 : vec3<f32> = u_xlat16;
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
  let x_360 : vec3<f32> = u_xlat15;
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_360, vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : f32 = u_xlat44;
  u_xlat44 = (x_364 + 0.5f);
  let x_367 : f32 = u_xlat44;
  let x_369 : vec3<f32> = u_xlat5;
  let x_370 : vec3<f32> = (vec3<f32>(x_367, x_367, x_367) * x_369);
  let x_371 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_374 : f32 = u_xlat4.w;
  u_xlat44 = max(x_374, 0.00009999999747378752f);
  let x_377 : vec4<f32> = u_xlat4;
  let x_379 : f32 = u_xlat44;
  let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) / vec3<f32>(x_379, x_379, x_379));
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : f32 = u_xlat1;
  u_xlat44 = ((-(x_384) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_390 : f32 = u_xlat44;
  u_xlat45 = (-(x_390) + 1.0f);
  let x_393 : vec4<f32> = u_xlat0;
  let x_395 : f32 = u_xlat44;
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
  u_xlat44 = (x_419 * x_420);
  let x_422 : f32 = u_xlat44;
  u_xlat44 = max(x_422, 0.0078125f);
  let x_426 : f32 = u_xlat44;
  let x_427 : f32 = u_xlat44;
  u_xlat46 = (x_426 * x_427);
  let x_431 : f32 = u_xlat0.w;
  let x_432 : f32 = u_xlat45;
  u_xlat42 = (x_431 + x_432);
  let x_434 : f32 = u_xlat42;
  u_xlat42 = clamp(x_434, 0.0f, 1.0f);
  let x_436 : f32 = u_xlat44;
  u_xlat45 = ((x_436 * 4.0f) + 2.0f);
  let x_441 : vec4<f32> = u_xlat2;
  let x_442 : vec2<f32> = vec2<f32>(x_441.x, x_441.y);
  let x_444 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_442.x, x_442.y, x_444);
  let x_456 : vec3<f32> = txVec0;
  let x_458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_456.xy, x_456.z);
  u_xlat2.x = x_458;
  let x_462 : f32 = x_150.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_462) + 1.0f);
  let x_467 : f32 = u_xlat2.x;
  let x_469 : f32 = x_150.x_MainLightShadowParams.x;
  let x_472 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_467 * x_469) + x_472);
  let x_477 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_477);
  let x_481 : f32 = u_xlat2.z;
  u_xlatb30 = (x_481 >= 1.0f);
  let x_483 : bool = u_xlatb30;
  let x_484 : bool = u_xlatb16;
  u_xlatb16 = (x_483 | x_484);
  let x_486 : bool = u_xlatb16;
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
  u_xlat16.x = dot(vec3<f32>(x_502.x, x_502.y, x_502.z), vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_510 : f32 = u_xlat16.x;
  let x_512 : f32 = x_150.x_MainLightShadowParams.z;
  let x_515 : f32 = x_150.x_MainLightShadowParams.w;
  u_xlat30 = ((x_510 * x_512) + x_515);
  let x_517 : f32 = u_xlat30;
  u_xlat30 = clamp(x_517, 0.0f, 1.0f);
  let x_521 : f32 = u_xlat2.x;
  u_xlat47 = (-(x_521) + 1.0f);
  let x_524 : f32 = u_xlat30;
  let x_525 : f32 = u_xlat47;
  let x_528 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_524 * x_525) + x_528);
  let x_538 : f32 = x_536.x_MainLightCookieTextureFormat;
  u_xlatb30 = !((x_538 == -1.0f));
  let x_540 : bool = u_xlatb30;
  if (x_540) {
    let x_543 : vec3<f32> = vs_TEXCOORD7;
    let x_546 : vec4<f32> = x_536.x_MainLightWorldToLight[1i];
    let x_548 : vec2<f32> = (vec2<f32>(x_543.y, x_543.y) * vec2<f32>(x_546.x, x_546.y));
    let x_549 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
    let x_552 : vec4<f32> = x_536.x_MainLightWorldToLight[0i];
    let x_554 : vec3<f32> = vs_TEXCOORD7;
    let x_557 : vec4<f32> = u_xlat6;
    let x_559 : vec2<f32> = ((vec2<f32>(x_552.x, x_552.y) * vec2<f32>(x_554.x, x_554.x)) + vec2<f32>(x_557.x, x_557.y));
    let x_560 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
    let x_563 : vec4<f32> = x_536.x_MainLightWorldToLight[2i];
    let x_565 : vec3<f32> = vs_TEXCOORD7;
    let x_568 : vec4<f32> = u_xlat6;
    let x_570 : vec2<f32> = ((vec2<f32>(x_563.x, x_563.y) * vec2<f32>(x_565.z, x_565.z)) + vec2<f32>(x_568.x, x_568.y));
    let x_571 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
    let x_573 : vec4<f32> = u_xlat6;
    let x_576 : vec4<f32> = x_536.x_MainLightWorldToLight[3i];
    let x_578 : vec2<f32> = (vec2<f32>(x_573.x, x_573.y) + vec2<f32>(x_576.x, x_576.y));
    let x_579 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_578.x, x_578.y, x_579.z, x_579.w);
    let x_581 : vec4<f32> = u_xlat6;
    let x_585 : vec2<f32> = ((vec2<f32>(x_581.x, x_581.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_586 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_585.x, x_585.y, x_586.z, x_586.w);
    let x_593 : vec4<f32> = u_xlat6;
    let x_596 : f32 = x_29.x_GlobalMipBias.x;
    let x_597 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_593.x, x_593.y), x_596);
    u_xlat6 = x_597;
    let x_602 : f32 = x_536.x_MainLightCookieTextureFormat;
    let x_604 : f32 = x_536.x_MainLightCookieTextureFormat;
    let x_606 : f32 = x_536.x_MainLightCookieTextureFormat;
    let x_608 : f32 = x_536.x_MainLightCookieTextureFormat;
    let x_609 : vec4<f32> = vec4<f32>(x_602, x_604, x_606, x_608);
    let x_616 : vec4<bool> = (vec4<f32>(x_609.x, x_609.y, x_609.z, x_609.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_616.x, x_616.y);
    let x_619 : bool = u_xlatb7.y;
    if (x_619) {
      let x_624 : f32 = u_xlat6.w;
      x_620 = x_624;
    } else {
      let x_627 : f32 = u_xlat6.x;
      x_620 = x_627;
    }
    let x_628 : f32 = x_620;
    u_xlat30 = x_628;
    let x_630 : bool = u_xlatb7.x;
    if (x_630) {
      let x_634 : vec4<f32> = u_xlat6;
      x_631 = vec3<f32>(x_634.x, x_634.y, x_634.z);
    } else {
      let x_637 : f32 = u_xlat30;
      x_631 = vec3<f32>(x_637, x_637, x_637);
    }
    let x_639 : vec3<f32> = x_631;
    let x_640 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_646 : vec4<f32> = u_xlat6;
  let x_649 : vec4<f32> = x_29.x_MainLightColor;
  let x_651 : vec3<f32> = (vec3<f32>(x_646.x, x_646.y, x_646.z) * vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_652 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec3<f32> = u_xlat3;
  let x_656 : vec3<f32> = u_xlat15;
  u_xlat30 = dot(-(x_654), x_656);
  let x_658 : f32 = u_xlat30;
  let x_659 : f32 = u_xlat30;
  u_xlat30 = (x_658 + x_659);
  let x_662 : vec3<f32> = u_xlat15;
  let x_663 : f32 = u_xlat30;
  let x_667 : vec3<f32> = u_xlat3;
  let x_669 : vec3<f32> = ((x_662 * -(vec3<f32>(x_663, x_663, x_663))) + -(x_667));
  let x_670 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_672 : vec3<f32> = u_xlat15;
  let x_673 : vec3<f32> = u_xlat3;
  u_xlat30 = dot(x_672, x_673);
  let x_675 : f32 = u_xlat30;
  u_xlat30 = clamp(x_675, 0.0f, 1.0f);
  let x_677 : f32 = u_xlat30;
  u_xlat30 = (-(x_677) + 1.0f);
  let x_680 : f32 = u_xlat30;
  let x_681 : f32 = u_xlat30;
  u_xlat30 = (x_680 * x_681);
  let x_683 : f32 = u_xlat30;
  let x_684 : f32 = u_xlat30;
  u_xlat30 = (x_683 * x_684);
  let x_686 : f32 = u_xlat1;
  u_xlat47 = ((-(x_686) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_692 : f32 = u_xlat1;
  let x_693 : f32 = u_xlat47;
  u_xlat1 = (x_692 * x_693);
  let x_695 : f32 = u_xlat1;
  u_xlat1 = (x_695 * 6.0f);
  let x_706 : vec4<f32> = u_xlat7;
  let x_708 : f32 = u_xlat1;
  let x_709 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_706.x, x_706.y, x_706.z), x_708);
  u_xlat7 = x_709;
  let x_711 : f32 = u_xlat7.w;
  u_xlat1 = (x_711 + -1.0f);
  let x_718 : f32 = x_716.unity_SpecCube0_HDR.w;
  let x_719 : f32 = u_xlat1;
  u_xlat1 = ((x_718 * x_719) + 1.0f);
  let x_722 : f32 = u_xlat1;
  u_xlat1 = max(x_722, 0.0f);
  let x_724 : f32 = u_xlat1;
  u_xlat1 = log2(x_724);
  let x_726 : f32 = u_xlat1;
  let x_728 : f32 = x_716.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_726 * x_728);
  let x_730 : f32 = u_xlat1;
  u_xlat1 = exp2(x_730);
  let x_732 : f32 = u_xlat1;
  let x_734 : f32 = x_716.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_732 * x_734);
  let x_736 : vec4<f32> = u_xlat7;
  let x_738 : f32 = u_xlat1;
  let x_740 : vec3<f32> = (vec3<f32>(x_736.x, x_736.y, x_736.z) * vec3<f32>(x_738, x_738, x_738));
  let x_741 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_745 : f32 = u_xlat44;
  let x_747 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_745, x_745) * vec2<f32>(x_747, x_747)) + vec2<f32>(-1.0f, 1.0f));
  let x_753 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_753);
  let x_756 : vec4<f32> = u_xlat0;
  let x_759 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_756.x, x_756.y, x_756.z)) + vec3<f32>(x_759, x_759, x_759));
  let x_762 : f32 = u_xlat30;
  let x_764 : vec3<f32> = u_xlat22;
  let x_766 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_762, x_762, x_762) * x_764) + vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : f32 = u_xlat1;
  let x_771 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_769, x_769, x_769) * x_771);
  let x_773 : vec4<f32> = u_xlat7;
  let x_775 : vec3<f32> = u_xlat22;
  let x_776 : vec3<f32> = (vec3<f32>(x_773.x, x_773.y, x_773.z) * x_775);
  let x_777 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_779 : vec4<f32> = u_xlat4;
  let x_781 : vec3<f32> = u_xlat5;
  let x_783 : vec4<f32> = u_xlat7;
  let x_785 : vec3<f32> = ((vec3<f32>(x_779.x, x_779.y, x_779.z) * x_781) + vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_789 : f32 = u_xlat2.x;
  let x_791 : f32 = x_716.unity_LightData.z;
  u_xlat42 = (x_789 * x_791);
  let x_793 : vec3<f32> = u_xlat15;
  let x_795 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_793, vec3<f32>(x_795.x, x_795.y, x_795.z));
  let x_798 : f32 = u_xlat1;
  u_xlat1 = clamp(x_798, 0.0f, 1.0f);
  let x_800 : f32 = u_xlat42;
  let x_801 : f32 = u_xlat1;
  u_xlat42 = (x_800 * x_801);
  let x_803 : f32 = u_xlat42;
  let x_805 : vec4<f32> = u_xlat6;
  let x_807 : vec3<f32> = (vec3<f32>(x_803, x_803, x_803) * vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_807.x, x_808.y, x_807.y, x_807.z);
  let x_810 : vec3<f32> = u_xlat3;
  let x_812 : vec4<f32> = x_29.x_MainLightPosition;
  let x_814 : vec3<f32> = (x_810 + vec3<f32>(x_812.x, x_812.y, x_812.z));
  let x_815 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : vec4<f32> = u_xlat6;
  let x_819 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_817.x, x_817.y, x_817.z), vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_822 : f32 = u_xlat42;
  u_xlat42 = max(x_822, 1.17549435e-38f);
  let x_825 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_825);
  let x_827 : f32 = u_xlat42;
  let x_829 : vec4<f32> = u_xlat6;
  let x_831 : vec3<f32> = (vec3<f32>(x_827, x_827, x_827) * vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_834 : vec3<f32> = u_xlat15;
  let x_835 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_834, vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_838 : f32 = u_xlat42;
  u_xlat42 = clamp(x_838, 0.0f, 1.0f);
  let x_841 : vec4<f32> = x_29.x_MainLightPosition;
  let x_843 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_841.x, x_841.y, x_841.z), vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : f32 = u_xlat1;
  u_xlat1 = clamp(x_846, 0.0f, 1.0f);
  let x_848 : f32 = u_xlat42;
  let x_849 : f32 = u_xlat42;
  u_xlat42 = (x_848 * x_849);
  let x_851 : f32 = u_xlat42;
  let x_853 : f32 = u_xlat8.x;
  u_xlat42 = ((x_851 * x_853) + 1.00001001358032226562f);
  let x_857 : f32 = u_xlat1;
  let x_858 : f32 = u_xlat1;
  u_xlat1 = (x_857 * x_858);
  let x_860 : f32 = u_xlat42;
  let x_861 : f32 = u_xlat42;
  u_xlat42 = (x_860 * x_861);
  let x_863 : f32 = u_xlat1;
  u_xlat1 = max(x_863, 0.10000000149011611938f);
  let x_866 : f32 = u_xlat42;
  let x_867 : f32 = u_xlat1;
  u_xlat42 = (x_866 * x_867);
  let x_869 : f32 = u_xlat45;
  let x_870 : f32 = u_xlat42;
  u_xlat42 = (x_869 * x_870);
  let x_872 : f32 = u_xlat46;
  let x_873 : f32 = u_xlat42;
  u_xlat42 = (x_872 / x_873);
  let x_875 : vec4<f32> = u_xlat0;
  let x_877 : f32 = u_xlat42;
  let x_880 : vec3<f32> = u_xlat5;
  let x_881 : vec3<f32> = ((vec3<f32>(x_875.x, x_875.y, x_875.z) * vec3<f32>(x_877, x_877, x_877)) + x_880);
  let x_882 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_885 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_887 : f32 = x_716.unity_LightData.y;
  u_xlat42 = min(x_885, x_887);
  let x_890 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_890));
  let x_894 : f32 = u_xlat16.x;
  let x_897 : f32 = x_150.x_AdditionalShadowFadeParams.x;
  let x_900 : f32 = x_150.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_894 * x_897) + x_900);
  let x_902 : f32 = u_xlat1;
  u_xlat1 = clamp(x_902, 0.0f, 1.0f);
  let x_905 : f32 = x_536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_907 : f32 = x_536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_909 : f32 = x_536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_911 : f32 = x_536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_912 : vec4<f32> = vec4<f32>(x_905, x_907, x_909, x_911);
  let x_918 : vec4<bool> = (vec4<f32>(x_912.x, x_912.y, x_912.z, x_912.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_918.x, x_918.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_930 : u32 = u_xlatu_loop_1;
    let x_931 : u32 = u_xlatu42;
    if ((x_930 < x_931)) {
    } else {
      break;
    }
    let x_934 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_934 >> 2u);
    let x_937 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_937 & 3u));
    let x_940 : u32 = u_xlatu47;
    let x_943 : vec4<f32> = x_716.unity_LightIndices[bitcast<i32>(x_940)];
    let x_953 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_958 : vec4<u32> = indexable[x_953];
    u_xlat47 = dot(x_943, bitcast<vec4<f32>>(x_958));
    let x_962 : f32 = u_xlat47;
    u_xlati47 = i32(x_962);
    let x_965 : vec3<f32> = vs_TEXCOORD7;
    let x_976 : i32 = u_xlati47;
    let x_978 : vec4<f32> = x_975.x_AdditionalLightsPosition[x_976];
    let x_981 : i32 = u_xlati47;
    let x_983 : vec4<f32> = x_975.x_AdditionalLightsPosition[x_981];
    u_xlat9 = ((-(x_965) * vec3<f32>(x_978.w, x_978.w, x_978.w)) + vec3<f32>(x_983.x, x_983.y, x_983.z));
    let x_987 : vec3<f32> = u_xlat9;
    let x_988 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_987, x_988);
    let x_990 : f32 = u_xlat48;
    u_xlat48 = max(x_990, 0.00006103515625f);
    let x_994 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_994);
    let x_997 : f32 = u_xlat35;
    let x_999 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_997, x_997, x_997) * x_999);
    let x_1002 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1002);
    let x_1004 : f32 = u_xlat48;
    let x_1005 : i32 = u_xlati47;
    let x_1007 : f32 = x_975.x_AdditionalLightsAttenuation[x_1005].x;
    u_xlat48 = (x_1004 * x_1007);
    let x_1009 : f32 = u_xlat48;
    let x_1011 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1009) * x_1011) + 1.0f);
    let x_1014 : f32 = u_xlat48;
    u_xlat48 = max(x_1014, 0.0f);
    let x_1016 : f32 = u_xlat48;
    let x_1017 : f32 = u_xlat48;
    u_xlat48 = (x_1016 * x_1017);
    let x_1019 : f32 = u_xlat48;
    let x_1020 : f32 = u_xlat49;
    u_xlat48 = (x_1019 * x_1020);
    let x_1022 : i32 = u_xlati47;
    let x_1024 : vec4<f32> = x_975.x_AdditionalLightsSpotDir[x_1022];
    let x_1026 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1024.x, x_1024.y, x_1024.z), x_1026);
    let x_1028 : f32 = u_xlat49;
    let x_1029 : i32 = u_xlati47;
    let x_1031 : f32 = x_975.x_AdditionalLightsAttenuation[x_1029].z;
    let x_1033 : i32 = u_xlati47;
    let x_1035 : f32 = x_975.x_AdditionalLightsAttenuation[x_1033].w;
    u_xlat49 = ((x_1028 * x_1031) + x_1035);
    let x_1037 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1037, 0.0f, 1.0f);
    let x_1039 : f32 = u_xlat49;
    let x_1040 : f32 = u_xlat49;
    u_xlat49 = (x_1039 * x_1040);
    let x_1042 : f32 = u_xlat48;
    let x_1043 : f32 = u_xlat49;
    u_xlat48 = (x_1042 * x_1043);
    let x_1047 : i32 = u_xlati47;
    let x_1049 : f32 = x_150.x_AdditionalShadowParams[x_1047].w;
    u_xlati49 = i32(x_1049);
    let x_1052 : i32 = u_xlati49;
    u_xlatb51 = (x_1052 >= 0i);
    let x_1054 : bool = u_xlatb51;
    if (x_1054) {
      let x_1058 : i32 = u_xlati47;
      let x_1060 : f32 = x_150.x_AdditionalShadowParams[x_1058].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1060, x_1060, x_1060, x_1060))));
      let x_1064 : bool = u_xlatb51;
      if (x_1064) {
        let x_1068 : vec3<f32> = u_xlat10;
        let x_1071 : vec3<f32> = u_xlat10;
        let x_1074 : vec4<bool> = (abs(vec4<f32>(x_1068.z, x_1068.z, x_1068.y, x_1068.z)) >= abs(vec4<f32>(x_1071.x, x_1071.y, x_1071.x, x_1071.x)));
        let x_1076 : vec3<bool> = vec3<bool>(x_1074.x, x_1074.y, x_1074.z);
        let x_1077 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
        let x_1080 : bool = u_xlatb11.y;
        let x_1082 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1080 & x_1082);
        let x_1084 : vec3<f32> = u_xlat10;
        let x_1087 : vec4<bool> = (-(vec4<f32>(x_1084.z, x_1084.y, x_1084.z, x_1084.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1088 : vec3<bool> = vec3<bool>(x_1087.x, x_1087.y, x_1087.w);
        let x_1089 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1088.x, x_1088.y, x_1089.z, x_1088.z);
        let x_1093 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1093);
        let x_1098 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1098);
        let x_1103 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1103);
        let x_1106 : bool = u_xlatb11.z;
        if (x_1106) {
          let x_1111 : f32 = u_xlat11.y;
          x_1107 = x_1111;
        } else {
          let x_1113 : f32 = u_xlat52;
          x_1107 = x_1113;
        }
        let x_1114 : f32 = x_1107;
        u_xlat52 = x_1114;
        let x_1116 : bool = u_xlatb51;
        if (x_1116) {
          let x_1121 : f32 = u_xlat11.x;
          x_1117 = x_1121;
        } else {
          let x_1123 : f32 = u_xlat52;
          x_1117 = x_1123;
        }
        let x_1124 : f32 = x_1117;
        u_xlat51 = x_1124;
        let x_1125 : i32 = u_xlati47;
        let x_1127 : f32 = x_150.x_AdditionalShadowParams[x_1125].w;
        u_xlat52 = trunc(x_1127);
        let x_1129 : f32 = u_xlat51;
        let x_1130 : f32 = u_xlat52;
        u_xlat51 = (x_1129 + x_1130);
        let x_1132 : f32 = u_xlat51;
        u_xlati49 = i32(x_1132);
      }
      let x_1134 : i32 = u_xlati49;
      u_xlati49 = (x_1134 << bitcast<u32>(2i));
      let x_1136 : vec3<f32> = vs_TEXCOORD7;
      let x_1139 : i32 = u_xlati49;
      let x_1142 : i32 = u_xlati49;
      let x_1146 : vec4<f32> = x_150.x_AdditionalLightsWorldToShadow[((x_1139 + 1i) / 4i)][((x_1142 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1136.y, x_1136.y, x_1136.y, x_1136.y) * x_1146);
      let x_1148 : i32 = u_xlati49;
      let x_1150 : i32 = u_xlati49;
      let x_1153 : vec4<f32> = x_150.x_AdditionalLightsWorldToShadow[(x_1148 / 4i)][(x_1150 % 4i)];
      let x_1154 : vec3<f32> = vs_TEXCOORD7;
      let x_1157 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1153 * vec4<f32>(x_1154.x, x_1154.x, x_1154.x, x_1154.x)) + x_1157);
      let x_1159 : i32 = u_xlati49;
      let x_1162 : i32 = u_xlati49;
      let x_1166 : vec4<f32> = x_150.x_AdditionalLightsWorldToShadow[((x_1159 + 2i) / 4i)][((x_1162 + 2i) % 4i)];
      let x_1167 : vec3<f32> = vs_TEXCOORD7;
      let x_1170 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1166 * vec4<f32>(x_1167.z, x_1167.z, x_1167.z, x_1167.z)) + x_1170);
      let x_1172 : vec4<f32> = u_xlat11;
      let x_1173 : i32 = u_xlati49;
      let x_1176 : i32 = u_xlati49;
      let x_1180 : vec4<f32> = x_150.x_AdditionalLightsWorldToShadow[((x_1173 + 3i) / 4i)][((x_1176 + 3i) % 4i)];
      u_xlat11 = (x_1172 + x_1180);
      let x_1182 : vec4<f32> = u_xlat11;
      let x_1184 : vec4<f32> = u_xlat11;
      let x_1186 : vec3<f32> = (vec3<f32>(x_1182.x, x_1182.y, x_1182.z) / vec3<f32>(x_1184.w, x_1184.w, x_1184.w));
      let x_1187 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
      let x_1190 : vec4<f32> = u_xlat11;
      let x_1191 : vec2<f32> = vec2<f32>(x_1190.x, x_1190.y);
      let x_1193 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1191.x, x_1191.y, x_1193);
      let x_1201 : vec3<f32> = txVec1;
      let x_1203 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1201.xy, x_1201.z);
      u_xlat49 = x_1203;
      let x_1204 : i32 = u_xlati47;
      let x_1206 : f32 = x_150.x_AdditionalShadowParams[x_1204].x;
      u_xlat51 = (1.0f + -(x_1206));
      let x_1209 : f32 = u_xlat49;
      let x_1210 : i32 = u_xlati47;
      let x_1212 : f32 = x_150.x_AdditionalShadowParams[x_1210].x;
      let x_1214 : f32 = u_xlat51;
      u_xlat49 = ((x_1209 * x_1212) + x_1214);
      let x_1217 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1217);
      let x_1221 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1221 >= 1.0f);
      let x_1223 : bool = u_xlatb51;
      let x_1224 : bool = u_xlatb52;
      u_xlatb51 = (x_1223 | x_1224);
      let x_1226 : bool = u_xlatb51;
      let x_1227 : f32 = u_xlat49;
      u_xlat49 = select(x_1227, 1.0f, x_1226);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1230 : f32 = u_xlat49;
    u_xlat51 = (-(x_1230) + 1.0f);
    let x_1233 : f32 = u_xlat1;
    let x_1234 : f32 = u_xlat51;
    let x_1236 : f32 = u_xlat49;
    u_xlat49 = ((x_1233 * x_1234) + x_1236);
    let x_1239 : i32 = u_xlati47;
    u_xlati51 = (1i << bitcast<u32>((x_1239 & 31i)));
    let x_1243 : i32 = u_xlati51;
    let x_1246 : f32 = x_536.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1243) & bitcast<u32>(x_1246)));
    let x_1250 : i32 = u_xlati51;
    if ((x_1250 != 0i)) {
      let x_1254 : i32 = u_xlati47;
      let x_1256 : f32 = x_536.x_AdditionalLightsLightTypes[x_1254].el;
      u_xlati51 = i32(x_1256);
      let x_1259 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1259 != 0i));
      let x_1263 : i32 = u_xlati47;
      u_xlati11 = (x_1263 << bitcast<u32>(2i));
      let x_1265 : i32 = u_xlati52;
      if ((x_1265 != 0i)) {
        let x_1270 : vec3<f32> = vs_TEXCOORD7;
        let x_1272 : i32 = u_xlati11;
        let x_1275 : i32 = u_xlati11;
        let x_1279 : vec4<f32> = x_536.x_AdditionalLightsWorldToLights[((x_1272 + 1i) / 4i)][((x_1275 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1270.y, x_1270.y, x_1270.y) * vec3<f32>(x_1279.x, x_1279.y, x_1279.w));
        let x_1282 : i32 = u_xlati11;
        let x_1284 : i32 = u_xlati11;
        let x_1287 : vec4<f32> = x_536.x_AdditionalLightsWorldToLights[(x_1282 / 4i)][(x_1284 % 4i)];
        let x_1289 : vec3<f32> = vs_TEXCOORD7;
        let x_1292 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1287.x, x_1287.y, x_1287.w) * vec3<f32>(x_1289.x, x_1289.x, x_1289.x)) + x_1292);
        let x_1294 : i32 = u_xlati11;
        let x_1297 : i32 = u_xlati11;
        let x_1301 : vec4<f32> = x_536.x_AdditionalLightsWorldToLights[((x_1294 + 2i) / 4i)][((x_1297 + 2i) % 4i)];
        let x_1303 : vec3<f32> = vs_TEXCOORD7;
        let x_1306 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1301.x, x_1301.y, x_1301.w) * vec3<f32>(x_1303.z, x_1303.z, x_1303.z)) + x_1306);
        let x_1308 : vec3<f32> = u_xlat25;
        let x_1309 : i32 = u_xlati11;
        let x_1312 : i32 = u_xlati11;
        let x_1316 : vec4<f32> = x_536.x_AdditionalLightsWorldToLights[((x_1309 + 3i) / 4i)][((x_1312 + 3i) % 4i)];
        u_xlat25 = (x_1308 + vec3<f32>(x_1316.x, x_1316.y, x_1316.w));
        let x_1319 : vec3<f32> = u_xlat25;
        let x_1321 : vec3<f32> = u_xlat25;
        let x_1323 : vec2<f32> = (vec2<f32>(x_1319.x, x_1319.y) / vec2<f32>(x_1321.z, x_1321.z));
        let x_1324 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1323.x, x_1323.y, x_1324.z);
        let x_1326 : vec3<f32> = u_xlat25;
        let x_1329 : vec2<f32> = ((vec2<f32>(x_1326.x, x_1326.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1330 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1329.x, x_1329.y, x_1330.z);
        let x_1332 : vec3<f32> = u_xlat25;
        let x_1336 : vec2<f32> = clamp(vec2<f32>(x_1332.x, x_1332.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1337 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1336.x, x_1336.y, x_1337.z);
        let x_1339 : i32 = u_xlati47;
        let x_1341 : vec4<f32> = x_536.x_AdditionalLightsCookieAtlasUVRects[x_1339];
        let x_1343 : vec3<f32> = u_xlat25;
        let x_1346 : i32 = u_xlati47;
        let x_1348 : vec4<f32> = x_536.x_AdditionalLightsCookieAtlasUVRects[x_1346];
        let x_1350 : vec2<f32> = ((vec2<f32>(x_1341.x, x_1341.y) * vec2<f32>(x_1343.x, x_1343.y)) + vec2<f32>(x_1348.z, x_1348.w));
        let x_1351 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1350.x, x_1350.y, x_1351.z);
      } else {
        let x_1354 : i32 = u_xlati51;
        u_xlatb51 = (x_1354 == 1i);
        let x_1356 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1356);
        let x_1358 : i32 = u_xlati51;
        if ((x_1358 != 0i)) {
          let x_1363 : vec3<f32> = vs_TEXCOORD7;
          let x_1365 : i32 = u_xlati11;
          let x_1368 : i32 = u_xlati11;
          let x_1372 : vec4<f32> = x_536.x_AdditionalLightsWorldToLights[((x_1365 + 1i) / 4i)][((x_1368 + 1i) % 4i)];
          let x_1374 : vec2<f32> = (vec2<f32>(x_1363.y, x_1363.y) * vec2<f32>(x_1372.x, x_1372.y));
          let x_1375 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1374.x, x_1374.y, x_1375.z, x_1375.w);
          let x_1377 : i32 = u_xlati11;
          let x_1379 : i32 = u_xlati11;
          let x_1382 : vec4<f32> = x_536.x_AdditionalLightsWorldToLights[(x_1377 / 4i)][(x_1379 % 4i)];
          let x_1384 : vec3<f32> = vs_TEXCOORD7;
          let x_1387 : vec4<f32> = u_xlat12;
          let x_1389 : vec2<f32> = ((vec2<f32>(x_1382.x, x_1382.y) * vec2<f32>(x_1384.x, x_1384.x)) + vec2<f32>(x_1387.x, x_1387.y));
          let x_1390 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1389.x, x_1389.y, x_1390.z, x_1390.w);
          let x_1392 : i32 = u_xlati11;
          let x_1395 : i32 = u_xlati11;
          let x_1399 : vec4<f32> = x_536.x_AdditionalLightsWorldToLights[((x_1392 + 2i) / 4i)][((x_1395 + 2i) % 4i)];
          let x_1401 : vec3<f32> = vs_TEXCOORD7;
          let x_1404 : vec4<f32> = u_xlat12;
          let x_1406 : vec2<f32> = ((vec2<f32>(x_1399.x, x_1399.y) * vec2<f32>(x_1401.z, x_1401.z)) + vec2<f32>(x_1404.x, x_1404.y));
          let x_1407 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1406.x, x_1406.y, x_1407.z, x_1407.w);
          let x_1409 : vec4<f32> = u_xlat12;
          let x_1411 : i32 = u_xlati11;
          let x_1414 : i32 = u_xlati11;
          let x_1418 : vec4<f32> = x_536.x_AdditionalLightsWorldToLights[((x_1411 + 3i) / 4i)][((x_1414 + 3i) % 4i)];
          let x_1420 : vec2<f32> = (vec2<f32>(x_1409.x, x_1409.y) + vec2<f32>(x_1418.x, x_1418.y));
          let x_1421 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1420.x, x_1420.y, x_1421.z, x_1421.w);
          let x_1423 : vec4<f32> = u_xlat12;
          let x_1426 : vec2<f32> = ((vec2<f32>(x_1423.x, x_1423.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1427 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1426.x, x_1426.y, x_1427.z, x_1427.w);
          let x_1429 : vec4<f32> = u_xlat12;
          let x_1431 : vec2<f32> = fract(vec2<f32>(x_1429.x, x_1429.y));
          let x_1432 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1431.x, x_1431.y, x_1432.z, x_1432.w);
          let x_1434 : i32 = u_xlati47;
          let x_1436 : vec4<f32> = x_536.x_AdditionalLightsCookieAtlasUVRects[x_1434];
          let x_1438 : vec4<f32> = u_xlat12;
          let x_1441 : i32 = u_xlati47;
          let x_1443 : vec4<f32> = x_536.x_AdditionalLightsCookieAtlasUVRects[x_1441];
          let x_1445 : vec2<f32> = ((vec2<f32>(x_1436.x, x_1436.y) * vec2<f32>(x_1438.x, x_1438.y)) + vec2<f32>(x_1443.z, x_1443.w));
          let x_1446 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1445.x, x_1445.y, x_1446.z);
        } else {
          let x_1449 : vec3<f32> = vs_TEXCOORD7;
          let x_1451 : i32 = u_xlati11;
          let x_1454 : i32 = u_xlati11;
          let x_1458 : vec4<f32> = x_536.x_AdditionalLightsWorldToLights[((x_1451 + 1i) / 4i)][((x_1454 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1449.y, x_1449.y, x_1449.y, x_1449.y) * x_1458);
          let x_1460 : i32 = u_xlati11;
          let x_1462 : i32 = u_xlati11;
          let x_1465 : vec4<f32> = x_536.x_AdditionalLightsWorldToLights[(x_1460 / 4i)][(x_1462 % 4i)];
          let x_1466 : vec3<f32> = vs_TEXCOORD7;
          let x_1469 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1465 * vec4<f32>(x_1466.x, x_1466.x, x_1466.x, x_1466.x)) + x_1469);
          let x_1471 : i32 = u_xlati11;
          let x_1474 : i32 = u_xlati11;
          let x_1478 : vec4<f32> = x_536.x_AdditionalLightsWorldToLights[((x_1471 + 2i) / 4i)][((x_1474 + 2i) % 4i)];
          let x_1479 : vec3<f32> = vs_TEXCOORD7;
          let x_1482 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1478 * vec4<f32>(x_1479.z, x_1479.z, x_1479.z, x_1479.z)) + x_1482);
          let x_1484 : vec4<f32> = u_xlat12;
          let x_1485 : i32 = u_xlati11;
          let x_1488 : i32 = u_xlati11;
          let x_1492 : vec4<f32> = x_536.x_AdditionalLightsWorldToLights[((x_1485 + 3i) / 4i)][((x_1488 + 3i) % 4i)];
          u_xlat12 = (x_1484 + x_1492);
          let x_1494 : vec4<f32> = u_xlat12;
          let x_1496 : vec4<f32> = u_xlat12;
          let x_1498 : vec3<f32> = (vec3<f32>(x_1494.x, x_1494.y, x_1494.z) / vec3<f32>(x_1496.w, x_1496.w, x_1496.w));
          let x_1499 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1498.x, x_1498.y, x_1498.z, x_1499.w);
          let x_1501 : vec4<f32> = u_xlat12;
          let x_1503 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1501.x, x_1501.y, x_1501.z), vec3<f32>(x_1503.x, x_1503.y, x_1503.z));
          let x_1506 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1506);
          let x_1508 : f32 = u_xlat51;
          let x_1510 : vec4<f32> = u_xlat12;
          let x_1512 : vec3<f32> = (vec3<f32>(x_1508, x_1508, x_1508) * vec3<f32>(x_1510.x, x_1510.y, x_1510.z));
          let x_1513 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1512.x, x_1512.y, x_1512.z, x_1513.w);
          let x_1515 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1515.x, x_1515.y, x_1515.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1520 : f32 = u_xlat51;
          u_xlat51 = max(x_1520, 0.00000099999999747524f);
          let x_1523 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1523);
          let x_1526 : f32 = u_xlat51;
          let x_1528 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1526, x_1526, x_1526) * vec3<f32>(x_1528.z, x_1528.x, x_1528.y));
          let x_1532 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1532);
          let x_1536 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1536, 0.0f, 1.0f);
          let x_1539 : vec3<f32> = u_xlat13;
          let x_1541 : vec4<bool> = (vec4<f32>(x_1539.y, x_1539.y, x_1539.y, x_1539.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1542 : vec2<bool> = vec2<bool>(x_1541.x, x_1541.w);
          let x_1543 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1542.x, x_1543.y, x_1543.z, x_1542.y);
          let x_1546 : bool = u_xlatb11.x;
          if (x_1546) {
            let x_1551 : f32 = u_xlat13.x;
            x_1547 = x_1551;
          } else {
            let x_1554 : f32 = u_xlat13.x;
            x_1547 = -(x_1554);
          }
          let x_1556 : f32 = x_1547;
          u_xlat11.x = x_1556;
          let x_1559 : bool = u_xlatb11.w;
          if (x_1559) {
            let x_1564 : f32 = u_xlat13.x;
            x_1560 = x_1564;
          } else {
            let x_1567 : f32 = u_xlat13.x;
            x_1560 = -(x_1567);
          }
          let x_1569 : f32 = x_1560;
          u_xlat11.w = x_1569;
          let x_1571 : vec4<f32> = u_xlat12;
          let x_1573 : f32 = u_xlat51;
          let x_1576 : vec4<f32> = u_xlat11;
          let x_1578 : vec2<f32> = ((vec2<f32>(x_1571.x, x_1571.y) * vec2<f32>(x_1573, x_1573)) + vec2<f32>(x_1576.x, x_1576.w));
          let x_1579 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1578.x, x_1579.y, x_1579.z, x_1578.y);
          let x_1581 : vec4<f32> = u_xlat11;
          let x_1584 : vec2<f32> = ((vec2<f32>(x_1581.x, x_1581.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1585 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1584.x, x_1585.y, x_1585.z, x_1584.y);
          let x_1587 : vec4<f32> = u_xlat11;
          let x_1591 : vec2<f32> = clamp(vec2<f32>(x_1587.x, x_1587.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1592 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1591.x, x_1592.y, x_1592.z, x_1591.y);
          let x_1594 : i32 = u_xlati47;
          let x_1596 : vec4<f32> = x_536.x_AdditionalLightsCookieAtlasUVRects[x_1594];
          let x_1598 : vec4<f32> = u_xlat11;
          let x_1601 : i32 = u_xlati47;
          let x_1603 : vec4<f32> = x_536.x_AdditionalLightsCookieAtlasUVRects[x_1601];
          let x_1605 : vec2<f32> = ((vec2<f32>(x_1596.x, x_1596.y) * vec2<f32>(x_1598.x, x_1598.w)) + vec2<f32>(x_1603.z, x_1603.w));
          let x_1606 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1605.x, x_1605.y, x_1606.z);
        }
      }
      let x_1613 : vec3<f32> = u_xlat25;
      let x_1615 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1613.x, x_1613.y), 0.0f);
      u_xlat11 = x_1615;
      let x_1617 : bool = u_xlatb7.y;
      if (x_1617) {
        let x_1622 : f32 = u_xlat11.w;
        x_1618 = x_1622;
      } else {
        let x_1625 : f32 = u_xlat11.x;
        x_1618 = x_1625;
      }
      let x_1626 : f32 = x_1618;
      u_xlat51 = x_1626;
      let x_1628 : bool = u_xlatb7.x;
      if (x_1628) {
        let x_1632 : vec4<f32> = u_xlat11;
        x_1629 = vec3<f32>(x_1632.x, x_1632.y, x_1632.z);
      } else {
        let x_1635 : f32 = u_xlat51;
        x_1629 = vec3<f32>(x_1635, x_1635, x_1635);
      }
      let x_1637 : vec3<f32> = x_1629;
      let x_1638 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1637.x, x_1637.y, x_1637.z, x_1638.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1644 : vec4<f32> = u_xlat11;
    let x_1646 : i32 = u_xlati47;
    let x_1648 : vec4<f32> = x_975.x_AdditionalLightsColor[x_1646];
    let x_1650 : vec3<f32> = (vec3<f32>(x_1644.x, x_1644.y, x_1644.z) * vec3<f32>(x_1648.x, x_1648.y, x_1648.z));
    let x_1651 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1650.x, x_1650.y, x_1650.z, x_1651.w);
    let x_1653 : f32 = u_xlat48;
    let x_1654 : f32 = u_xlat49;
    u_xlat47 = (x_1653 * x_1654);
    let x_1656 : vec3<f32> = u_xlat15;
    let x_1657 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(x_1656, x_1657);
    let x_1659 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1659, 0.0f, 1.0f);
    let x_1661 : f32 = u_xlat47;
    let x_1662 : f32 = u_xlat48;
    u_xlat47 = (x_1661 * x_1662);
    let x_1664 : f32 = u_xlat47;
    let x_1666 : vec4<f32> = u_xlat11;
    let x_1668 : vec3<f32> = (vec3<f32>(x_1664, x_1664, x_1664) * vec3<f32>(x_1666.x, x_1666.y, x_1666.z));
    let x_1669 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1668.x, x_1668.y, x_1668.z, x_1669.w);
    let x_1671 : vec3<f32> = u_xlat9;
    let x_1672 : f32 = u_xlat35;
    let x_1675 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1671 * vec3<f32>(x_1672, x_1672, x_1672)) + x_1675);
    let x_1677 : vec3<f32> = u_xlat9;
    let x_1678 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1677, x_1678);
    let x_1680 : f32 = u_xlat47;
    u_xlat47 = max(x_1680, 1.17549435e-38f);
    let x_1682 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1682);
    let x_1684 : f32 = u_xlat47;
    let x_1686 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1684, x_1684, x_1684) * x_1686);
    let x_1688 : vec3<f32> = u_xlat15;
    let x_1689 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1688, x_1689);
    let x_1691 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1691, 0.0f, 1.0f);
    let x_1693 : vec3<f32> = u_xlat10;
    let x_1694 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1693, x_1694);
    let x_1696 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1696, 0.0f, 1.0f);
    let x_1698 : f32 = u_xlat47;
    let x_1699 : f32 = u_xlat47;
    u_xlat47 = (x_1698 * x_1699);
    let x_1701 : f32 = u_xlat47;
    let x_1703 : f32 = u_xlat8.x;
    u_xlat47 = ((x_1701 * x_1703) + 1.00001001358032226562f);
    let x_1706 : f32 = u_xlat48;
    let x_1707 : f32 = u_xlat48;
    u_xlat48 = (x_1706 * x_1707);
    let x_1709 : f32 = u_xlat47;
    let x_1710 : f32 = u_xlat47;
    u_xlat47 = (x_1709 * x_1710);
    let x_1712 : f32 = u_xlat48;
    u_xlat48 = max(x_1712, 0.10000000149011611938f);
    let x_1714 : f32 = u_xlat47;
    let x_1715 : f32 = u_xlat48;
    u_xlat47 = (x_1714 * x_1715);
    let x_1717 : f32 = u_xlat45;
    let x_1718 : f32 = u_xlat47;
    u_xlat47 = (x_1717 * x_1718);
    let x_1720 : f32 = u_xlat46;
    let x_1721 : f32 = u_xlat47;
    u_xlat47 = (x_1720 / x_1721);
    let x_1723 : vec4<f32> = u_xlat0;
    let x_1725 : f32 = u_xlat47;
    let x_1728 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1723.x, x_1723.y, x_1723.z) * vec3<f32>(x_1725, x_1725, x_1725)) + x_1728);
    let x_1730 : vec3<f32> = u_xlat9;
    let x_1731 : vec4<f32> = u_xlat11;
    let x_1734 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1730 * vec3<f32>(x_1731.x, x_1731.y, x_1731.z)) + x_1734);

    continuing {
      let x_1736 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1736 + bitcast<u32>(1i));
    }
  }
  let x_1738 : vec4<f32> = u_xlat6;
  let x_1740 : vec4<f32> = u_xlat2;
  let x_1743 : vec4<f32> = u_xlat4;
  let x_1745 : vec3<f32> = ((vec3<f32>(x_1738.x, x_1738.y, x_1738.z) * vec3<f32>(x_1740.x, x_1740.z, x_1740.w)) + vec3<f32>(x_1743.x, x_1743.y, x_1743.z));
  let x_1746 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1745.x, x_1745.y, x_1745.z, x_1746.w);
  let x_1750 : vec3<f32> = u_xlat22;
  let x_1751 : vec4<f32> = u_xlat0;
  let x_1753 : vec3<f32> = (x_1750 + vec3<f32>(x_1751.x, x_1751.y, x_1751.z));
  let x_1754 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1753.x, x_1753.y, x_1753.z, x_1754.w);
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


