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
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
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

@group(0) @binding(5) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicTex : sampler;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : f32;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> u_xlat16 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat4 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat42 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat32 : f32;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat46 : f32;

@group(1) @binding(3) var<uniform> x_289 : LightShadows;

var<private> u_xlatb46 : bool;

var<private> u_xlatb5 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat19 : f32;

@group(1) @binding(4) var<uniform> x_356 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlat47 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_554 : UnityPerDraw;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatb4 : vec3<bool>;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_818 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb52 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat52 : f32;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb25 : vec3<bool>;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

var<private> u_xlatb47 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_445 : f32;
  var x_456 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_951 : f32;
  var x_962 : f32;
  var txVec1 : vec3<f32>;
  var x_1407 : f32;
  var x_1420 : f32;
  var x_1478 : f32;
  var x_1489 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = vs_TEXCOORD0;
  let x_65 : f32 = x_29.x_GlobalMipBias.x;
  let x_66 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_62.x, x_62.y), x_65);
  u_xlat0 = x_66;
  let x_73 : vec4<f32> = vs_TEXCOORD0;
  let x_76 : f32 = x_29.x_GlobalMipBias.x;
  let x_77 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_73.x, x_73.y), x_76);
  u_xlat1 = x_77.x;
  let x_82 : vec4<f32> = vs_TEXCOORD3;
  let x_84 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(vec3<f32>(x_82.x, x_82.y, x_82.z), vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_89 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_89);
  let x_92 : vec3<f32> = u_xlat15;
  let x_94 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15 = (vec3<f32>(x_92.x, x_92.x, x_92.x) * vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_103 : f32 = vs_TEXCOORD7.y;
  let x_107 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat2 = (x_103 * x_107);
  let x_110 : f32 = x_29.unity_MatrixV[0i].z;
  let x_112 : f32 = vs_TEXCOORD7.x;
  let x_114 : f32 = u_xlat2;
  u_xlat2 = ((x_110 * x_112) + x_114);
  let x_118 : f32 = x_29.unity_MatrixV[2i].z;
  let x_120 : f32 = vs_TEXCOORD7.z;
  let x_122 : f32 = u_xlat2;
  u_xlat2 = ((x_118 * x_120) + x_122);
  let x_124 : f32 = u_xlat2;
  let x_127 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat2 = (x_124 + x_127);
  let x_129 : f32 = u_xlat2;
  let x_133 : f32 = x_29.x_ProjectionParams.y;
  u_xlat2 = (-(x_129) + -(x_133));
  let x_136 : f32 = u_xlat2;
  u_xlat2 = max(x_136, 0.0f);
  let x_138 : f32 = u_xlat2;
  let x_141 : f32 = x_29.unity_FogParams.x;
  u_xlat2 = (x_138 * x_141);
  let x_149 : vec4<f32> = vs_TEXCOORD0;
  let x_152 : f32 = x_29.x_GlobalMipBias.x;
  let x_153 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_149.z, x_149.w), x_152);
  u_xlat3 = x_153;
  let x_159 : vec4<f32> = vs_TEXCOORD0;
  let x_162 : f32 = x_29.x_GlobalMipBias.x;
  let x_163 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_159.z, x_159.w), x_162);
  u_xlat16 = vec3<f32>(x_163.x, x_163.y, x_163.z);
  let x_165 : vec4<f32> = u_xlat3;
  let x_169 : vec3<f32> = (vec3<f32>(x_165.x, x_165.y, x_165.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_170 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_172 : vec3<f32> = u_xlat15;
  let x_173 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_172, vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_178 : f32 = u_xlat3.x;
  u_xlat3.x = (x_178 + 0.5f);
  let x_182 : vec3<f32> = u_xlat16;
  let x_183 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_182 * vec3<f32>(x_183.x, x_183.x, x_183.x));
  let x_188 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_188, 0.00009999999747378752f);
  let x_192 : vec3<f32> = u_xlat16;
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_192 / vec3<f32>(x_193.x, x_193.x, x_193.x));
  let x_196 : f32 = u_xlat1;
  u_xlat3.x = ((-(x_196) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_204 : f32 = u_xlat3.x;
  u_xlat17 = (-(x_204) + 1.0f);
  let x_208 : vec4<f32> = u_xlat0;
  let x_210 : vec4<f32> = u_xlat3;
  let x_212 : vec3<f32> = (vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(x_210.x, x_210.x, x_210.x));
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_212.x, x_213.y, x_212.y, x_212.z);
  let x_215 : vec4<f32> = u_xlat0;
  let x_219 : vec3<f32> = (vec3<f32>(x_215.x, x_215.y, x_215.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_220 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : f32 = u_xlat1;
  let x_224 : vec4<f32> = u_xlat0;
  let x_229 : vec3<f32> = ((vec3<f32>(x_222, x_222, x_222) * vec3<f32>(x_224.x, x_224.y, x_224.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_230 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_233 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_233) + 1.0f);
  let x_237 : f32 = u_xlat1;
  let x_238 : f32 = u_xlat1;
  u_xlat4 = (x_237 * x_238);
  let x_240 : f32 = u_xlat4;
  u_xlat4 = max(x_240, 0.0078125f);
  let x_244 : f32 = u_xlat4;
  let x_245 : f32 = u_xlat4;
  u_xlat18 = (x_244 * x_245);
  let x_249 : f32 = u_xlat0.w;
  let x_250 : f32 = u_xlat17;
  u_xlat42 = (x_249 + x_250);
  let x_252 : f32 = u_xlat42;
  u_xlat42 = clamp(x_252, 0.0f, 1.0f);
  let x_254 : f32 = u_xlat4;
  u_xlat17 = ((x_254 * 4.0f) + 2.0f);
  let x_262 : vec4<f32> = vs_TEXCOORD8;
  let x_263 : vec2<f32> = vec2<f32>(x_262.x, x_262.y);
  let x_265 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_263.x, x_263.y, x_265);
  let x_278 : vec3<f32> = txVec0;
  let x_280 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_278.xy, x_278.z);
  u_xlat32 = x_280;
  let x_291 : f32 = x_289.x_MainLightShadowParams.x;
  u_xlat46 = (-(x_291) + 1.0f);
  let x_294 : f32 = u_xlat32;
  let x_296 : f32 = x_289.x_MainLightShadowParams.x;
  let x_298 : f32 = u_xlat46;
  u_xlat32 = ((x_294 * x_296) + x_298);
  let x_302 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (0.0f >= x_302);
  let x_306 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (x_306 >= 1.0f);
  let x_308 : bool = u_xlatb46;
  let x_309 : bool = u_xlatb5;
  u_xlatb46 = (x_308 | x_309);
  let x_311 : bool = u_xlatb46;
  let x_312 : f32 = u_xlat32;
  u_xlat32 = select(x_312, 1.0f, x_311);
  let x_315 : vec3<f32> = vs_TEXCOORD7;
  let x_319 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_321 : vec3<f32> = (x_315 + -(x_319));
  let x_322 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat5;
  let x_326 : vec4<f32> = u_xlat5;
  u_xlat46 = dot(vec3<f32>(x_324.x, x_324.y, x_324.z), vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : f32 = u_xlat46;
  let x_331 : f32 = x_289.x_MainLightShadowParams.z;
  let x_334 : f32 = x_289.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_329 * x_331) + x_334);
  let x_338 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_338, 0.0f, 1.0f);
  let x_342 : f32 = u_xlat32;
  u_xlat19 = (-(x_342) + 1.0f);
  let x_346 : f32 = u_xlat5.x;
  let x_347 : f32 = u_xlat19;
  let x_349 : f32 = u_xlat32;
  u_xlat32 = ((x_346 * x_347) + x_349);
  let x_358 : f32 = x_356.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_358 == -1.0f));
  let x_361 : bool = u_xlatb5;
  if (x_361) {
    let x_364 : vec3<f32> = vs_TEXCOORD7;
    let x_368 : vec4<f32> = x_356.x_MainLightWorldToLight[1i];
    let x_370 : vec2<f32> = (vec2<f32>(x_364.y, x_364.y) * vec2<f32>(x_368.x, x_368.y));
    let x_371 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_370.x, x_370.y, x_371.z, x_371.w);
    let x_374 : vec4<f32> = x_356.x_MainLightWorldToLight[0i];
    let x_376 : vec3<f32> = vs_TEXCOORD7;
    let x_379 : vec4<f32> = u_xlat5;
    let x_381 : vec2<f32> = ((vec2<f32>(x_374.x, x_374.y) * vec2<f32>(x_376.x, x_376.x)) + vec2<f32>(x_379.x, x_379.y));
    let x_382 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_381.x, x_381.y, x_382.z, x_382.w);
    let x_385 : vec4<f32> = x_356.x_MainLightWorldToLight[2i];
    let x_387 : vec3<f32> = vs_TEXCOORD7;
    let x_390 : vec4<f32> = u_xlat5;
    let x_392 : vec2<f32> = ((vec2<f32>(x_385.x, x_385.y) * vec2<f32>(x_387.z, x_387.z)) + vec2<f32>(x_390.x, x_390.y));
    let x_393 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
    let x_395 : vec4<f32> = u_xlat5;
    let x_398 : vec4<f32> = x_356.x_MainLightWorldToLight[3i];
    let x_400 : vec2<f32> = (vec2<f32>(x_395.x, x_395.y) + vec2<f32>(x_398.x, x_398.y));
    let x_401 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
    let x_403 : vec4<f32> = u_xlat5;
    let x_407 : vec2<f32> = ((vec2<f32>(x_403.x, x_403.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_408 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_407.x, x_407.y, x_408.z, x_408.w);
    let x_415 : vec4<f32> = u_xlat5;
    let x_418 : f32 = x_29.x_GlobalMipBias.x;
    let x_419 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_415.x, x_415.y), x_418);
    u_xlat5 = x_419;
    let x_424 : f32 = x_356.x_MainLightCookieTextureFormat;
    let x_426 : f32 = x_356.x_MainLightCookieTextureFormat;
    let x_428 : f32 = x_356.x_MainLightCookieTextureFormat;
    let x_430 : f32 = x_356.x_MainLightCookieTextureFormat;
    let x_431 : vec4<f32> = vec4<f32>(x_424, x_426, x_428, x_430);
    let x_439 : vec4<bool> = (vec4<f32>(x_431.x, x_431.y, x_431.z, x_431.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_439.x, x_439.y);
    let x_443 : bool = u_xlatb6.y;
    if (x_443) {
      let x_449 : f32 = u_xlat5.w;
      x_445 = x_449;
    } else {
      let x_452 : f32 = u_xlat5.x;
      x_445 = x_452;
    }
    let x_453 : f32 = x_445;
    u_xlat47 = x_453;
    let x_455 : bool = u_xlatb6.x;
    if (x_455) {
      let x_459 : vec4<f32> = u_xlat5;
      x_456 = vec3<f32>(x_459.x, x_459.y, x_459.z);
    } else {
      let x_462 : f32 = u_xlat47;
      x_456 = vec3<f32>(x_462, x_462, x_462);
    }
    let x_464 : vec3<f32> = x_456;
    let x_465 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_471 : vec4<f32> = u_xlat5;
  let x_474 : vec4<f32> = x_29.x_MainLightColor;
  let x_476 : vec3<f32> = (vec3<f32>(x_471.x, x_471.y, x_471.z) * vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_481 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_481;
  let x_485 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_485;
  let x_489 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_489;
  let x_491 : vec3<f32> = u_xlat6;
  let x_493 : vec3<f32> = u_xlat15;
  u_xlat47 = dot(-(x_491), x_493);
  let x_495 : f32 = u_xlat47;
  let x_496 : f32 = u_xlat47;
  u_xlat47 = (x_495 + x_496);
  let x_499 : vec3<f32> = u_xlat15;
  let x_500 : f32 = u_xlat47;
  let x_504 : vec3<f32> = u_xlat6;
  let x_506 : vec3<f32> = ((x_499 * -(vec3<f32>(x_500, x_500, x_500))) + -(x_504));
  let x_507 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_509 : vec3<f32> = u_xlat15;
  let x_510 : vec3<f32> = u_xlat6;
  u_xlat47 = dot(x_509, x_510);
  let x_512 : f32 = u_xlat47;
  u_xlat47 = clamp(x_512, 0.0f, 1.0f);
  let x_514 : f32 = u_xlat47;
  u_xlat47 = (-(x_514) + 1.0f);
  let x_517 : f32 = u_xlat47;
  let x_518 : f32 = u_xlat47;
  u_xlat47 = (x_517 * x_518);
  let x_520 : f32 = u_xlat47;
  let x_521 : f32 = u_xlat47;
  u_xlat47 = (x_520 * x_521);
  let x_524 : f32 = u_xlat1;
  u_xlat48 = ((-(x_524) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_530 : f32 = u_xlat1;
  let x_531 : f32 = u_xlat48;
  u_xlat1 = (x_530 * x_531);
  let x_533 : f32 = u_xlat1;
  u_xlat1 = (x_533 * 6.0f);
  let x_544 : vec4<f32> = u_xlat7;
  let x_546 : f32 = u_xlat1;
  let x_547 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_544.x, x_544.y, x_544.z), x_546);
  u_xlat7 = x_547;
  let x_549 : f32 = u_xlat7.w;
  u_xlat1 = (x_549 + -1.0f);
  let x_556 : f32 = x_554.unity_SpecCube0_HDR.w;
  let x_557 : f32 = u_xlat1;
  u_xlat1 = ((x_556 * x_557) + 1.0f);
  let x_560 : f32 = u_xlat1;
  u_xlat1 = max(x_560, 0.0f);
  let x_562 : f32 = u_xlat1;
  u_xlat1 = log2(x_562);
  let x_564 : f32 = u_xlat1;
  let x_566 : f32 = x_554.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_564 * x_566);
  let x_568 : f32 = u_xlat1;
  u_xlat1 = exp2(x_568);
  let x_570 : f32 = u_xlat1;
  let x_572 : f32 = x_554.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_570 * x_572);
  let x_574 : vec4<f32> = u_xlat7;
  let x_576 : f32 = u_xlat1;
  let x_578 : vec3<f32> = (vec3<f32>(x_574.x, x_574.y, x_574.z) * vec3<f32>(x_576, x_576, x_576));
  let x_579 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_583 : f32 = u_xlat4;
  let x_585 : f32 = u_xlat4;
  u_xlat8 = ((vec2<f32>(x_583, x_583) * vec2<f32>(x_585, x_585)) + vec2<f32>(-1.0f, 1.0f));
  let x_591 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_591);
  let x_594 : vec4<f32> = u_xlat0;
  let x_597 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_594.x, x_594.y, x_594.z)) + vec3<f32>(x_597, x_597, x_597));
  let x_600 : f32 = u_xlat47;
  let x_602 : vec3<f32> = u_xlat22;
  let x_604 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_600, x_600, x_600) * x_602) + vec3<f32>(x_604.x, x_604.y, x_604.z));
  let x_607 : f32 = u_xlat1;
  let x_609 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_607, x_607, x_607) * x_609);
  let x_611 : vec4<f32> = u_xlat7;
  let x_613 : vec3<f32> = u_xlat22;
  let x_614 : vec3<f32> = (vec3<f32>(x_611.x, x_611.y, x_611.z) * x_613);
  let x_615 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  let x_617 : vec3<f32> = u_xlat16;
  let x_618 : vec4<f32> = u_xlat3;
  let x_621 : vec4<f32> = u_xlat7;
  u_xlat16 = ((x_617 * vec3<f32>(x_618.x, x_618.z, x_618.w)) + vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_624 : f32 = u_xlat32;
  let x_626 : f32 = x_554.unity_LightData.z;
  u_xlat42 = (x_624 * x_626);
  let x_628 : vec3<f32> = u_xlat15;
  let x_630 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_628, vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : f32 = u_xlat1;
  u_xlat1 = clamp(x_633, 0.0f, 1.0f);
  let x_635 : f32 = u_xlat42;
  let x_636 : f32 = u_xlat1;
  u_xlat42 = (x_635 * x_636);
  let x_638 : f32 = u_xlat42;
  let x_640 : vec4<f32> = u_xlat5;
  let x_642 : vec3<f32> = (vec3<f32>(x_638, x_638, x_638) * vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec3<f32> = u_xlat6;
  let x_647 : vec4<f32> = x_29.x_MainLightPosition;
  let x_649 : vec3<f32> = (x_645 + vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : vec4<f32> = u_xlat7;
  let x_654 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_652.x, x_652.y, x_652.z), vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : f32 = u_xlat42;
  u_xlat42 = max(x_657, 1.17549435e-38f);
  let x_660 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_660);
  let x_662 : f32 = u_xlat42;
  let x_664 : vec4<f32> = u_xlat7;
  let x_666 : vec3<f32> = (vec3<f32>(x_662, x_662, x_662) * vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : vec3<f32> = u_xlat15;
  let x_670 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_669, vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : f32 = u_xlat42;
  u_xlat42 = clamp(x_673, 0.0f, 1.0f);
  let x_676 : vec4<f32> = x_29.x_MainLightPosition;
  let x_678 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_676.x, x_676.y, x_676.z), vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_681 : f32 = u_xlat1;
  u_xlat1 = clamp(x_681, 0.0f, 1.0f);
  let x_683 : f32 = u_xlat42;
  let x_684 : f32 = u_xlat42;
  u_xlat42 = (x_683 * x_684);
  let x_686 : f32 = u_xlat42;
  let x_688 : f32 = u_xlat8.x;
  u_xlat42 = ((x_686 * x_688) + 1.00001001358032226562f);
  let x_692 : f32 = u_xlat1;
  let x_693 : f32 = u_xlat1;
  u_xlat1 = (x_692 * x_693);
  let x_695 : f32 = u_xlat42;
  let x_696 : f32 = u_xlat42;
  u_xlat42 = (x_695 * x_696);
  let x_698 : f32 = u_xlat1;
  u_xlat1 = max(x_698, 0.10000000149011611938f);
  let x_701 : f32 = u_xlat42;
  let x_702 : f32 = u_xlat1;
  u_xlat42 = (x_701 * x_702);
  let x_704 : f32 = u_xlat17;
  let x_705 : f32 = u_xlat42;
  u_xlat42 = (x_704 * x_705);
  let x_707 : f32 = u_xlat18;
  let x_708 : f32 = u_xlat42;
  u_xlat42 = (x_707 / x_708);
  let x_710 : vec4<f32> = u_xlat0;
  let x_712 : f32 = u_xlat42;
  let x_715 : vec4<f32> = u_xlat3;
  let x_717 : vec3<f32> = ((vec3<f32>(x_710.x, x_710.y, x_710.z) * vec3<f32>(x_712, x_712, x_712)) + vec3<f32>(x_715.x, x_715.z, x_715.w));
  let x_718 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
  let x_721 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_723 : f32 = x_554.unity_LightData.y;
  u_xlat42 = min(x_721, x_723);
  let x_727 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_727));
  let x_730 : f32 = u_xlat46;
  let x_733 : f32 = x_289.x_AdditionalShadowFadeParams.x;
  let x_736 : f32 = x_289.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_730 * x_733) + x_736);
  let x_738 : f32 = u_xlat1;
  u_xlat1 = clamp(x_738, 0.0f, 1.0f);
  let x_744 : f32 = x_356.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_746 : f32 = x_356.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_748 : f32 = x_356.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_750 : f32 = x_356.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_751 : vec4<f32> = vec4<f32>(x_744, x_746, x_748, x_750);
  let x_758 : vec4<bool> = (vec4<f32>(x_751.x, x_751.y, x_751.z, x_751.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_759 : vec2<bool> = vec2<bool>(x_758.x, x_758.z);
  let x_760 : vec3<bool> = u_xlatb4;
  u_xlatb4 = vec3<bool>(x_759.x, x_760.y, x_759.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_772 : u32 = u_xlatu_loop_1;
    let x_773 : u32 = u_xlatu42;
    if ((x_772 < x_773)) {
    } else {
      break;
    }
    let x_776 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_776 >> 2u);
    let x_780 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_780 & 3u));
    let x_783 : u32 = u_xlatu47;
    let x_786 : vec4<f32> = x_554.unity_LightIndices[bitcast<i32>(x_783)];
    let x_796 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_801 : vec4<u32> = indexable[x_796];
    u_xlat47 = dot(x_786, bitcast<vec4<f32>>(x_801));
    let x_805 : f32 = u_xlat47;
    u_xlati47 = i32(x_805);
    let x_808 : vec3<f32> = vs_TEXCOORD7;
    let x_819 : i32 = u_xlati47;
    let x_821 : vec4<f32> = x_818.x_AdditionalLightsPosition[x_819];
    let x_824 : i32 = u_xlati47;
    let x_826 : vec4<f32> = x_818.x_AdditionalLightsPosition[x_824];
    u_xlat9 = ((-(x_808) * vec3<f32>(x_821.w, x_821.w, x_821.w)) + vec3<f32>(x_826.x, x_826.y, x_826.z));
    let x_829 : vec3<f32> = u_xlat9;
    let x_830 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_829, x_830);
    let x_832 : f32 = u_xlat48;
    u_xlat48 = max(x_832, 0.00006103515625f);
    let x_836 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_836);
    let x_839 : f32 = u_xlat49;
    let x_841 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_839, x_839, x_839) * x_841);
    let x_844 : f32 = u_xlat48;
    u_xlat51 = (1.0f / x_844);
    let x_846 : f32 = u_xlat48;
    let x_847 : i32 = u_xlati47;
    let x_849 : f32 = x_818.x_AdditionalLightsAttenuation[x_847].x;
    u_xlat48 = (x_846 * x_849);
    let x_851 : f32 = u_xlat48;
    let x_853 : f32 = u_xlat48;
    u_xlat48 = ((-(x_851) * x_853) + 1.0f);
    let x_856 : f32 = u_xlat48;
    u_xlat48 = max(x_856, 0.0f);
    let x_858 : f32 = u_xlat48;
    let x_859 : f32 = u_xlat48;
    u_xlat48 = (x_858 * x_859);
    let x_861 : f32 = u_xlat48;
    let x_862 : f32 = u_xlat51;
    u_xlat48 = (x_861 * x_862);
    let x_864 : i32 = u_xlati47;
    let x_866 : vec4<f32> = x_818.x_AdditionalLightsSpotDir[x_864];
    let x_868 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_866.x, x_866.y, x_866.z), x_868);
    let x_870 : f32 = u_xlat51;
    let x_871 : i32 = u_xlati47;
    let x_873 : f32 = x_818.x_AdditionalLightsAttenuation[x_871].z;
    let x_875 : i32 = u_xlati47;
    let x_877 : f32 = x_818.x_AdditionalLightsAttenuation[x_875].w;
    u_xlat51 = ((x_870 * x_873) + x_877);
    let x_879 : f32 = u_xlat51;
    u_xlat51 = clamp(x_879, 0.0f, 1.0f);
    let x_881 : f32 = u_xlat51;
    let x_882 : f32 = u_xlat51;
    u_xlat51 = (x_881 * x_882);
    let x_884 : f32 = u_xlat48;
    let x_885 : f32 = u_xlat51;
    u_xlat48 = (x_884 * x_885);
    let x_889 : i32 = u_xlati47;
    let x_891 : f32 = x_289.x_AdditionalShadowParams[x_889].w;
    u_xlati51 = i32(x_891);
    let x_894 : i32 = u_xlati51;
    u_xlatb52 = (x_894 >= 0i);
    let x_896 : bool = u_xlatb52;
    if (x_896) {
      let x_900 : i32 = u_xlati47;
      let x_902 : f32 = x_289.x_AdditionalShadowParams[x_900].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_902, x_902, x_902, x_902))));
      let x_906 : bool = u_xlatb52;
      if (x_906) {
        let x_911 : vec3<f32> = u_xlat10;
        let x_914 : vec3<f32> = u_xlat10;
        let x_917 : vec4<bool> = (abs(vec4<f32>(x_911.z, x_911.z, x_911.y, x_911.z)) >= abs(vec4<f32>(x_914.x, x_914.y, x_914.x, x_914.x)));
        let x_918 : vec3<bool> = vec3<bool>(x_917.x, x_917.y, x_917.z);
        let x_919 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_918.x, x_918.y, x_918.z, x_919.w);
        let x_922 : bool = u_xlatb11.y;
        let x_924 : bool = u_xlatb11.x;
        u_xlatb52 = (x_922 & x_924);
        let x_926 : vec3<f32> = u_xlat10;
        let x_929 : vec4<bool> = (-(vec4<f32>(x_926.z, x_926.y, x_926.z, x_926.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_930 : vec3<bool> = vec3<bool>(x_929.x, x_929.y, x_929.w);
        let x_931 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_930.x, x_930.y, x_931.z, x_930.z);
        let x_935 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_935);
        let x_940 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_940);
        let x_946 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_946);
        let x_950 : bool = u_xlatb11.z;
        if (x_950) {
          let x_955 : f32 = u_xlat11.y;
          x_951 = x_955;
        } else {
          let x_957 : f32 = u_xlat53;
          x_951 = x_957;
        }
        let x_958 : f32 = x_951;
        u_xlat25.x = x_958;
        let x_961 : bool = u_xlatb52;
        if (x_961) {
          let x_966 : f32 = u_xlat11.x;
          x_962 = x_966;
        } else {
          let x_969 : f32 = u_xlat25.x;
          x_962 = x_969;
        }
        let x_970 : f32 = x_962;
        u_xlat52 = x_970;
        let x_971 : i32 = u_xlati47;
        let x_973 : f32 = x_289.x_AdditionalShadowParams[x_971].w;
        u_xlat11.x = trunc(x_973);
        let x_976 : f32 = u_xlat52;
        let x_978 : f32 = u_xlat11.x;
        u_xlat52 = (x_976 + x_978);
        let x_980 : f32 = u_xlat52;
        u_xlati51 = i32(x_980);
      }
      let x_982 : i32 = u_xlati51;
      u_xlati51 = (x_982 << bitcast<u32>(2i));
      let x_984 : vec3<f32> = vs_TEXCOORD7;
      let x_987 : i32 = u_xlati51;
      let x_990 : i32 = u_xlati51;
      let x_994 : vec4<f32> = x_289.x_AdditionalLightsWorldToShadow[((x_987 + 1i) / 4i)][((x_990 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_984.y, x_984.y, x_984.y, x_984.y) * x_994);
      let x_996 : i32 = u_xlati51;
      let x_998 : i32 = u_xlati51;
      let x_1001 : vec4<f32> = x_289.x_AdditionalLightsWorldToShadow[(x_996 / 4i)][(x_998 % 4i)];
      let x_1002 : vec3<f32> = vs_TEXCOORD7;
      let x_1005 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1001 * vec4<f32>(x_1002.x, x_1002.x, x_1002.x, x_1002.x)) + x_1005);
      let x_1007 : i32 = u_xlati51;
      let x_1010 : i32 = u_xlati51;
      let x_1014 : vec4<f32> = x_289.x_AdditionalLightsWorldToShadow[((x_1007 + 2i) / 4i)][((x_1010 + 2i) % 4i)];
      let x_1015 : vec3<f32> = vs_TEXCOORD7;
      let x_1018 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1014 * vec4<f32>(x_1015.z, x_1015.z, x_1015.z, x_1015.z)) + x_1018);
      let x_1020 : vec4<f32> = u_xlat11;
      let x_1021 : i32 = u_xlati51;
      let x_1024 : i32 = u_xlati51;
      let x_1028 : vec4<f32> = x_289.x_AdditionalLightsWorldToShadow[((x_1021 + 3i) / 4i)][((x_1024 + 3i) % 4i)];
      u_xlat11 = (x_1020 + x_1028);
      let x_1030 : vec4<f32> = u_xlat11;
      let x_1032 : vec4<f32> = u_xlat11;
      let x_1034 : vec3<f32> = (vec3<f32>(x_1030.x, x_1030.y, x_1030.z) / vec3<f32>(x_1032.w, x_1032.w, x_1032.w));
      let x_1035 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
      let x_1038 : vec4<f32> = u_xlat11;
      let x_1039 : vec2<f32> = vec2<f32>(x_1038.x, x_1038.y);
      let x_1041 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1039.x, x_1039.y, x_1041);
      let x_1049 : vec3<f32> = txVec1;
      let x_1051 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1049.xy, x_1049.z);
      u_xlat51 = x_1051;
      let x_1052 : i32 = u_xlati47;
      let x_1054 : f32 = x_289.x_AdditionalShadowParams[x_1052].x;
      u_xlat52 = (1.0f + -(x_1054));
      let x_1057 : f32 = u_xlat51;
      let x_1058 : i32 = u_xlati47;
      let x_1060 : f32 = x_289.x_AdditionalShadowParams[x_1058].x;
      let x_1062 : f32 = u_xlat52;
      u_xlat51 = ((x_1057 * x_1060) + x_1062);
      let x_1065 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1065);
      let x_1068 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1068 >= 1.0f);
      let x_1071 : bool = u_xlatb52;
      let x_1073 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1071 | x_1073);
      let x_1075 : bool = u_xlatb52;
      let x_1076 : f32 = u_xlat51;
      u_xlat51 = select(x_1076, 1.0f, x_1075);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1079 : f32 = u_xlat51;
    u_xlat52 = (-(x_1079) + 1.0f);
    let x_1082 : f32 = u_xlat1;
    let x_1083 : f32 = u_xlat52;
    let x_1085 : f32 = u_xlat51;
    u_xlat51 = ((x_1082 * x_1083) + x_1085);
    let x_1088 : i32 = u_xlati47;
    u_xlati52 = (1i << bitcast<u32>((x_1088 & 31i)));
    let x_1092 : i32 = u_xlati52;
    let x_1095 : f32 = x_356.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1092) & bitcast<u32>(x_1095)));
    let x_1099 : i32 = u_xlati52;
    if ((x_1099 != 0i)) {
      let x_1103 : i32 = u_xlati47;
      let x_1105 : f32 = x_356.x_AdditionalLightsLightTypes[x_1103].el;
      u_xlati52 = i32(x_1105);
      let x_1108 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1108 != 0i));
      let x_1112 : i32 = u_xlati47;
      u_xlati25 = (x_1112 << bitcast<u32>(2i));
      let x_1114 : i32 = u_xlati11;
      if ((x_1114 != 0i)) {
        let x_1118 : vec3<f32> = vs_TEXCOORD7;
        let x_1120 : i32 = u_xlati25;
        let x_1123 : i32 = u_xlati25;
        let x_1127 : vec4<f32> = x_356.x_AdditionalLightsWorldToLights[((x_1120 + 1i) / 4i)][((x_1123 + 1i) % 4i)];
        let x_1129 : vec3<f32> = (vec3<f32>(x_1118.y, x_1118.y, x_1118.y) * vec3<f32>(x_1127.x, x_1127.y, x_1127.w));
        let x_1130 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1129.x, x_1130.y, x_1129.y, x_1129.z);
        let x_1132 : i32 = u_xlati25;
        let x_1134 : i32 = u_xlati25;
        let x_1137 : vec4<f32> = x_356.x_AdditionalLightsWorldToLights[(x_1132 / 4i)][(x_1134 % 4i)];
        let x_1139 : vec3<f32> = vs_TEXCOORD7;
        let x_1142 : vec4<f32> = u_xlat11;
        let x_1144 : vec3<f32> = ((vec3<f32>(x_1137.x, x_1137.y, x_1137.w) * vec3<f32>(x_1139.x, x_1139.x, x_1139.x)) + vec3<f32>(x_1142.x, x_1142.z, x_1142.w));
        let x_1145 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1144.x, x_1145.y, x_1144.y, x_1144.z);
        let x_1147 : i32 = u_xlati25;
        let x_1150 : i32 = u_xlati25;
        let x_1154 : vec4<f32> = x_356.x_AdditionalLightsWorldToLights[((x_1147 + 2i) / 4i)][((x_1150 + 2i) % 4i)];
        let x_1156 : vec3<f32> = vs_TEXCOORD7;
        let x_1159 : vec4<f32> = u_xlat11;
        let x_1161 : vec3<f32> = ((vec3<f32>(x_1154.x, x_1154.y, x_1154.w) * vec3<f32>(x_1156.z, x_1156.z, x_1156.z)) + vec3<f32>(x_1159.x, x_1159.z, x_1159.w));
        let x_1162 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1161.x, x_1162.y, x_1161.y, x_1161.z);
        let x_1164 : vec4<f32> = u_xlat11;
        let x_1166 : i32 = u_xlati25;
        let x_1169 : i32 = u_xlati25;
        let x_1173 : vec4<f32> = x_356.x_AdditionalLightsWorldToLights[((x_1166 + 3i) / 4i)][((x_1169 + 3i) % 4i)];
        let x_1175 : vec3<f32> = (vec3<f32>(x_1164.x, x_1164.z, x_1164.w) + vec3<f32>(x_1173.x, x_1173.y, x_1173.w));
        let x_1176 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1175.x, x_1176.y, x_1175.y, x_1175.z);
        let x_1178 : vec4<f32> = u_xlat11;
        let x_1180 : vec4<f32> = u_xlat11;
        let x_1182 : vec2<f32> = (vec2<f32>(x_1178.x, x_1178.z) / vec2<f32>(x_1180.w, x_1180.w));
        let x_1183 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1182.x, x_1183.y, x_1182.y, x_1183.w);
        let x_1185 : vec4<f32> = u_xlat11;
        let x_1188 : vec2<f32> = ((vec2<f32>(x_1185.x, x_1185.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1189 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1188.x, x_1189.y, x_1188.y, x_1189.w);
        let x_1191 : vec4<f32> = u_xlat11;
        let x_1195 : vec2<f32> = clamp(vec2<f32>(x_1191.x, x_1191.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1196 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1195.x, x_1196.y, x_1195.y, x_1196.w);
        let x_1198 : i32 = u_xlati47;
        let x_1200 : vec4<f32> = x_356.x_AdditionalLightsCookieAtlasUVRects[x_1198];
        let x_1202 : vec4<f32> = u_xlat11;
        let x_1205 : i32 = u_xlati47;
        let x_1207 : vec4<f32> = x_356.x_AdditionalLightsCookieAtlasUVRects[x_1205];
        let x_1209 : vec2<f32> = ((vec2<f32>(x_1200.x, x_1200.y) * vec2<f32>(x_1202.x, x_1202.z)) + vec2<f32>(x_1207.z, x_1207.w));
        let x_1210 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1209.x, x_1210.y, x_1209.y, x_1210.w);
      } else {
        let x_1213 : i32 = u_xlati52;
        u_xlatb52 = (x_1213 == 1i);
        let x_1215 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1215);
        let x_1217 : i32 = u_xlati52;
        if ((x_1217 != 0i)) {
          let x_1222 : vec3<f32> = vs_TEXCOORD7;
          let x_1224 : i32 = u_xlati25;
          let x_1227 : i32 = u_xlati25;
          let x_1231 : vec4<f32> = x_356.x_AdditionalLightsWorldToLights[((x_1224 + 1i) / 4i)][((x_1227 + 1i) % 4i)];
          let x_1233 : vec2<f32> = (vec2<f32>(x_1222.y, x_1222.y) * vec2<f32>(x_1231.x, x_1231.y));
          let x_1234 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1233.x, x_1233.y, x_1234.z, x_1234.w);
          let x_1236 : i32 = u_xlati25;
          let x_1238 : i32 = u_xlati25;
          let x_1241 : vec4<f32> = x_356.x_AdditionalLightsWorldToLights[(x_1236 / 4i)][(x_1238 % 4i)];
          let x_1243 : vec3<f32> = vs_TEXCOORD7;
          let x_1246 : vec4<f32> = u_xlat12;
          let x_1248 : vec2<f32> = ((vec2<f32>(x_1241.x, x_1241.y) * vec2<f32>(x_1243.x, x_1243.x)) + vec2<f32>(x_1246.x, x_1246.y));
          let x_1249 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1248.x, x_1248.y, x_1249.z, x_1249.w);
          let x_1251 : i32 = u_xlati25;
          let x_1254 : i32 = u_xlati25;
          let x_1258 : vec4<f32> = x_356.x_AdditionalLightsWorldToLights[((x_1251 + 2i) / 4i)][((x_1254 + 2i) % 4i)];
          let x_1260 : vec3<f32> = vs_TEXCOORD7;
          let x_1263 : vec4<f32> = u_xlat12;
          let x_1265 : vec2<f32> = ((vec2<f32>(x_1258.x, x_1258.y) * vec2<f32>(x_1260.z, x_1260.z)) + vec2<f32>(x_1263.x, x_1263.y));
          let x_1266 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1265.x, x_1265.y, x_1266.z, x_1266.w);
          let x_1268 : vec4<f32> = u_xlat12;
          let x_1270 : i32 = u_xlati25;
          let x_1273 : i32 = u_xlati25;
          let x_1277 : vec4<f32> = x_356.x_AdditionalLightsWorldToLights[((x_1270 + 3i) / 4i)][((x_1273 + 3i) % 4i)];
          let x_1279 : vec2<f32> = (vec2<f32>(x_1268.x, x_1268.y) + vec2<f32>(x_1277.x, x_1277.y));
          let x_1280 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1279.x, x_1279.y, x_1280.z, x_1280.w);
          let x_1282 : vec4<f32> = u_xlat12;
          let x_1285 : vec2<f32> = ((vec2<f32>(x_1282.x, x_1282.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1286 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1285.x, x_1285.y, x_1286.z, x_1286.w);
          let x_1288 : vec4<f32> = u_xlat12;
          let x_1290 : vec2<f32> = fract(vec2<f32>(x_1288.x, x_1288.y));
          let x_1291 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1290.x, x_1290.y, x_1291.z, x_1291.w);
          let x_1293 : i32 = u_xlati47;
          let x_1295 : vec4<f32> = x_356.x_AdditionalLightsCookieAtlasUVRects[x_1293];
          let x_1297 : vec4<f32> = u_xlat12;
          let x_1300 : i32 = u_xlati47;
          let x_1302 : vec4<f32> = x_356.x_AdditionalLightsCookieAtlasUVRects[x_1300];
          let x_1304 : vec2<f32> = ((vec2<f32>(x_1295.x, x_1295.y) * vec2<f32>(x_1297.x, x_1297.y)) + vec2<f32>(x_1302.z, x_1302.w));
          let x_1305 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1304.x, x_1305.y, x_1304.y, x_1305.w);
        } else {
          let x_1308 : vec3<f32> = vs_TEXCOORD7;
          let x_1310 : i32 = u_xlati25;
          let x_1313 : i32 = u_xlati25;
          let x_1317 : vec4<f32> = x_356.x_AdditionalLightsWorldToLights[((x_1310 + 1i) / 4i)][((x_1313 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1308.y, x_1308.y, x_1308.y, x_1308.y) * x_1317);
          let x_1319 : i32 = u_xlati25;
          let x_1321 : i32 = u_xlati25;
          let x_1324 : vec4<f32> = x_356.x_AdditionalLightsWorldToLights[(x_1319 / 4i)][(x_1321 % 4i)];
          let x_1325 : vec3<f32> = vs_TEXCOORD7;
          let x_1328 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1324 * vec4<f32>(x_1325.x, x_1325.x, x_1325.x, x_1325.x)) + x_1328);
          let x_1330 : i32 = u_xlati25;
          let x_1333 : i32 = u_xlati25;
          let x_1337 : vec4<f32> = x_356.x_AdditionalLightsWorldToLights[((x_1330 + 2i) / 4i)][((x_1333 + 2i) % 4i)];
          let x_1338 : vec3<f32> = vs_TEXCOORD7;
          let x_1341 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1337 * vec4<f32>(x_1338.z, x_1338.z, x_1338.z, x_1338.z)) + x_1341);
          let x_1343 : vec4<f32> = u_xlat12;
          let x_1344 : i32 = u_xlati25;
          let x_1347 : i32 = u_xlati25;
          let x_1351 : vec4<f32> = x_356.x_AdditionalLightsWorldToLights[((x_1344 + 3i) / 4i)][((x_1347 + 3i) % 4i)];
          u_xlat12 = (x_1343 + x_1351);
          let x_1353 : vec4<f32> = u_xlat12;
          let x_1355 : vec4<f32> = u_xlat12;
          let x_1357 : vec3<f32> = (vec3<f32>(x_1353.x, x_1353.y, x_1353.z) / vec3<f32>(x_1355.w, x_1355.w, x_1355.w));
          let x_1358 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
          let x_1360 : vec4<f32> = u_xlat12;
          let x_1362 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1360.x, x_1360.y, x_1360.z), vec3<f32>(x_1362.x, x_1362.y, x_1362.z));
          let x_1365 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1365);
          let x_1367 : f32 = u_xlat52;
          let x_1369 : vec4<f32> = u_xlat12;
          let x_1371 : vec3<f32> = (vec3<f32>(x_1367, x_1367, x_1367) * vec3<f32>(x_1369.x, x_1369.y, x_1369.z));
          let x_1372 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1371.x, x_1371.y, x_1371.z, x_1372.w);
          let x_1374 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1374.x, x_1374.y, x_1374.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1379 : f32 = u_xlat52;
          u_xlat52 = max(x_1379, 0.00000099999999747524f);
          let x_1382 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1382);
          let x_1385 : f32 = u_xlat52;
          let x_1387 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1385, x_1385, x_1385) * vec3<f32>(x_1387.z, x_1387.x, x_1387.y));
          let x_1391 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1391);
          let x_1395 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1395, 0.0f, 1.0f);
          let x_1399 : vec3<f32> = u_xlat13;
          let x_1401 : vec4<bool> = (vec4<f32>(x_1399.y, x_1399.y, x_1399.z, x_1399.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1402 : vec2<bool> = vec2<bool>(x_1401.x, x_1401.z);
          let x_1403 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1402.x, x_1403.y, x_1402.y);
          let x_1406 : bool = u_xlatb25.x;
          if (x_1406) {
            let x_1411 : f32 = u_xlat13.x;
            x_1407 = x_1411;
          } else {
            let x_1414 : f32 = u_xlat13.x;
            x_1407 = -(x_1414);
          }
          let x_1416 : f32 = x_1407;
          u_xlat25.x = x_1416;
          let x_1419 : bool = u_xlatb25.z;
          if (x_1419) {
            let x_1424 : f32 = u_xlat13.x;
            x_1420 = x_1424;
          } else {
            let x_1427 : f32 = u_xlat13.x;
            x_1420 = -(x_1427);
          }
          let x_1429 : f32 = x_1420;
          u_xlat25.z = x_1429;
          let x_1431 : vec4<f32> = u_xlat12;
          let x_1433 : f32 = u_xlat52;
          let x_1436 : vec3<f32> = u_xlat25;
          let x_1438 : vec2<f32> = ((vec2<f32>(x_1431.x, x_1431.y) * vec2<f32>(x_1433, x_1433)) + vec2<f32>(x_1436.x, x_1436.z));
          let x_1439 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1438.x, x_1439.y, x_1438.y);
          let x_1441 : vec3<f32> = u_xlat25;
          let x_1444 : vec2<f32> = ((vec2<f32>(x_1441.x, x_1441.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1445 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1444.x, x_1445.y, x_1444.y);
          let x_1447 : vec3<f32> = u_xlat25;
          let x_1451 : vec2<f32> = clamp(vec2<f32>(x_1447.x, x_1447.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1452 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1451.x, x_1452.y, x_1451.y);
          let x_1454 : i32 = u_xlati47;
          let x_1456 : vec4<f32> = x_356.x_AdditionalLightsCookieAtlasUVRects[x_1454];
          let x_1458 : vec3<f32> = u_xlat25;
          let x_1461 : i32 = u_xlati47;
          let x_1463 : vec4<f32> = x_356.x_AdditionalLightsCookieAtlasUVRects[x_1461];
          let x_1465 : vec2<f32> = ((vec2<f32>(x_1456.x, x_1456.y) * vec2<f32>(x_1458.x, x_1458.z)) + vec2<f32>(x_1463.z, x_1463.w));
          let x_1466 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1465.x, x_1466.y, x_1465.y, x_1466.w);
        }
      }
      let x_1473 : vec4<f32> = u_xlat11;
      let x_1475 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1473.x, x_1473.z), 0.0f);
      u_xlat11 = x_1475;
      let x_1477 : bool = u_xlatb4.z;
      if (x_1477) {
        let x_1482 : f32 = u_xlat11.w;
        x_1478 = x_1482;
      } else {
        let x_1485 : f32 = u_xlat11.x;
        x_1478 = x_1485;
      }
      let x_1486 : f32 = x_1478;
      u_xlat52 = x_1486;
      let x_1488 : bool = u_xlatb4.x;
      if (x_1488) {
        let x_1492 : vec4<f32> = u_xlat11;
        x_1489 = vec3<f32>(x_1492.x, x_1492.y, x_1492.z);
      } else {
        let x_1495 : f32 = u_xlat52;
        x_1489 = vec3<f32>(x_1495, x_1495, x_1495);
      }
      let x_1497 : vec3<f32> = x_1489;
      let x_1498 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1497.x, x_1497.y, x_1497.z, x_1498.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1504 : vec4<f32> = u_xlat11;
    let x_1506 : i32 = u_xlati47;
    let x_1508 : vec4<f32> = x_818.x_AdditionalLightsColor[x_1506];
    let x_1510 : vec3<f32> = (vec3<f32>(x_1504.x, x_1504.y, x_1504.z) * vec3<f32>(x_1508.x, x_1508.y, x_1508.z));
    let x_1511 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1510.x, x_1510.y, x_1510.z, x_1511.w);
    let x_1513 : f32 = u_xlat48;
    let x_1514 : f32 = u_xlat51;
    u_xlat47 = (x_1513 * x_1514);
    let x_1516 : vec3<f32> = u_xlat15;
    let x_1517 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(x_1516, x_1517);
    let x_1519 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1519, 0.0f, 1.0f);
    let x_1521 : f32 = u_xlat47;
    let x_1522 : f32 = u_xlat48;
    u_xlat47 = (x_1521 * x_1522);
    let x_1524 : f32 = u_xlat47;
    let x_1526 : vec4<f32> = u_xlat11;
    let x_1528 : vec3<f32> = (vec3<f32>(x_1524, x_1524, x_1524) * vec3<f32>(x_1526.x, x_1526.y, x_1526.z));
    let x_1529 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1528.x, x_1528.y, x_1528.z, x_1529.w);
    let x_1531 : vec3<f32> = u_xlat9;
    let x_1532 : f32 = u_xlat49;
    let x_1535 : vec3<f32> = u_xlat6;
    u_xlat9 = ((x_1531 * vec3<f32>(x_1532, x_1532, x_1532)) + x_1535);
    let x_1537 : vec3<f32> = u_xlat9;
    let x_1538 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1537, x_1538);
    let x_1540 : f32 = u_xlat47;
    u_xlat47 = max(x_1540, 1.17549435e-38f);
    let x_1542 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1542);
    let x_1544 : f32 = u_xlat47;
    let x_1546 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1544, x_1544, x_1544) * x_1546);
    let x_1548 : vec3<f32> = u_xlat15;
    let x_1549 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1548, x_1549);
    let x_1551 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1551, 0.0f, 1.0f);
    let x_1553 : vec3<f32> = u_xlat10;
    let x_1554 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1553, x_1554);
    let x_1556 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1556, 0.0f, 1.0f);
    let x_1558 : f32 = u_xlat47;
    let x_1559 : f32 = u_xlat47;
    u_xlat47 = (x_1558 * x_1559);
    let x_1561 : f32 = u_xlat47;
    let x_1563 : f32 = u_xlat8.x;
    u_xlat47 = ((x_1561 * x_1563) + 1.00001001358032226562f);
    let x_1566 : f32 = u_xlat48;
    let x_1567 : f32 = u_xlat48;
    u_xlat48 = (x_1566 * x_1567);
    let x_1569 : f32 = u_xlat47;
    let x_1570 : f32 = u_xlat47;
    u_xlat47 = (x_1569 * x_1570);
    let x_1572 : f32 = u_xlat48;
    u_xlat48 = max(x_1572, 0.10000000149011611938f);
    let x_1574 : f32 = u_xlat47;
    let x_1575 : f32 = u_xlat48;
    u_xlat47 = (x_1574 * x_1575);
    let x_1577 : f32 = u_xlat17;
    let x_1578 : f32 = u_xlat47;
    u_xlat47 = (x_1577 * x_1578);
    let x_1580 : f32 = u_xlat18;
    let x_1581 : f32 = u_xlat47;
    u_xlat47 = (x_1580 / x_1581);
    let x_1583 : vec4<f32> = u_xlat0;
    let x_1585 : f32 = u_xlat47;
    let x_1588 : vec4<f32> = u_xlat3;
    u_xlat9 = ((vec3<f32>(x_1583.x, x_1583.y, x_1583.z) * vec3<f32>(x_1585, x_1585, x_1585)) + vec3<f32>(x_1588.x, x_1588.z, x_1588.w));
    let x_1591 : vec3<f32> = u_xlat9;
    let x_1592 : vec4<f32> = u_xlat11;
    let x_1595 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1591 * vec3<f32>(x_1592.x, x_1592.y, x_1592.z)) + x_1595);

    continuing {
      let x_1597 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1597 + bitcast<u32>(1i));
    }
  }
  let x_1599 : vec4<f32> = u_xlat7;
  let x_1601 : vec4<f32> = u_xlat5;
  let x_1604 : vec3<f32> = u_xlat16;
  let x_1605 : vec3<f32> = ((vec3<f32>(x_1599.x, x_1599.y, x_1599.z) * vec3<f32>(x_1601.x, x_1601.y, x_1601.z)) + x_1604);
  let x_1606 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1605.x, x_1605.y, x_1605.z, x_1606.w);
  let x_1608 : vec3<f32> = u_xlat22;
  let x_1609 : vec4<f32> = u_xlat0;
  let x_1611 : vec3<f32> = (x_1608 + vec3<f32>(x_1609.x, x_1609.y, x_1609.z));
  let x_1612 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1611.x, x_1611.y, x_1611.z, x_1612.w);
  let x_1614 : f32 = u_xlat2;
  let x_1615 : f32 = u_xlat2;
  u_xlat42 = (x_1614 * -(x_1615));
  let x_1618 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1618);
  let x_1620 : vec4<f32> = u_xlat0;
  let x_1624 : vec4<f32> = x_29.unity_FogColor;
  let x_1627 : vec3<f32> = (vec3<f32>(x_1620.x, x_1620.y, x_1620.z) + -(vec3<f32>(x_1624.x, x_1624.y, x_1624.z)));
  let x_1628 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1627.x, x_1627.y, x_1627.z, x_1628.w);
  let x_1632 : f32 = u_xlat42;
  let x_1634 : vec4<f32> = u_xlat0;
  let x_1638 : vec4<f32> = x_29.unity_FogColor;
  let x_1640 : vec3<f32> = ((vec3<f32>(x_1632, x_1632, x_1632) * vec3<f32>(x_1634.x, x_1634.y, x_1634.z)) + vec3<f32>(x_1638.x, x_1638.y, x_1638.z));
  let x_1641 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1640.x, x_1640.y, x_1640.z, x_1641.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


