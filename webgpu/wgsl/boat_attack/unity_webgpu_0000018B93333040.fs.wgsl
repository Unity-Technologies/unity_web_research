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

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_108 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat44 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat42 : f32;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb16 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat30 : f32;

@group(1) @binding(4) var<uniform> x_540 : LightCookies;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb19 : vec2<bool>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_731 : UnityPerDraw;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatu45 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati45 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_992 : AdditionalLights;

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

var<private> u_xlatu30 : u32;

var<private> u_xlatb45 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_492 : f32;
  var x_625 : f32;
  var x_636 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1124 : f32;
  var x_1135 : f32;
  var txVec1 : vec3<f32>;
  var x_1581 : f32;
  var x_1594 : f32;
  var x_1652 : f32;
  var x_1663 : vec3<f32>;
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
  let x_100 : vec3<f32> = vs_TEXCOORD7;
  let x_111 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres0;
  let x_114 : vec3<f32> = (x_100 + -(vec3<f32>(x_111.x, x_111.y, x_111.z)));
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_118 : vec3<f32> = vs_TEXCOORD7;
  let x_121 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres1;
  let x_124 : vec3<f32> = (x_118 + -(vec3<f32>(x_121.x, x_121.y, x_121.z)));
  let x_125 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_124.x, x_124.y, x_124.z, x_125.w);
  let x_128 : vec3<f32> = vs_TEXCOORD7;
  let x_131 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres2;
  u_xlat4 = (x_128 + -(vec3<f32>(x_131.x, x_131.y, x_131.z)));
  let x_136 : vec3<f32> = vs_TEXCOORD7;
  let x_139 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_136 + -(vec3<f32>(x_139.x, x_139.y, x_139.z)));
  let x_143 : vec4<f32> = u_xlat2;
  let x_145 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_143.x, x_143.y, x_143.z), vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_149 : vec4<f32> = u_xlat3;
  let x_151 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_149.x, x_149.y, x_149.z), vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_156 : vec3<f32> = u_xlat4;
  let x_157 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_156, x_157);
  let x_161 : vec3<f32> = u_xlat5;
  let x_162 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_161, x_162);
  let x_169 : vec4<f32> = u_xlat2;
  let x_172 : vec4<f32> = x_108.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_169 < x_172);
  let x_175 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_175);
  let x_180 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_180);
  let x_184 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_184);
  let x_188 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_188);
  let x_192 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_192);
  let x_198 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_198);
  let x_202 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_202);
  let x_205 : vec4<f32> = u_xlat2;
  let x_207 : vec4<f32> = u_xlat3;
  let x_209 : vec3<f32> = (vec3<f32>(x_205.x, x_205.y, x_205.z) + vec3<f32>(x_207.y, x_207.z, x_207.w));
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec4<f32> = u_xlat2;
  let x_215 : vec3<f32> = max(vec3<f32>(x_212.x, x_212.y, x_212.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_216 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_216.x, x_215.x, x_215.y, x_215.z);
  let x_218 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_218, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_226 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_226) + 4.0f);
  let x_233 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_233);
  let x_237 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_237) << bitcast<u32>(2i));
  let x_241 : vec3<f32> = vs_TEXCOORD7;
  let x_243 : i32 = u_xlati2;
  let x_246 : i32 = u_xlati2;
  let x_250 : vec4<f32> = x_108.x_MainLightWorldToShadow[((x_243 + 1i) / 4i)][((x_246 + 1i) % 4i)];
  u_xlat16 = (vec3<f32>(x_241.y, x_241.y, x_241.y) * vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_253 : i32 = u_xlati2;
  let x_255 : i32 = u_xlati2;
  let x_258 : vec4<f32> = x_108.x_MainLightWorldToShadow[(x_253 / 4i)][(x_255 % 4i)];
  let x_260 : vec3<f32> = vs_TEXCOORD7;
  let x_263 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260.x, x_260.x, x_260.x)) + x_263);
  let x_265 : i32 = u_xlati2;
  let x_268 : i32 = u_xlati2;
  let x_272 : vec4<f32> = x_108.x_MainLightWorldToShadow[((x_265 + 2i) / 4i)][((x_268 + 2i) % 4i)];
  let x_274 : vec3<f32> = vs_TEXCOORD7;
  let x_277 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_272.x, x_272.y, x_272.z) * vec3<f32>(x_274.z, x_274.z, x_274.z)) + x_277);
  let x_279 : vec3<f32> = u_xlat16;
  let x_280 : i32 = u_xlati2;
  let x_283 : i32 = u_xlati2;
  let x_287 : vec4<f32> = x_108.x_MainLightWorldToShadow[((x_280 + 3i) / 4i)][((x_283 + 3i) % 4i)];
  let x_289 : vec3<f32> = (x_279 + vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_295 : f32 = vs_TEXCOORD7.y;
  let x_298 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat44 = (x_295 * x_298);
  let x_301 : f32 = x_29.unity_MatrixV[0i].z;
  let x_303 : f32 = vs_TEXCOORD7.x;
  let x_305 : f32 = u_xlat44;
  u_xlat44 = ((x_301 * x_303) + x_305);
  let x_308 : f32 = x_29.unity_MatrixV[2i].z;
  let x_310 : f32 = vs_TEXCOORD7.z;
  let x_312 : f32 = u_xlat44;
  u_xlat44 = ((x_308 * x_310) + x_312);
  let x_314 : f32 = u_xlat44;
  let x_316 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat44 = (x_314 + x_316);
  let x_318 : f32 = u_xlat44;
  let x_321 : f32 = x_29.x_ProjectionParams.y;
  u_xlat44 = (-(x_318) + -(x_321));
  let x_324 : f32 = u_xlat44;
  u_xlat44 = max(x_324, 0.0f);
  let x_326 : f32 = u_xlat44;
  let x_329 : f32 = x_29.unity_FogParams.x;
  u_xlat44 = (x_326 * x_329);
  let x_336 : vec4<f32> = vs_TEXCOORD0;
  let x_339 : f32 = x_29.x_GlobalMipBias.x;
  let x_340 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_336.z, x_336.w), x_339);
  u_xlat3 = x_340;
  let x_345 : vec4<f32> = vs_TEXCOORD0;
  let x_348 : f32 = x_29.x_GlobalMipBias.x;
  let x_349 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_345.z, x_345.w), x_348);
  u_xlat4 = vec3<f32>(x_349.x, x_349.y, x_349.z);
  let x_351 : vec4<f32> = u_xlat3;
  let x_355 : vec3<f32> = (vec3<f32>(x_351.x, x_351.y, x_351.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_356 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec3<f32> = u_xlat15;
  let x_359 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_358, vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_364 : f32 = u_xlat3.x;
  u_xlat3.x = (x_364 + 0.5f);
  let x_368 : vec4<f32> = u_xlat3;
  let x_370 : vec3<f32> = u_xlat4;
  let x_371 : vec3<f32> = (vec3<f32>(x_368.x, x_368.x, x_368.x) * x_370);
  let x_372 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_376 : f32 = u_xlat3.w;
  u_xlat45 = max(x_376, 0.00009999999747378752f);
  let x_379 : vec4<f32> = u_xlat3;
  let x_381 : f32 = u_xlat45;
  let x_383 : vec3<f32> = (vec3<f32>(x_379.x, x_379.y, x_379.z) / vec3<f32>(x_381, x_381, x_381));
  let x_384 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : f32 = u_xlat1;
  u_xlat45 = ((-(x_386) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_391 : f32 = u_xlat45;
  u_xlat4.x = (-(x_391) + 1.0f);
  let x_396 : vec4<f32> = u_xlat0;
  let x_398 : f32 = u_xlat45;
  u_xlat18 = (vec3<f32>(x_396.x, x_396.y, x_396.z) * vec3<f32>(x_398, x_398, x_398));
  let x_401 : vec4<f32> = u_xlat0;
  let x_405 : vec3<f32> = (vec3<f32>(x_401.x, x_401.y, x_401.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_406 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : f32 = u_xlat1;
  let x_410 : vec4<f32> = u_xlat0;
  let x_415 : vec3<f32> = ((vec3<f32>(x_408, x_408, x_408) * vec3<f32>(x_410.x, x_410.y, x_410.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_416 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_419 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_419) + 1.0f);
  let x_422 : f32 = u_xlat1;
  let x_423 : f32 = u_xlat1;
  u_xlat45 = (x_422 * x_423);
  let x_425 : f32 = u_xlat45;
  u_xlat45 = max(x_425, 0.0078125f);
  let x_428 : f32 = u_xlat45;
  let x_429 : f32 = u_xlat45;
  u_xlat5.x = (x_428 * x_429);
  let x_434 : f32 = u_xlat0.w;
  let x_436 : f32 = u_xlat4.x;
  u_xlat42 = (x_434 + x_436);
  let x_438 : f32 = u_xlat42;
  u_xlat42 = clamp(x_438, 0.0f, 1.0f);
  let x_440 : f32 = u_xlat45;
  u_xlat4.x = ((x_440 * 4.0f) + 2.0f);
  let x_446 : vec4<f32> = u_xlat2;
  let x_447 : vec2<f32> = vec2<f32>(x_446.x, x_446.y);
  let x_449 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_447.x, x_447.y, x_449);
  let x_461 : vec3<f32> = txVec0;
  let x_463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_461.xy, x_461.z);
  u_xlat2.x = x_463;
  let x_466 : f32 = x_108.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_466) + 1.0f);
  let x_471 : f32 = u_xlat2.x;
  let x_473 : f32 = x_108.x_MainLightShadowParams.x;
  let x_476 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_471 * x_473) + x_476);
  let x_481 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_481);
  let x_485 : f32 = u_xlat2.z;
  u_xlatb30 = (x_485 >= 1.0f);
  let x_487 : bool = u_xlatb30;
  let x_488 : bool = u_xlatb16;
  u_xlatb16 = (x_487 | x_488);
  let x_490 : bool = u_xlatb16;
  if (x_490) {
    x_492 = 1.0f;
  } else {
    let x_497 : f32 = u_xlat2.x;
    x_492 = x_497;
  }
  let x_498 : f32 = x_492;
  u_xlat2.x = x_498;
  let x_501 : vec3<f32> = vs_TEXCOORD7;
  let x_504 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat19 = (x_501 + -(x_504));
  let x_507 : vec3<f32> = u_xlat19;
  let x_508 : vec3<f32> = u_xlat19;
  u_xlat16.x = dot(x_507, x_508);
  let x_513 : f32 = u_xlat16.x;
  let x_515 : f32 = x_108.x_MainLightShadowParams.z;
  let x_518 : f32 = x_108.x_MainLightShadowParams.w;
  u_xlat30 = ((x_513 * x_515) + x_518);
  let x_520 : f32 = u_xlat30;
  u_xlat30 = clamp(x_520, 0.0f, 1.0f);
  let x_523 : f32 = u_xlat2.x;
  u_xlat19.x = (-(x_523) + 1.0f);
  let x_527 : f32 = u_xlat30;
  let x_529 : f32 = u_xlat19.x;
  let x_532 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_527 * x_529) + x_532);
  let x_542 : f32 = x_540.x_MainLightCookieTextureFormat;
  u_xlatb30 = !((x_542 == -1.0f));
  let x_544 : bool = u_xlatb30;
  if (x_544) {
    let x_547 : vec3<f32> = vs_TEXCOORD7;
    let x_550 : vec4<f32> = x_540.x_MainLightWorldToLight[1i];
    let x_552 : vec2<f32> = (vec2<f32>(x_547.y, x_547.y) * vec2<f32>(x_550.x, x_550.y));
    let x_553 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_552.x, x_552.y, x_553.z);
    let x_556 : vec4<f32> = x_540.x_MainLightWorldToLight[0i];
    let x_558 : vec3<f32> = vs_TEXCOORD7;
    let x_561 : vec3<f32> = u_xlat19;
    let x_563 : vec2<f32> = ((vec2<f32>(x_556.x, x_556.y) * vec2<f32>(x_558.x, x_558.x)) + vec2<f32>(x_561.x, x_561.y));
    let x_564 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_563.x, x_563.y, x_564.z);
    let x_567 : vec4<f32> = x_540.x_MainLightWorldToLight[2i];
    let x_569 : vec3<f32> = vs_TEXCOORD7;
    let x_572 : vec3<f32> = u_xlat19;
    let x_574 : vec2<f32> = ((vec2<f32>(x_567.x, x_567.y) * vec2<f32>(x_569.z, x_569.z)) + vec2<f32>(x_572.x, x_572.y));
    let x_575 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_574.x, x_574.y, x_575.z);
    let x_577 : vec3<f32> = u_xlat19;
    let x_580 : vec4<f32> = x_540.x_MainLightWorldToLight[3i];
    let x_582 : vec2<f32> = (vec2<f32>(x_577.x, x_577.y) + vec2<f32>(x_580.x, x_580.y));
    let x_583 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_582.x, x_582.y, x_583.z);
    let x_585 : vec3<f32> = u_xlat19;
    let x_589 : vec2<f32> = ((vec2<f32>(x_585.x, x_585.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_590 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_589.x, x_589.y, x_590.z);
    let x_598 : vec3<f32> = u_xlat19;
    let x_601 : f32 = x_29.x_GlobalMipBias.x;
    let x_602 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_598.x, x_598.y), x_601);
    u_xlat6 = x_602;
    let x_607 : f32 = x_540.x_MainLightCookieTextureFormat;
    let x_609 : f32 = x_540.x_MainLightCookieTextureFormat;
    let x_611 : f32 = x_540.x_MainLightCookieTextureFormat;
    let x_613 : f32 = x_540.x_MainLightCookieTextureFormat;
    let x_614 : vec4<f32> = vec4<f32>(x_607, x_609, x_611, x_613);
    let x_621 : vec4<bool> = (vec4<f32>(x_614.x, x_614.y, x_614.z, x_614.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_621.x, x_621.y);
    let x_624 : bool = u_xlatb19.y;
    if (x_624) {
      let x_629 : f32 = u_xlat6.w;
      x_625 = x_629;
    } else {
      let x_632 : f32 = u_xlat6.x;
      x_625 = x_632;
    }
    let x_633 : f32 = x_625;
    u_xlat30 = x_633;
    let x_635 : bool = u_xlatb19.x;
    if (x_635) {
      let x_639 : vec4<f32> = u_xlat6;
      x_636 = vec3<f32>(x_639.x, x_639.y, x_639.z);
    } else {
      let x_642 : f32 = u_xlat30;
      x_636 = vec3<f32>(x_642, x_642, x_642);
    }
    let x_644 : vec3<f32> = x_636;
    u_xlat19 = x_644;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_649 : vec3<f32> = u_xlat19;
  let x_651 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat19 = (x_649 * vec3<f32>(x_651.x, x_651.y, x_651.z));
  let x_655 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_655;
  let x_659 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_659;
  let x_663 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_663;
  let x_665 : vec4<f32> = u_xlat6;
  let x_668 : vec3<f32> = u_xlat15;
  u_xlat30 = dot(-(vec3<f32>(x_665.x, x_665.y, x_665.z)), x_668);
  let x_670 : f32 = u_xlat30;
  let x_671 : f32 = u_xlat30;
  u_xlat30 = (x_670 + x_671);
  let x_674 : vec3<f32> = u_xlat15;
  let x_675 : f32 = u_xlat30;
  let x_679 : vec4<f32> = u_xlat6;
  let x_682 : vec3<f32> = ((x_674 * -(vec3<f32>(x_675, x_675, x_675))) + -(vec3<f32>(x_679.x, x_679.y, x_679.z)));
  let x_683 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec3<f32> = u_xlat15;
  let x_686 : vec4<f32> = u_xlat6;
  u_xlat30 = dot(x_685, vec3<f32>(x_686.x, x_686.y, x_686.z));
  let x_689 : f32 = u_xlat30;
  u_xlat30 = clamp(x_689, 0.0f, 1.0f);
  let x_691 : f32 = u_xlat30;
  u_xlat30 = (-(x_691) + 1.0f);
  let x_694 : f32 = u_xlat30;
  let x_695 : f32 = u_xlat30;
  u_xlat30 = (x_694 * x_695);
  let x_697 : f32 = u_xlat30;
  let x_698 : f32 = u_xlat30;
  u_xlat30 = (x_697 * x_698);
  let x_701 : f32 = u_xlat1;
  u_xlat48 = ((-(x_701) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_707 : f32 = u_xlat1;
  let x_708 : f32 = u_xlat48;
  u_xlat1 = (x_707 * x_708);
  let x_710 : f32 = u_xlat1;
  u_xlat1 = (x_710 * 6.0f);
  let x_721 : vec4<f32> = u_xlat7;
  let x_723 : f32 = u_xlat1;
  let x_724 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_721.x, x_721.y, x_721.z), x_723);
  u_xlat7 = x_724;
  let x_726 : f32 = u_xlat7.w;
  u_xlat1 = (x_726 + -1.0f);
  let x_733 : f32 = x_731.unity_SpecCube0_HDR.w;
  let x_734 : f32 = u_xlat1;
  u_xlat1 = ((x_733 * x_734) + 1.0f);
  let x_737 : f32 = u_xlat1;
  u_xlat1 = max(x_737, 0.0f);
  let x_739 : f32 = u_xlat1;
  u_xlat1 = log2(x_739);
  let x_741 : f32 = u_xlat1;
  let x_743 : f32 = x_731.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_741 * x_743);
  let x_745 : f32 = u_xlat1;
  u_xlat1 = exp2(x_745);
  let x_747 : f32 = u_xlat1;
  let x_749 : f32 = x_731.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_747 * x_749);
  let x_751 : vec4<f32> = u_xlat7;
  let x_753 : f32 = u_xlat1;
  let x_755 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) * vec3<f32>(x_753, x_753, x_753));
  let x_756 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_760 : f32 = u_xlat45;
  let x_762 : f32 = u_xlat45;
  u_xlat8 = ((vec2<f32>(x_760, x_760) * vec2<f32>(x_762, x_762)) + vec2<f32>(-1.0f, 1.0f));
  let x_768 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_768);
  let x_771 : vec4<f32> = u_xlat0;
  let x_774 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_771.x, x_771.y, x_771.z)) + vec3<f32>(x_774, x_774, x_774));
  let x_777 : f32 = u_xlat30;
  let x_779 : vec3<f32> = u_xlat22;
  let x_781 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_777, x_777, x_777) * x_779) + vec3<f32>(x_781.x, x_781.y, x_781.z));
  let x_784 : f32 = u_xlat1;
  let x_786 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_784, x_784, x_784) * x_786);
  let x_788 : vec4<f32> = u_xlat7;
  let x_790 : vec3<f32> = u_xlat22;
  let x_791 : vec3<f32> = (vec3<f32>(x_788.x, x_788.y, x_788.z) * x_790);
  let x_792 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_794 : vec4<f32> = u_xlat3;
  let x_796 : vec3<f32> = u_xlat18;
  let x_798 : vec4<f32> = u_xlat7;
  let x_800 : vec3<f32> = ((vec3<f32>(x_794.x, x_794.y, x_794.z) * x_796) + vec3<f32>(x_798.x, x_798.y, x_798.z));
  let x_801 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_804 : f32 = u_xlat2.x;
  let x_806 : f32 = x_731.unity_LightData.z;
  u_xlat42 = (x_804 * x_806);
  let x_808 : vec3<f32> = u_xlat15;
  let x_810 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_808, vec3<f32>(x_810.x, x_810.y, x_810.z));
  let x_813 : f32 = u_xlat1;
  u_xlat1 = clamp(x_813, 0.0f, 1.0f);
  let x_815 : f32 = u_xlat42;
  let x_816 : f32 = u_xlat1;
  u_xlat42 = (x_815 * x_816);
  let x_818 : f32 = u_xlat42;
  let x_820 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_818, x_818, x_818) * x_820);
  let x_822 : vec4<f32> = u_xlat6;
  let x_825 : vec4<f32> = x_29.x_MainLightPosition;
  let x_827 : vec3<f32> = (vec3<f32>(x_822.x, x_822.y, x_822.z) + vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat7;
  let x_832 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_830.x, x_830.y, x_830.z), vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_835 : f32 = u_xlat42;
  u_xlat42 = max(x_835, 1.17549435e-38f);
  let x_838 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_838);
  let x_840 : f32 = u_xlat42;
  let x_842 : vec4<f32> = u_xlat7;
  let x_844 : vec3<f32> = (vec3<f32>(x_840, x_840, x_840) * vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_847 : vec3<f32> = u_xlat15;
  let x_848 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_847, vec3<f32>(x_848.x, x_848.y, x_848.z));
  let x_851 : f32 = u_xlat42;
  u_xlat42 = clamp(x_851, 0.0f, 1.0f);
  let x_854 : vec4<f32> = x_29.x_MainLightPosition;
  let x_856 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_854.x, x_854.y, x_854.z), vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : f32 = u_xlat1;
  u_xlat1 = clamp(x_859, 0.0f, 1.0f);
  let x_861 : f32 = u_xlat42;
  let x_862 : f32 = u_xlat42;
  u_xlat42 = (x_861 * x_862);
  let x_864 : f32 = u_xlat42;
  let x_866 : f32 = u_xlat8.x;
  u_xlat42 = ((x_864 * x_866) + 1.00001001358032226562f);
  let x_870 : f32 = u_xlat1;
  let x_871 : f32 = u_xlat1;
  u_xlat1 = (x_870 * x_871);
  let x_873 : f32 = u_xlat42;
  let x_874 : f32 = u_xlat42;
  u_xlat42 = (x_873 * x_874);
  let x_876 : f32 = u_xlat1;
  u_xlat1 = max(x_876, 0.10000000149011611938f);
  let x_879 : f32 = u_xlat42;
  let x_880 : f32 = u_xlat1;
  u_xlat42 = (x_879 * x_880);
  let x_883 : f32 = u_xlat4.x;
  let x_884 : f32 = u_xlat42;
  u_xlat42 = (x_883 * x_884);
  let x_887 : f32 = u_xlat5.x;
  let x_888 : f32 = u_xlat42;
  u_xlat42 = (x_887 / x_888);
  let x_890 : vec4<f32> = u_xlat0;
  let x_892 : f32 = u_xlat42;
  let x_895 : vec3<f32> = u_xlat18;
  let x_896 : vec3<f32> = ((vec3<f32>(x_890.x, x_890.y, x_890.z) * vec3<f32>(x_892, x_892, x_892)) + x_895);
  let x_897 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_900 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_902 : f32 = x_731.unity_LightData.y;
  u_xlat42 = min(x_900, x_902);
  let x_905 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_905));
  let x_909 : f32 = u_xlat16.x;
  let x_912 : f32 = x_108.x_AdditionalShadowFadeParams.x;
  let x_915 : f32 = x_108.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_909 * x_912) + x_915);
  let x_917 : f32 = u_xlat1;
  u_xlat1 = clamp(x_917, 0.0f, 1.0f);
  let x_920 : f32 = x_540.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_922 : f32 = x_540.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_924 : f32 = x_540.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_926 : f32 = x_540.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_927 : vec4<f32> = vec4<f32>(x_920, x_922, x_924, x_926);
  let x_933 : vec4<bool> = (vec4<f32>(x_927.x, x_927.y, x_927.z, x_927.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_934 : vec2<bool> = vec2<bool>(x_933.x, x_933.y);
  let x_935 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_934.x, x_934.y, x_935.z, x_935.w);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_947 : u32 = u_xlatu_loop_1;
    let x_948 : u32 = u_xlatu42;
    if ((x_947 < x_948)) {
    } else {
      break;
    }
    let x_951 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_951 >> 2u);
    let x_954 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_954 & 3u));
    let x_957 : u32 = u_xlatu45;
    let x_960 : vec4<f32> = x_731.unity_LightIndices[bitcast<i32>(x_957)];
    let x_970 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_975 : vec4<u32> = indexable[x_970];
    u_xlat45 = dot(x_960, bitcast<vec4<f32>>(x_975));
    let x_979 : f32 = u_xlat45;
    u_xlati45 = i32(x_979);
    let x_982 : vec3<f32> = vs_TEXCOORD7;
    let x_993 : i32 = u_xlati45;
    let x_995 : vec4<f32> = x_992.x_AdditionalLightsPosition[x_993];
    let x_998 : i32 = u_xlati45;
    let x_1000 : vec4<f32> = x_992.x_AdditionalLightsPosition[x_998];
    u_xlat9 = ((-(x_982) * vec3<f32>(x_995.w, x_995.w, x_995.w)) + vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
    let x_1003 : vec3<f32> = u_xlat9;
    let x_1004 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1003, x_1004);
    let x_1006 : f32 = u_xlat48;
    u_xlat48 = max(x_1006, 0.00006103515625f);
    let x_1010 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1010);
    let x_1013 : f32 = u_xlat49;
    let x_1015 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1013, x_1013, x_1013) * x_1015);
    let x_1018 : f32 = u_xlat48;
    u_xlat51 = (1.0f / x_1018);
    let x_1020 : f32 = u_xlat48;
    let x_1021 : i32 = u_xlati45;
    let x_1023 : f32 = x_992.x_AdditionalLightsAttenuation[x_1021].x;
    u_xlat48 = (x_1020 * x_1023);
    let x_1025 : f32 = u_xlat48;
    let x_1027 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1025) * x_1027) + 1.0f);
    let x_1030 : f32 = u_xlat48;
    u_xlat48 = max(x_1030, 0.0f);
    let x_1032 : f32 = u_xlat48;
    let x_1033 : f32 = u_xlat48;
    u_xlat48 = (x_1032 * x_1033);
    let x_1035 : f32 = u_xlat48;
    let x_1036 : f32 = u_xlat51;
    u_xlat48 = (x_1035 * x_1036);
    let x_1038 : i32 = u_xlati45;
    let x_1040 : vec4<f32> = x_992.x_AdditionalLightsSpotDir[x_1038];
    let x_1042 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1040.x, x_1040.y, x_1040.z), x_1042);
    let x_1044 : f32 = u_xlat51;
    let x_1045 : i32 = u_xlati45;
    let x_1047 : f32 = x_992.x_AdditionalLightsAttenuation[x_1045].z;
    let x_1049 : i32 = u_xlati45;
    let x_1051 : f32 = x_992.x_AdditionalLightsAttenuation[x_1049].w;
    u_xlat51 = ((x_1044 * x_1047) + x_1051);
    let x_1053 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1053, 0.0f, 1.0f);
    let x_1055 : f32 = u_xlat51;
    let x_1056 : f32 = u_xlat51;
    u_xlat51 = (x_1055 * x_1056);
    let x_1058 : f32 = u_xlat48;
    let x_1059 : f32 = u_xlat51;
    u_xlat48 = (x_1058 * x_1059);
    let x_1063 : i32 = u_xlati45;
    let x_1065 : f32 = x_108.x_AdditionalShadowParams[x_1063].w;
    u_xlati51 = i32(x_1065);
    let x_1068 : i32 = u_xlati51;
    u_xlatb52 = (x_1068 >= 0i);
    let x_1070 : bool = u_xlatb52;
    if (x_1070) {
      let x_1074 : i32 = u_xlati45;
      let x_1076 : f32 = x_108.x_AdditionalShadowParams[x_1074].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1076, x_1076, x_1076, x_1076))));
      let x_1080 : bool = u_xlatb52;
      if (x_1080) {
        let x_1084 : vec3<f32> = u_xlat10;
        let x_1087 : vec3<f32> = u_xlat10;
        let x_1090 : vec4<bool> = (abs(vec4<f32>(x_1084.z, x_1084.z, x_1084.y, x_1084.z)) >= abs(vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.x)));
        let x_1092 : vec3<bool> = vec3<bool>(x_1090.x, x_1090.y, x_1090.z);
        let x_1093 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
        let x_1096 : bool = u_xlatb11.y;
        let x_1098 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1096 & x_1098);
        let x_1100 : vec3<f32> = u_xlat10;
        let x_1103 : vec4<bool> = (-(vec4<f32>(x_1100.z, x_1100.y, x_1100.z, x_1100.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1104 : vec3<bool> = vec3<bool>(x_1103.x, x_1103.y, x_1103.w);
        let x_1105 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1104.x, x_1104.y, x_1105.z, x_1104.z);
        let x_1109 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1109);
        let x_1114 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1114);
        let x_1119 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1119);
        let x_1123 : bool = u_xlatb11.z;
        if (x_1123) {
          let x_1128 : f32 = u_xlat11.y;
          x_1124 = x_1128;
        } else {
          let x_1130 : f32 = u_xlat53;
          x_1124 = x_1130;
        }
        let x_1131 : f32 = x_1124;
        u_xlat25.x = x_1131;
        let x_1134 : bool = u_xlatb52;
        if (x_1134) {
          let x_1139 : f32 = u_xlat11.x;
          x_1135 = x_1139;
        } else {
          let x_1142 : f32 = u_xlat25.x;
          x_1135 = x_1142;
        }
        let x_1143 : f32 = x_1135;
        u_xlat52 = x_1143;
        let x_1144 : i32 = u_xlati45;
        let x_1146 : f32 = x_108.x_AdditionalShadowParams[x_1144].w;
        u_xlat11.x = trunc(x_1146);
        let x_1149 : f32 = u_xlat52;
        let x_1151 : f32 = u_xlat11.x;
        u_xlat52 = (x_1149 + x_1151);
        let x_1153 : f32 = u_xlat52;
        u_xlati51 = i32(x_1153);
      }
      let x_1155 : i32 = u_xlati51;
      u_xlati51 = (x_1155 << bitcast<u32>(2i));
      let x_1157 : vec3<f32> = vs_TEXCOORD7;
      let x_1160 : i32 = u_xlati51;
      let x_1163 : i32 = u_xlati51;
      let x_1167 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[((x_1160 + 1i) / 4i)][((x_1163 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1157.y, x_1157.y, x_1157.y, x_1157.y) * x_1167);
      let x_1169 : i32 = u_xlati51;
      let x_1171 : i32 = u_xlati51;
      let x_1174 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[(x_1169 / 4i)][(x_1171 % 4i)];
      let x_1175 : vec3<f32> = vs_TEXCOORD7;
      let x_1178 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1174 * vec4<f32>(x_1175.x, x_1175.x, x_1175.x, x_1175.x)) + x_1178);
      let x_1180 : i32 = u_xlati51;
      let x_1183 : i32 = u_xlati51;
      let x_1187 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[((x_1180 + 2i) / 4i)][((x_1183 + 2i) % 4i)];
      let x_1188 : vec3<f32> = vs_TEXCOORD7;
      let x_1191 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1187 * vec4<f32>(x_1188.z, x_1188.z, x_1188.z, x_1188.z)) + x_1191);
      let x_1193 : vec4<f32> = u_xlat11;
      let x_1194 : i32 = u_xlati51;
      let x_1197 : i32 = u_xlati51;
      let x_1201 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[((x_1194 + 3i) / 4i)][((x_1197 + 3i) % 4i)];
      u_xlat11 = (x_1193 + x_1201);
      let x_1203 : vec4<f32> = u_xlat11;
      let x_1205 : vec4<f32> = u_xlat11;
      let x_1207 : vec3<f32> = (vec3<f32>(x_1203.x, x_1203.y, x_1203.z) / vec3<f32>(x_1205.w, x_1205.w, x_1205.w));
      let x_1208 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
      let x_1211 : vec4<f32> = u_xlat11;
      let x_1212 : vec2<f32> = vec2<f32>(x_1211.x, x_1211.y);
      let x_1214 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1212.x, x_1212.y, x_1214);
      let x_1222 : vec3<f32> = txVec1;
      let x_1224 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1222.xy, x_1222.z);
      u_xlat51 = x_1224;
      let x_1225 : i32 = u_xlati45;
      let x_1227 : f32 = x_108.x_AdditionalShadowParams[x_1225].x;
      u_xlat52 = (1.0f + -(x_1227));
      let x_1230 : f32 = u_xlat51;
      let x_1231 : i32 = u_xlati45;
      let x_1233 : f32 = x_108.x_AdditionalShadowParams[x_1231].x;
      let x_1235 : f32 = u_xlat52;
      u_xlat51 = ((x_1230 * x_1233) + x_1235);
      let x_1238 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1238);
      let x_1241 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1241 >= 1.0f);
      let x_1244 : bool = u_xlatb52;
      let x_1246 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1244 | x_1246);
      let x_1248 : bool = u_xlatb52;
      let x_1249 : f32 = u_xlat51;
      u_xlat51 = select(x_1249, 1.0f, x_1248);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1252 : f32 = u_xlat51;
    u_xlat52 = (-(x_1252) + 1.0f);
    let x_1255 : f32 = u_xlat1;
    let x_1256 : f32 = u_xlat52;
    let x_1258 : f32 = u_xlat51;
    u_xlat51 = ((x_1255 * x_1256) + x_1258);
    let x_1261 : i32 = u_xlati45;
    u_xlati52 = (1i << bitcast<u32>((x_1261 & 31i)));
    let x_1265 : i32 = u_xlati52;
    let x_1268 : f32 = x_540.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1265) & bitcast<u32>(x_1268)));
    let x_1272 : i32 = u_xlati52;
    if ((x_1272 != 0i)) {
      let x_1276 : i32 = u_xlati45;
      let x_1278 : f32 = x_540.x_AdditionalLightsLightTypes[x_1276].el;
      u_xlati52 = i32(x_1278);
      let x_1281 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1281 != 0i));
      let x_1285 : i32 = u_xlati45;
      u_xlati25 = (x_1285 << bitcast<u32>(2i));
      let x_1287 : i32 = u_xlati11;
      if ((x_1287 != 0i)) {
        let x_1291 : vec3<f32> = vs_TEXCOORD7;
        let x_1293 : i32 = u_xlati25;
        let x_1296 : i32 = u_xlati25;
        let x_1300 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[((x_1293 + 1i) / 4i)][((x_1296 + 1i) % 4i)];
        let x_1302 : vec3<f32> = (vec3<f32>(x_1291.y, x_1291.y, x_1291.y) * vec3<f32>(x_1300.x, x_1300.y, x_1300.w));
        let x_1303 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1302.x, x_1303.y, x_1302.y, x_1302.z);
        let x_1305 : i32 = u_xlati25;
        let x_1307 : i32 = u_xlati25;
        let x_1310 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[(x_1305 / 4i)][(x_1307 % 4i)];
        let x_1312 : vec3<f32> = vs_TEXCOORD7;
        let x_1315 : vec4<f32> = u_xlat11;
        let x_1317 : vec3<f32> = ((vec3<f32>(x_1310.x, x_1310.y, x_1310.w) * vec3<f32>(x_1312.x, x_1312.x, x_1312.x)) + vec3<f32>(x_1315.x, x_1315.z, x_1315.w));
        let x_1318 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1317.x, x_1318.y, x_1317.y, x_1317.z);
        let x_1320 : i32 = u_xlati25;
        let x_1323 : i32 = u_xlati25;
        let x_1327 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[((x_1320 + 2i) / 4i)][((x_1323 + 2i) % 4i)];
        let x_1329 : vec3<f32> = vs_TEXCOORD7;
        let x_1332 : vec4<f32> = u_xlat11;
        let x_1334 : vec3<f32> = ((vec3<f32>(x_1327.x, x_1327.y, x_1327.w) * vec3<f32>(x_1329.z, x_1329.z, x_1329.z)) + vec3<f32>(x_1332.x, x_1332.z, x_1332.w));
        let x_1335 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1334.x, x_1335.y, x_1334.y, x_1334.z);
        let x_1337 : vec4<f32> = u_xlat11;
        let x_1339 : i32 = u_xlati25;
        let x_1342 : i32 = u_xlati25;
        let x_1346 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[((x_1339 + 3i) / 4i)][((x_1342 + 3i) % 4i)];
        let x_1348 : vec3<f32> = (vec3<f32>(x_1337.x, x_1337.z, x_1337.w) + vec3<f32>(x_1346.x, x_1346.y, x_1346.w));
        let x_1349 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1348.x, x_1349.y, x_1348.y, x_1348.z);
        let x_1351 : vec4<f32> = u_xlat11;
        let x_1353 : vec4<f32> = u_xlat11;
        let x_1355 : vec2<f32> = (vec2<f32>(x_1351.x, x_1351.z) / vec2<f32>(x_1353.w, x_1353.w));
        let x_1356 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1355.x, x_1356.y, x_1355.y, x_1356.w);
        let x_1358 : vec4<f32> = u_xlat11;
        let x_1361 : vec2<f32> = ((vec2<f32>(x_1358.x, x_1358.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1362 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1361.x, x_1362.y, x_1361.y, x_1362.w);
        let x_1364 : vec4<f32> = u_xlat11;
        let x_1368 : vec2<f32> = clamp(vec2<f32>(x_1364.x, x_1364.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1369 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1368.x, x_1369.y, x_1368.y, x_1369.w);
        let x_1371 : i32 = u_xlati45;
        let x_1373 : vec4<f32> = x_540.x_AdditionalLightsCookieAtlasUVRects[x_1371];
        let x_1375 : vec4<f32> = u_xlat11;
        let x_1378 : i32 = u_xlati45;
        let x_1380 : vec4<f32> = x_540.x_AdditionalLightsCookieAtlasUVRects[x_1378];
        let x_1382 : vec2<f32> = ((vec2<f32>(x_1373.x, x_1373.y) * vec2<f32>(x_1375.x, x_1375.z)) + vec2<f32>(x_1380.z, x_1380.w));
        let x_1383 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1382.x, x_1383.y, x_1382.y, x_1383.w);
      } else {
        let x_1386 : i32 = u_xlati52;
        u_xlatb52 = (x_1386 == 1i);
        let x_1388 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1388);
        let x_1390 : i32 = u_xlati52;
        if ((x_1390 != 0i)) {
          let x_1395 : vec3<f32> = vs_TEXCOORD7;
          let x_1397 : i32 = u_xlati25;
          let x_1400 : i32 = u_xlati25;
          let x_1404 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[((x_1397 + 1i) / 4i)][((x_1400 + 1i) % 4i)];
          let x_1406 : vec2<f32> = (vec2<f32>(x_1395.y, x_1395.y) * vec2<f32>(x_1404.x, x_1404.y));
          let x_1407 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1406.x, x_1406.y, x_1407.z, x_1407.w);
          let x_1409 : i32 = u_xlati25;
          let x_1411 : i32 = u_xlati25;
          let x_1414 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[(x_1409 / 4i)][(x_1411 % 4i)];
          let x_1416 : vec3<f32> = vs_TEXCOORD7;
          let x_1419 : vec4<f32> = u_xlat12;
          let x_1421 : vec2<f32> = ((vec2<f32>(x_1414.x, x_1414.y) * vec2<f32>(x_1416.x, x_1416.x)) + vec2<f32>(x_1419.x, x_1419.y));
          let x_1422 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1421.x, x_1421.y, x_1422.z, x_1422.w);
          let x_1424 : i32 = u_xlati25;
          let x_1427 : i32 = u_xlati25;
          let x_1431 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[((x_1424 + 2i) / 4i)][((x_1427 + 2i) % 4i)];
          let x_1433 : vec3<f32> = vs_TEXCOORD7;
          let x_1436 : vec4<f32> = u_xlat12;
          let x_1438 : vec2<f32> = ((vec2<f32>(x_1431.x, x_1431.y) * vec2<f32>(x_1433.z, x_1433.z)) + vec2<f32>(x_1436.x, x_1436.y));
          let x_1439 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1438.x, x_1438.y, x_1439.z, x_1439.w);
          let x_1441 : vec4<f32> = u_xlat12;
          let x_1443 : i32 = u_xlati25;
          let x_1446 : i32 = u_xlati25;
          let x_1450 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[((x_1443 + 3i) / 4i)][((x_1446 + 3i) % 4i)];
          let x_1452 : vec2<f32> = (vec2<f32>(x_1441.x, x_1441.y) + vec2<f32>(x_1450.x, x_1450.y));
          let x_1453 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1452.x, x_1452.y, x_1453.z, x_1453.w);
          let x_1455 : vec4<f32> = u_xlat12;
          let x_1458 : vec2<f32> = ((vec2<f32>(x_1455.x, x_1455.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1459 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1458.x, x_1458.y, x_1459.z, x_1459.w);
          let x_1461 : vec4<f32> = u_xlat12;
          let x_1463 : vec2<f32> = fract(vec2<f32>(x_1461.x, x_1461.y));
          let x_1464 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1463.x, x_1463.y, x_1464.z, x_1464.w);
          let x_1466 : i32 = u_xlati45;
          let x_1468 : vec4<f32> = x_540.x_AdditionalLightsCookieAtlasUVRects[x_1466];
          let x_1470 : vec4<f32> = u_xlat12;
          let x_1473 : i32 = u_xlati45;
          let x_1475 : vec4<f32> = x_540.x_AdditionalLightsCookieAtlasUVRects[x_1473];
          let x_1477 : vec2<f32> = ((vec2<f32>(x_1468.x, x_1468.y) * vec2<f32>(x_1470.x, x_1470.y)) + vec2<f32>(x_1475.z, x_1475.w));
          let x_1478 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1477.x, x_1478.y, x_1477.y, x_1478.w);
        } else {
          let x_1481 : vec3<f32> = vs_TEXCOORD7;
          let x_1483 : i32 = u_xlati25;
          let x_1486 : i32 = u_xlati25;
          let x_1490 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[((x_1483 + 1i) / 4i)][((x_1486 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1481.y, x_1481.y, x_1481.y, x_1481.y) * x_1490);
          let x_1492 : i32 = u_xlati25;
          let x_1494 : i32 = u_xlati25;
          let x_1497 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[(x_1492 / 4i)][(x_1494 % 4i)];
          let x_1498 : vec3<f32> = vs_TEXCOORD7;
          let x_1501 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1497 * vec4<f32>(x_1498.x, x_1498.x, x_1498.x, x_1498.x)) + x_1501);
          let x_1503 : i32 = u_xlati25;
          let x_1506 : i32 = u_xlati25;
          let x_1510 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[((x_1503 + 2i) / 4i)][((x_1506 + 2i) % 4i)];
          let x_1511 : vec3<f32> = vs_TEXCOORD7;
          let x_1514 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1510 * vec4<f32>(x_1511.z, x_1511.z, x_1511.z, x_1511.z)) + x_1514);
          let x_1516 : vec4<f32> = u_xlat12;
          let x_1517 : i32 = u_xlati25;
          let x_1520 : i32 = u_xlati25;
          let x_1524 : vec4<f32> = x_540.x_AdditionalLightsWorldToLights[((x_1517 + 3i) / 4i)][((x_1520 + 3i) % 4i)];
          u_xlat12 = (x_1516 + x_1524);
          let x_1526 : vec4<f32> = u_xlat12;
          let x_1528 : vec4<f32> = u_xlat12;
          let x_1530 : vec3<f32> = (vec3<f32>(x_1526.x, x_1526.y, x_1526.z) / vec3<f32>(x_1528.w, x_1528.w, x_1528.w));
          let x_1531 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1530.x, x_1530.y, x_1530.z, x_1531.w);
          let x_1533 : vec4<f32> = u_xlat12;
          let x_1535 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1533.x, x_1533.y, x_1533.z), vec3<f32>(x_1535.x, x_1535.y, x_1535.z));
          let x_1538 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1538);
          let x_1540 : f32 = u_xlat52;
          let x_1542 : vec4<f32> = u_xlat12;
          let x_1544 : vec3<f32> = (vec3<f32>(x_1540, x_1540, x_1540) * vec3<f32>(x_1542.x, x_1542.y, x_1542.z));
          let x_1545 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1544.x, x_1544.y, x_1544.z, x_1545.w);
          let x_1547 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1547.x, x_1547.y, x_1547.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1552 : f32 = u_xlat52;
          u_xlat52 = max(x_1552, 0.00000099999999747524f);
          let x_1555 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1555);
          let x_1558 : f32 = u_xlat52;
          let x_1560 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1558, x_1558, x_1558) * vec3<f32>(x_1560.z, x_1560.x, x_1560.y));
          let x_1564 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1564);
          let x_1568 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1568, 0.0f, 1.0f);
          let x_1573 : vec3<f32> = u_xlat13;
          let x_1575 : vec4<bool> = (vec4<f32>(x_1573.y, x_1573.y, x_1573.z, x_1573.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1576 : vec2<bool> = vec2<bool>(x_1575.x, x_1575.z);
          let x_1577 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1576.x, x_1577.y, x_1576.y);
          let x_1580 : bool = u_xlatb25.x;
          if (x_1580) {
            let x_1585 : f32 = u_xlat13.x;
            x_1581 = x_1585;
          } else {
            let x_1588 : f32 = u_xlat13.x;
            x_1581 = -(x_1588);
          }
          let x_1590 : f32 = x_1581;
          u_xlat25.x = x_1590;
          let x_1593 : bool = u_xlatb25.z;
          if (x_1593) {
            let x_1598 : f32 = u_xlat13.x;
            x_1594 = x_1598;
          } else {
            let x_1601 : f32 = u_xlat13.x;
            x_1594 = -(x_1601);
          }
          let x_1603 : f32 = x_1594;
          u_xlat25.z = x_1603;
          let x_1605 : vec4<f32> = u_xlat12;
          let x_1607 : f32 = u_xlat52;
          let x_1610 : vec3<f32> = u_xlat25;
          let x_1612 : vec2<f32> = ((vec2<f32>(x_1605.x, x_1605.y) * vec2<f32>(x_1607, x_1607)) + vec2<f32>(x_1610.x, x_1610.z));
          let x_1613 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1612.x, x_1613.y, x_1612.y);
          let x_1615 : vec3<f32> = u_xlat25;
          let x_1618 : vec2<f32> = ((vec2<f32>(x_1615.x, x_1615.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1619 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1618.x, x_1619.y, x_1618.y);
          let x_1621 : vec3<f32> = u_xlat25;
          let x_1625 : vec2<f32> = clamp(vec2<f32>(x_1621.x, x_1621.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1626 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1625.x, x_1626.y, x_1625.y);
          let x_1628 : i32 = u_xlati45;
          let x_1630 : vec4<f32> = x_540.x_AdditionalLightsCookieAtlasUVRects[x_1628];
          let x_1632 : vec3<f32> = u_xlat25;
          let x_1635 : i32 = u_xlati45;
          let x_1637 : vec4<f32> = x_540.x_AdditionalLightsCookieAtlasUVRects[x_1635];
          let x_1639 : vec2<f32> = ((vec2<f32>(x_1630.x, x_1630.y) * vec2<f32>(x_1632.x, x_1632.z)) + vec2<f32>(x_1637.z, x_1637.w));
          let x_1640 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1639.x, x_1640.y, x_1639.y, x_1640.w);
        }
      }
      let x_1647 : vec4<f32> = u_xlat11;
      let x_1649 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1647.x, x_1647.z), 0.0f);
      u_xlat11 = x_1649;
      let x_1651 : bool = u_xlatb2.y;
      if (x_1651) {
        let x_1656 : f32 = u_xlat11.w;
        x_1652 = x_1656;
      } else {
        let x_1659 : f32 = u_xlat11.x;
        x_1652 = x_1659;
      }
      let x_1660 : f32 = x_1652;
      u_xlat52 = x_1660;
      let x_1662 : bool = u_xlatb2.x;
      if (x_1662) {
        let x_1666 : vec4<f32> = u_xlat11;
        x_1663 = vec3<f32>(x_1666.x, x_1666.y, x_1666.z);
      } else {
        let x_1669 : f32 = u_xlat52;
        x_1663 = vec3<f32>(x_1669, x_1669, x_1669);
      }
      let x_1671 : vec3<f32> = x_1663;
      let x_1672 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1671.x, x_1671.y, x_1671.z, x_1672.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1678 : vec4<f32> = u_xlat11;
    let x_1680 : i32 = u_xlati45;
    let x_1682 : vec4<f32> = x_992.x_AdditionalLightsColor[x_1680];
    let x_1684 : vec3<f32> = (vec3<f32>(x_1678.x, x_1678.y, x_1678.z) * vec3<f32>(x_1682.x, x_1682.y, x_1682.z));
    let x_1685 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1684.x, x_1684.y, x_1684.z, x_1685.w);
    let x_1687 : f32 = u_xlat48;
    let x_1688 : f32 = u_xlat51;
    u_xlat45 = (x_1687 * x_1688);
    let x_1690 : vec3<f32> = u_xlat15;
    let x_1691 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(x_1690, x_1691);
    let x_1693 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1693, 0.0f, 1.0f);
    let x_1695 : f32 = u_xlat45;
    let x_1696 : f32 = u_xlat48;
    u_xlat45 = (x_1695 * x_1696);
    let x_1698 : f32 = u_xlat45;
    let x_1700 : vec4<f32> = u_xlat11;
    let x_1702 : vec3<f32> = (vec3<f32>(x_1698, x_1698, x_1698) * vec3<f32>(x_1700.x, x_1700.y, x_1700.z));
    let x_1703 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1703.w);
    let x_1705 : vec3<f32> = u_xlat9;
    let x_1706 : f32 = u_xlat49;
    let x_1709 : vec4<f32> = u_xlat6;
    u_xlat9 = ((x_1705 * vec3<f32>(x_1706, x_1706, x_1706)) + vec3<f32>(x_1709.x, x_1709.y, x_1709.z));
    let x_1712 : vec3<f32> = u_xlat9;
    let x_1713 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1712, x_1713);
    let x_1715 : f32 = u_xlat45;
    u_xlat45 = max(x_1715, 1.17549435e-38f);
    let x_1717 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1717);
    let x_1719 : f32 = u_xlat45;
    let x_1721 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1719, x_1719, x_1719) * x_1721);
    let x_1723 : vec3<f32> = u_xlat15;
    let x_1724 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1723, x_1724);
    let x_1726 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1726, 0.0f, 1.0f);
    let x_1728 : vec3<f32> = u_xlat10;
    let x_1729 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1728, x_1729);
    let x_1731 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1731, 0.0f, 1.0f);
    let x_1733 : f32 = u_xlat45;
    let x_1734 : f32 = u_xlat45;
    u_xlat45 = (x_1733 * x_1734);
    let x_1736 : f32 = u_xlat45;
    let x_1738 : f32 = u_xlat8.x;
    u_xlat45 = ((x_1736 * x_1738) + 1.00001001358032226562f);
    let x_1741 : f32 = u_xlat48;
    let x_1742 : f32 = u_xlat48;
    u_xlat48 = (x_1741 * x_1742);
    let x_1744 : f32 = u_xlat45;
    let x_1745 : f32 = u_xlat45;
    u_xlat45 = (x_1744 * x_1745);
    let x_1747 : f32 = u_xlat48;
    u_xlat48 = max(x_1747, 0.10000000149011611938f);
    let x_1749 : f32 = u_xlat45;
    let x_1750 : f32 = u_xlat48;
    u_xlat45 = (x_1749 * x_1750);
    let x_1753 : f32 = u_xlat4.x;
    let x_1754 : f32 = u_xlat45;
    u_xlat45 = (x_1753 * x_1754);
    let x_1757 : f32 = u_xlat5.x;
    let x_1758 : f32 = u_xlat45;
    u_xlat45 = (x_1757 / x_1758);
    let x_1760 : vec4<f32> = u_xlat0;
    let x_1762 : f32 = u_xlat45;
    let x_1765 : vec3<f32> = u_xlat18;
    u_xlat9 = ((vec3<f32>(x_1760.x, x_1760.y, x_1760.z) * vec3<f32>(x_1762, x_1762, x_1762)) + x_1765);
    let x_1767 : vec3<f32> = u_xlat9;
    let x_1768 : vec4<f32> = u_xlat11;
    let x_1771 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1767 * vec3<f32>(x_1768.x, x_1768.y, x_1768.z)) + x_1771);

    continuing {
      let x_1773 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1773 + bitcast<u32>(1i));
    }
  }
  let x_1775 : vec4<f32> = u_xlat7;
  let x_1777 : vec3<f32> = u_xlat19;
  let x_1779 : vec4<f32> = u_xlat3;
  let x_1781 : vec3<f32> = ((vec3<f32>(x_1775.x, x_1775.y, x_1775.z) * x_1777) + vec3<f32>(x_1779.x, x_1779.y, x_1779.z));
  let x_1782 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1782.w);
  let x_1784 : vec3<f32> = u_xlat22;
  let x_1785 : vec4<f32> = u_xlat0;
  let x_1787 : vec3<f32> = (x_1784 + vec3<f32>(x_1785.x, x_1785.y, x_1785.z));
  let x_1788 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1788.w);
  let x_1790 : f32 = u_xlat44;
  let x_1791 : f32 = u_xlat44;
  u_xlat42 = (x_1790 * -(x_1791));
  let x_1794 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1794);
  let x_1796 : vec4<f32> = u_xlat0;
  let x_1800 : vec4<f32> = x_29.unity_FogColor;
  let x_1803 : vec3<f32> = (vec3<f32>(x_1796.x, x_1796.y, x_1796.z) + -(vec3<f32>(x_1800.x, x_1800.y, x_1800.z)));
  let x_1804 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1803.x, x_1803.y, x_1803.z, x_1804.w);
  let x_1808 : f32 = u_xlat42;
  let x_1810 : vec4<f32> = u_xlat0;
  let x_1814 : vec4<f32> = x_29.unity_FogColor;
  let x_1816 : vec3<f32> = ((vec3<f32>(x_1808, x_1808, x_1808) * vec3<f32>(x_1810.x, x_1810.y, x_1810.z)) + vec3<f32>(x_1814.x, x_1814.y, x_1814.z));
  let x_1817 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1816.x, x_1816.y, x_1816.z, x_1817.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


