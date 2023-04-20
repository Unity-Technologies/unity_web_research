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

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicTex : sampler;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat4 : f32;

var<private> u_xlat42 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat18 : f32;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat32 : f32;

@group(1) @binding(3) var<uniform> x_248 : LightShadows;

var<private> u_xlatb32 : bool;

var<private> u_xlatb46 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat46 : f32;

@group(1) @binding(4) var<uniform> x_316 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_516 : UnityPerDraw;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatb18 : vec2<bool>;

var<private> u_xlatu46 : u32;

var<private> u_xlati47 : i32;

var<private> u_xlati46 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_779 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat49 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu44 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_407 : f32;
  var x_418 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_912 : f32;
  var x_922 : f32;
  var txVec1 : vec3<f32>;
  var x_1352 : f32;
  var x_1365 : f32;
  var x_1423 : f32;
  var x_1434 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_35);
  u_xlat0.x = x_36.x;
  let x_44 : f32 = u_xlat0.x;
  u_xlatb0 = (x_44 == 0.0f);
  let x_47 : bool = u_xlatb0;
  if (((select(0i, 1i, x_47) * -1i) != 0i)) {
    discard;
  }
  let x_61 : vec4<f32> = vs_TEXCOORD0;
  let x_64 : f32 = x_28.x_GlobalMipBias.x;
  let x_65 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_61.x, x_61.y), x_64);
  u_xlat0 = x_65;
  let x_72 : vec4<f32> = vs_TEXCOORD0;
  let x_75 : f32 = x_28.x_GlobalMipBias.x;
  let x_76 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_72.x, x_72.y), x_75);
  u_xlat1 = x_76.x;
  let x_81 : vec4<f32> = vs_TEXCOORD3;
  let x_83 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_88 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_88);
  let x_91 : vec3<f32> = u_xlat15;
  let x_93 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15 = (vec3<f32>(x_91.x, x_91.x, x_91.x) * vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_102 : vec4<f32> = vs_TEXCOORD0;
  let x_105 : f32 = x_28.x_GlobalMipBias.x;
  let x_106 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_102.z, x_102.w), x_105);
  u_xlat2 = x_106;
  let x_112 : vec4<f32> = vs_TEXCOORD0;
  let x_115 : f32 = x_28.x_GlobalMipBias.x;
  let x_116 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_112.z, x_112.w), x_115);
  u_xlat3 = vec3<f32>(x_116.x, x_116.y, x_116.z);
  let x_118 : vec4<f32> = u_xlat2;
  let x_122 : vec3<f32> = (vec3<f32>(x_118.x, x_118.y, x_118.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_123 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec3<f32> = u_xlat15;
  let x_126 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_125, vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_131 : f32 = u_xlat2.x;
  u_xlat2.x = (x_131 + 0.5f);
  let x_135 : vec4<f32> = u_xlat2;
  let x_137 : vec3<f32> = u_xlat3;
  let x_138 : vec3<f32> = (vec3<f32>(x_135.x, x_135.x, x_135.x) * x_137);
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_144 : f32 = u_xlat2.w;
  u_xlat44 = max(x_144, 0.00009999999747378752f);
  let x_147 : vec4<f32> = u_xlat2;
  let x_149 : f32 = u_xlat44;
  let x_151 : vec3<f32> = (vec3<f32>(x_147.x, x_147.y, x_147.z) / vec3<f32>(x_149, x_149, x_149));
  let x_152 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_154 : f32 = u_xlat1;
  u_xlat44 = ((-(x_154) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_159 : f32 = u_xlat44;
  u_xlat3.x = (-(x_159) + 1.0f);
  let x_165 : vec4<f32> = u_xlat0;
  let x_167 : f32 = u_xlat44;
  u_xlat17 = (vec3<f32>(x_165.x, x_165.y, x_165.z) * vec3<f32>(x_167, x_167, x_167));
  let x_170 : vec4<f32> = u_xlat0;
  let x_174 : vec3<f32> = (vec3<f32>(x_170.x, x_170.y, x_170.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_175 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_177 : f32 = u_xlat1;
  let x_179 : vec4<f32> = u_xlat0;
  let x_184 : vec3<f32> = ((vec3<f32>(x_177, x_177, x_177) * vec3<f32>(x_179.x, x_179.y, x_179.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_185 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_188 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_188) + 1.0f);
  let x_191 : f32 = u_xlat1;
  let x_192 : f32 = u_xlat1;
  u_xlat44 = (x_191 * x_192);
  let x_194 : f32 = u_xlat44;
  u_xlat44 = max(x_194, 0.0078125f);
  let x_198 : f32 = u_xlat44;
  let x_199 : f32 = u_xlat44;
  u_xlat4 = (x_198 * x_199);
  let x_203 : f32 = u_xlat0.w;
  let x_205 : f32 = u_xlat3.x;
  u_xlat42 = (x_203 + x_205);
  let x_207 : f32 = u_xlat42;
  u_xlat42 = clamp(x_207, 0.0f, 1.0f);
  let x_209 : f32 = u_xlat44;
  u_xlat3.x = ((x_209 * 4.0f) + 2.0f);
  let x_218 : vec4<f32> = vs_TEXCOORD8;
  let x_219 : vec2<f32> = vec2<f32>(x_218.x, x_218.y);
  let x_223 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_219.x, x_219.y, x_223);
  let x_236 : vec3<f32> = txVec0;
  let x_238 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_236.xy, x_236.z);
  u_xlat18 = x_238;
  let x_251 : f32 = x_248.x_MainLightShadowParams.x;
  u_xlat32 = (-(x_251) + 1.0f);
  let x_254 : f32 = u_xlat18;
  let x_256 : f32 = x_248.x_MainLightShadowParams.x;
  let x_258 : f32 = u_xlat32;
  u_xlat18 = ((x_254 * x_256) + x_258);
  let x_262 : f32 = vs_TEXCOORD8.z;
  u_xlatb32 = (0.0f >= x_262);
  let x_266 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (x_266 >= 1.0f);
  let x_268 : bool = u_xlatb46;
  let x_269 : bool = u_xlatb32;
  u_xlatb32 = (x_268 | x_269);
  let x_271 : bool = u_xlatb32;
  let x_272 : f32 = u_xlat18;
  u_xlat18 = select(x_272, 1.0f, x_271);
  let x_277 : vec3<f32> = vs_TEXCOORD7;
  let x_281 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_283 : vec3<f32> = (x_277 + -(x_281));
  let x_284 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec4<f32> = u_xlat5;
  let x_288 : vec4<f32> = u_xlat5;
  u_xlat32 = dot(vec3<f32>(x_286.x, x_286.y, x_286.z), vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_292 : f32 = u_xlat32;
  let x_294 : f32 = x_248.x_MainLightShadowParams.z;
  let x_297 : f32 = x_248.x_MainLightShadowParams.w;
  u_xlat46 = ((x_292 * x_294) + x_297);
  let x_299 : f32 = u_xlat46;
  u_xlat46 = clamp(x_299, 0.0f, 1.0f);
  let x_301 : f32 = u_xlat18;
  u_xlat5.x = (-(x_301) + 1.0f);
  let x_305 : f32 = u_xlat46;
  let x_307 : f32 = u_xlat5.x;
  let x_309 : f32 = u_xlat18;
  u_xlat18 = ((x_305 * x_307) + x_309);
  let x_319 : f32 = x_316.x_MainLightCookieTextureFormat;
  u_xlatb46 = !((x_319 == -1.0f));
  let x_322 : bool = u_xlatb46;
  if (x_322) {
    let x_325 : vec3<f32> = vs_TEXCOORD7;
    let x_329 : vec4<f32> = x_316.x_MainLightWorldToLight[1i];
    let x_331 : vec2<f32> = (vec2<f32>(x_325.y, x_325.y) * vec2<f32>(x_329.x, x_329.y));
    let x_332 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_331.x, x_331.y, x_332.z, x_332.w);
    let x_335 : vec4<f32> = x_316.x_MainLightWorldToLight[0i];
    let x_337 : vec3<f32> = vs_TEXCOORD7;
    let x_340 : vec4<f32> = u_xlat5;
    let x_342 : vec2<f32> = ((vec2<f32>(x_335.x, x_335.y) * vec2<f32>(x_337.x, x_337.x)) + vec2<f32>(x_340.x, x_340.y));
    let x_343 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_342.x, x_342.y, x_343.z, x_343.w);
    let x_346 : vec4<f32> = x_316.x_MainLightWorldToLight[2i];
    let x_348 : vec3<f32> = vs_TEXCOORD7;
    let x_351 : vec4<f32> = u_xlat5;
    let x_353 : vec2<f32> = ((vec2<f32>(x_346.x, x_346.y) * vec2<f32>(x_348.z, x_348.z)) + vec2<f32>(x_351.x, x_351.y));
    let x_354 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_353.x, x_353.y, x_354.z, x_354.w);
    let x_356 : vec4<f32> = u_xlat5;
    let x_360 : vec4<f32> = x_316.x_MainLightWorldToLight[3i];
    let x_362 : vec2<f32> = (vec2<f32>(x_356.x, x_356.y) + vec2<f32>(x_360.x, x_360.y));
    let x_363 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_362.x, x_362.y, x_363.z, x_363.w);
    let x_365 : vec4<f32> = u_xlat5;
    let x_369 : vec2<f32> = ((vec2<f32>(x_365.x, x_365.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_370 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
    let x_377 : vec4<f32> = u_xlat5;
    let x_380 : f32 = x_28.x_GlobalMipBias.x;
    let x_381 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_377.x, x_377.y), x_380);
    u_xlat5 = x_381;
    let x_386 : f32 = x_316.x_MainLightCookieTextureFormat;
    let x_388 : f32 = x_316.x_MainLightCookieTextureFormat;
    let x_390 : f32 = x_316.x_MainLightCookieTextureFormat;
    let x_392 : f32 = x_316.x_MainLightCookieTextureFormat;
    let x_393 : vec4<f32> = vec4<f32>(x_386, x_388, x_390, x_392);
    let x_401 : vec4<bool> = (vec4<f32>(x_393.x, x_393.y, x_393.z, x_393.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_401.x, x_401.y);
    let x_405 : bool = u_xlatb6.y;
    if (x_405) {
      let x_411 : f32 = u_xlat5.w;
      x_407 = x_411;
    } else {
      let x_414 : f32 = u_xlat5.x;
      x_407 = x_414;
    }
    let x_415 : f32 = x_407;
    u_xlat46 = x_415;
    let x_417 : bool = u_xlatb6.x;
    if (x_417) {
      let x_421 : vec4<f32> = u_xlat5;
      x_418 = vec3<f32>(x_421.x, x_421.y, x_421.z);
    } else {
      let x_424 : f32 = u_xlat46;
      x_418 = vec3<f32>(x_424, x_424, x_424);
    }
    let x_426 : vec3<f32> = x_418;
    let x_427 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_433 : vec4<f32> = u_xlat5;
  let x_436 : vec4<f32> = x_28.x_MainLightColor;
  let x_438 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_439 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_443 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_443;
  let x_447 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_447;
  let x_451 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_451;
  let x_453 : vec3<f32> = u_xlat6;
  let x_455 : vec3<f32> = u_xlat15;
  u_xlat46 = dot(-(x_453), x_455);
  let x_457 : f32 = u_xlat46;
  let x_458 : f32 = u_xlat46;
  u_xlat46 = (x_457 + x_458);
  let x_461 : vec3<f32> = u_xlat15;
  let x_462 : f32 = u_xlat46;
  let x_466 : vec3<f32> = u_xlat6;
  let x_468 : vec3<f32> = ((x_461 * -(vec3<f32>(x_462, x_462, x_462))) + -(x_466));
  let x_469 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : vec3<f32> = u_xlat15;
  let x_472 : vec3<f32> = u_xlat6;
  u_xlat46 = dot(x_471, x_472);
  let x_474 : f32 = u_xlat46;
  u_xlat46 = clamp(x_474, 0.0f, 1.0f);
  let x_476 : f32 = u_xlat46;
  u_xlat46 = (-(x_476) + 1.0f);
  let x_479 : f32 = u_xlat46;
  let x_480 : f32 = u_xlat46;
  u_xlat46 = (x_479 * x_480);
  let x_482 : f32 = u_xlat46;
  let x_483 : f32 = u_xlat46;
  u_xlat46 = (x_482 * x_483);
  let x_486 : f32 = u_xlat1;
  u_xlat47 = ((-(x_486) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_492 : f32 = u_xlat1;
  let x_493 : f32 = u_xlat47;
  u_xlat1 = (x_492 * x_493);
  let x_495 : f32 = u_xlat1;
  u_xlat1 = (x_495 * 6.0f);
  let x_506 : vec4<f32> = u_xlat7;
  let x_508 : f32 = u_xlat1;
  let x_509 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_506.x, x_506.y, x_506.z), x_508);
  u_xlat7 = x_509;
  let x_511 : f32 = u_xlat7.w;
  u_xlat1 = (x_511 + -1.0f);
  let x_518 : f32 = x_516.unity_SpecCube0_HDR.w;
  let x_519 : f32 = u_xlat1;
  u_xlat1 = ((x_518 * x_519) + 1.0f);
  let x_522 : f32 = u_xlat1;
  u_xlat1 = max(x_522, 0.0f);
  let x_524 : f32 = u_xlat1;
  u_xlat1 = log2(x_524);
  let x_526 : f32 = u_xlat1;
  let x_528 : f32 = x_516.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_526 * x_528);
  let x_530 : f32 = u_xlat1;
  u_xlat1 = exp2(x_530);
  let x_532 : f32 = u_xlat1;
  let x_534 : f32 = x_516.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_532 * x_534);
  let x_536 : vec4<f32> = u_xlat7;
  let x_538 : f32 = u_xlat1;
  let x_540 : vec3<f32> = (vec3<f32>(x_536.x, x_536.y, x_536.z) * vec3<f32>(x_538, x_538, x_538));
  let x_541 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  let x_545 : f32 = u_xlat44;
  let x_547 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_545, x_545) * vec2<f32>(x_547, x_547)) + vec2<f32>(-1.0f, 1.0f));
  let x_553 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_553);
  let x_556 : vec4<f32> = u_xlat0;
  let x_559 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_556.x, x_556.y, x_556.z)) + vec3<f32>(x_559, x_559, x_559));
  let x_562 : f32 = u_xlat46;
  let x_564 : vec3<f32> = u_xlat22;
  let x_566 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_562, x_562, x_562) * x_564) + vec3<f32>(x_566.x, x_566.y, x_566.z));
  let x_569 : f32 = u_xlat1;
  let x_571 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_569, x_569, x_569) * x_571);
  let x_573 : vec4<f32> = u_xlat7;
  let x_575 : vec3<f32> = u_xlat22;
  let x_576 : vec3<f32> = (vec3<f32>(x_573.x, x_573.y, x_573.z) * x_575);
  let x_577 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_579 : vec4<f32> = u_xlat2;
  let x_581 : vec3<f32> = u_xlat17;
  let x_583 : vec4<f32> = u_xlat7;
  let x_585 : vec3<f32> = ((vec3<f32>(x_579.x, x_579.y, x_579.z) * x_581) + vec3<f32>(x_583.x, x_583.y, x_583.z));
  let x_586 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_588 : f32 = u_xlat18;
  let x_591 : f32 = x_516.unity_LightData.z;
  u_xlat42 = (x_588 * x_591);
  let x_593 : vec3<f32> = u_xlat15;
  let x_595 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1 = dot(x_593, vec3<f32>(x_595.x, x_595.y, x_595.z));
  let x_598 : f32 = u_xlat1;
  u_xlat1 = clamp(x_598, 0.0f, 1.0f);
  let x_600 : f32 = u_xlat42;
  let x_601 : f32 = u_xlat1;
  u_xlat42 = (x_600 * x_601);
  let x_603 : f32 = u_xlat42;
  let x_605 : vec4<f32> = u_xlat5;
  let x_607 : vec3<f32> = (vec3<f32>(x_603, x_603, x_603) * vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_608 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec3<f32> = u_xlat6;
  let x_612 : vec4<f32> = x_28.x_MainLightPosition;
  let x_614 : vec3<f32> = (x_610 + vec3<f32>(x_612.x, x_612.y, x_612.z));
  let x_615 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  let x_617 : vec4<f32> = u_xlat7;
  let x_619 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_617.x, x_617.y, x_617.z), vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : f32 = u_xlat42;
  u_xlat42 = max(x_622, 1.17549435e-38f);
  let x_625 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_625);
  let x_627 : f32 = u_xlat42;
  let x_629 : vec4<f32> = u_xlat7;
  let x_631 : vec3<f32> = (vec3<f32>(x_627, x_627, x_627) * vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : vec3<f32> = u_xlat15;
  let x_635 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_634, vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : f32 = u_xlat42;
  u_xlat42 = clamp(x_638, 0.0f, 1.0f);
  let x_641 : vec4<f32> = x_28.x_MainLightPosition;
  let x_643 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_641.x, x_641.y, x_641.z), vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : f32 = u_xlat1;
  u_xlat1 = clamp(x_646, 0.0f, 1.0f);
  let x_648 : f32 = u_xlat42;
  let x_649 : f32 = u_xlat42;
  u_xlat42 = (x_648 * x_649);
  let x_651 : f32 = u_xlat42;
  let x_653 : f32 = u_xlat8.x;
  u_xlat42 = ((x_651 * x_653) + 1.00001001358032226562f);
  let x_657 : f32 = u_xlat1;
  let x_658 : f32 = u_xlat1;
  u_xlat1 = (x_657 * x_658);
  let x_660 : f32 = u_xlat42;
  let x_661 : f32 = u_xlat42;
  u_xlat42 = (x_660 * x_661);
  let x_663 : f32 = u_xlat1;
  u_xlat1 = max(x_663, 0.10000000149011611938f);
  let x_666 : f32 = u_xlat42;
  let x_667 : f32 = u_xlat1;
  u_xlat42 = (x_666 * x_667);
  let x_670 : f32 = u_xlat3.x;
  let x_671 : f32 = u_xlat42;
  u_xlat42 = (x_670 * x_671);
  let x_673 : f32 = u_xlat4;
  let x_674 : f32 = u_xlat42;
  u_xlat42 = (x_673 / x_674);
  let x_676 : vec4<f32> = u_xlat0;
  let x_678 : f32 = u_xlat42;
  let x_681 : vec3<f32> = u_xlat17;
  let x_682 : vec3<f32> = ((vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(x_678, x_678, x_678)) + x_681);
  let x_683 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_686 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_688 : f32 = x_516.unity_LightData.y;
  u_xlat42 = min(x_686, x_688);
  let x_692 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_692));
  let x_695 : f32 = u_xlat32;
  let x_698 : f32 = x_248.x_AdditionalShadowFadeParams.x;
  let x_701 : f32 = x_248.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_695 * x_698) + x_701);
  let x_703 : f32 = u_xlat1;
  u_xlat1 = clamp(x_703, 0.0f, 1.0f);
  let x_707 : f32 = x_316.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_709 : f32 = x_316.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_711 : f32 = x_316.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_713 : f32 = x_316.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_714 : vec4<f32> = vec4<f32>(x_707, x_709, x_711, x_713);
  let x_720 : vec4<bool> = (vec4<f32>(x_714.x, x_714.y, x_714.z, x_714.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb18 = vec2<bool>(x_720.x, x_720.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_732 : u32 = u_xlatu_loop_1;
    let x_733 : u32 = u_xlatu42;
    if ((x_732 < x_733)) {
    } else {
      break;
    }
    let x_736 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_736 >> 2u);
    let x_740 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_740 & 3u));
    let x_744 : u32 = u_xlatu46;
    let x_747 : vec4<f32> = x_516.unity_LightIndices[bitcast<i32>(x_744)];
    let x_757 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_762 : vec4<u32> = indexable[x_757];
    u_xlat46 = dot(x_747, bitcast<vec4<f32>>(x_762));
    let x_766 : f32 = u_xlat46;
    u_xlati46 = i32(x_766);
    let x_769 : vec3<f32> = vs_TEXCOORD7;
    let x_780 : i32 = u_xlati46;
    let x_782 : vec4<f32> = x_779.x_AdditionalLightsPosition[x_780];
    let x_785 : i32 = u_xlati46;
    let x_787 : vec4<f32> = x_779.x_AdditionalLightsPosition[x_785];
    u_xlat9 = ((-(x_769) * vec3<f32>(x_782.w, x_782.w, x_782.w)) + vec3<f32>(x_787.x, x_787.y, x_787.z));
    let x_790 : vec3<f32> = u_xlat9;
    let x_791 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_790, x_791);
    let x_793 : f32 = u_xlat47;
    u_xlat47 = max(x_793, 0.00006103515625f);
    let x_797 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_797);
    let x_800 : f32 = u_xlat48;
    let x_802 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_800, x_800, x_800) * x_802);
    let x_805 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_805);
    let x_807 : f32 = u_xlat47;
    let x_808 : i32 = u_xlati46;
    let x_810 : f32 = x_779.x_AdditionalLightsAttenuation[x_808].x;
    u_xlat47 = (x_807 * x_810);
    let x_812 : f32 = u_xlat47;
    let x_814 : f32 = u_xlat47;
    u_xlat47 = ((-(x_812) * x_814) + 1.0f);
    let x_817 : f32 = u_xlat47;
    u_xlat47 = max(x_817, 0.0f);
    let x_819 : f32 = u_xlat47;
    let x_820 : f32 = u_xlat47;
    u_xlat47 = (x_819 * x_820);
    let x_822 : f32 = u_xlat47;
    let x_823 : f32 = u_xlat49;
    u_xlat47 = (x_822 * x_823);
    let x_825 : i32 = u_xlati46;
    let x_827 : vec4<f32> = x_779.x_AdditionalLightsSpotDir[x_825];
    let x_829 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_827.x, x_827.y, x_827.z), x_829);
    let x_831 : f32 = u_xlat49;
    let x_832 : i32 = u_xlati46;
    let x_834 : f32 = x_779.x_AdditionalLightsAttenuation[x_832].z;
    let x_836 : i32 = u_xlati46;
    let x_838 : f32 = x_779.x_AdditionalLightsAttenuation[x_836].w;
    u_xlat49 = ((x_831 * x_834) + x_838);
    let x_840 : f32 = u_xlat49;
    u_xlat49 = clamp(x_840, 0.0f, 1.0f);
    let x_842 : f32 = u_xlat49;
    let x_843 : f32 = u_xlat49;
    u_xlat49 = (x_842 * x_843);
    let x_845 : f32 = u_xlat47;
    let x_846 : f32 = u_xlat49;
    u_xlat47 = (x_845 * x_846);
    let x_850 : i32 = u_xlati46;
    let x_852 : f32 = x_248.x_AdditionalShadowParams[x_850].w;
    u_xlati49 = i32(x_852);
    let x_855 : i32 = u_xlati49;
    u_xlatb51 = (x_855 >= 0i);
    let x_857 : bool = u_xlatb51;
    if (x_857) {
      let x_861 : i32 = u_xlati46;
      let x_863 : f32 = x_248.x_AdditionalShadowParams[x_861].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_863, x_863, x_863, x_863))));
      let x_867 : bool = u_xlatb51;
      if (x_867) {
        let x_872 : vec3<f32> = u_xlat10;
        let x_875 : vec3<f32> = u_xlat10;
        let x_878 : vec4<bool> = (abs(vec4<f32>(x_872.z, x_872.z, x_872.y, x_872.z)) >= abs(vec4<f32>(x_875.x, x_875.y, x_875.x, x_875.x)));
        let x_880 : vec3<bool> = vec3<bool>(x_878.x, x_878.y, x_878.z);
        let x_881 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_880.x, x_880.y, x_880.z, x_881.w);
        let x_884 : bool = u_xlatb11.y;
        let x_886 : bool = u_xlatb11.x;
        u_xlatb51 = (x_884 & x_886);
        let x_888 : vec3<f32> = u_xlat10;
        let x_891 : vec4<bool> = (-(vec4<f32>(x_888.z, x_888.y, x_888.z, x_888.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_892 : vec3<bool> = vec3<bool>(x_891.x, x_891.y, x_891.w);
        let x_893 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_892.x, x_892.y, x_893.z, x_892.z);
        let x_897 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_897);
        let x_902 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_902);
        let x_908 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_908);
        let x_911 : bool = u_xlatb11.z;
        if (x_911) {
          let x_916 : f32 = u_xlat11.y;
          x_912 = x_916;
        } else {
          let x_918 : f32 = u_xlat52;
          x_912 = x_918;
        }
        let x_919 : f32 = x_912;
        u_xlat52 = x_919;
        let x_921 : bool = u_xlatb51;
        if (x_921) {
          let x_926 : f32 = u_xlat11.x;
          x_922 = x_926;
        } else {
          let x_928 : f32 = u_xlat52;
          x_922 = x_928;
        }
        let x_929 : f32 = x_922;
        u_xlat51 = x_929;
        let x_930 : i32 = u_xlati46;
        let x_932 : f32 = x_248.x_AdditionalShadowParams[x_930].w;
        u_xlat52 = trunc(x_932);
        let x_934 : f32 = u_xlat51;
        let x_935 : f32 = u_xlat52;
        u_xlat51 = (x_934 + x_935);
        let x_937 : f32 = u_xlat51;
        u_xlati49 = i32(x_937);
      }
      let x_939 : i32 = u_xlati49;
      u_xlati49 = (x_939 << bitcast<u32>(2i));
      let x_941 : vec3<f32> = vs_TEXCOORD7;
      let x_944 : i32 = u_xlati49;
      let x_947 : i32 = u_xlati49;
      let x_951 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[((x_944 + 1i) / 4i)][((x_947 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_941.y, x_941.y, x_941.y, x_941.y) * x_951);
      let x_953 : i32 = u_xlati49;
      let x_955 : i32 = u_xlati49;
      let x_958 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[(x_953 / 4i)][(x_955 % 4i)];
      let x_959 : vec3<f32> = vs_TEXCOORD7;
      let x_962 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_958 * vec4<f32>(x_959.x, x_959.x, x_959.x, x_959.x)) + x_962);
      let x_964 : i32 = u_xlati49;
      let x_967 : i32 = u_xlati49;
      let x_971 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[((x_964 + 2i) / 4i)][((x_967 + 2i) % 4i)];
      let x_972 : vec3<f32> = vs_TEXCOORD7;
      let x_975 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_971 * vec4<f32>(x_972.z, x_972.z, x_972.z, x_972.z)) + x_975);
      let x_977 : vec4<f32> = u_xlat11;
      let x_978 : i32 = u_xlati49;
      let x_981 : i32 = u_xlati49;
      let x_985 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[((x_978 + 3i) / 4i)][((x_981 + 3i) % 4i)];
      u_xlat11 = (x_977 + x_985);
      let x_987 : vec4<f32> = u_xlat11;
      let x_989 : vec4<f32> = u_xlat11;
      let x_991 : vec3<f32> = (vec3<f32>(x_987.x, x_987.y, x_987.z) / vec3<f32>(x_989.w, x_989.w, x_989.w));
      let x_992 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
      let x_995 : vec4<f32> = u_xlat11;
      let x_996 : vec2<f32> = vec2<f32>(x_995.x, x_995.y);
      let x_998 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_996.x, x_996.y, x_998);
      let x_1006 : vec3<f32> = txVec1;
      let x_1008 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1006.xy, x_1006.z);
      u_xlat49 = x_1008;
      let x_1009 : i32 = u_xlati46;
      let x_1011 : f32 = x_248.x_AdditionalShadowParams[x_1009].x;
      u_xlat51 = (1.0f + -(x_1011));
      let x_1014 : f32 = u_xlat49;
      let x_1015 : i32 = u_xlati46;
      let x_1017 : f32 = x_248.x_AdditionalShadowParams[x_1015].x;
      let x_1019 : f32 = u_xlat51;
      u_xlat49 = ((x_1014 * x_1017) + x_1019);
      let x_1022 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1022);
      let x_1026 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1026 >= 1.0f);
      let x_1028 : bool = u_xlatb51;
      let x_1029 : bool = u_xlatb52;
      u_xlatb51 = (x_1028 | x_1029);
      let x_1031 : bool = u_xlatb51;
      let x_1032 : f32 = u_xlat49;
      u_xlat49 = select(x_1032, 1.0f, x_1031);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1035 : f32 = u_xlat49;
    u_xlat51 = (-(x_1035) + 1.0f);
    let x_1038 : f32 = u_xlat1;
    let x_1039 : f32 = u_xlat51;
    let x_1041 : f32 = u_xlat49;
    u_xlat49 = ((x_1038 * x_1039) + x_1041);
    let x_1044 : i32 = u_xlati46;
    u_xlati51 = (1i << bitcast<u32>((x_1044 & 31i)));
    let x_1048 : i32 = u_xlati51;
    let x_1051 : f32 = x_316.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1048) & bitcast<u32>(x_1051)));
    let x_1055 : i32 = u_xlati51;
    if ((x_1055 != 0i)) {
      let x_1059 : i32 = u_xlati46;
      let x_1061 : f32 = x_316.x_AdditionalLightsLightTypes[x_1059].el;
      u_xlati51 = i32(x_1061);
      let x_1064 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1064 != 0i));
      let x_1068 : i32 = u_xlati46;
      u_xlati11 = (x_1068 << bitcast<u32>(2i));
      let x_1070 : i32 = u_xlati52;
      if ((x_1070 != 0i)) {
        let x_1075 : vec3<f32> = vs_TEXCOORD7;
        let x_1077 : i32 = u_xlati11;
        let x_1080 : i32 = u_xlati11;
        let x_1084 : vec4<f32> = x_316.x_AdditionalLightsWorldToLights[((x_1077 + 1i) / 4i)][((x_1080 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1075.y, x_1075.y, x_1075.y) * vec3<f32>(x_1084.x, x_1084.y, x_1084.w));
        let x_1087 : i32 = u_xlati11;
        let x_1089 : i32 = u_xlati11;
        let x_1092 : vec4<f32> = x_316.x_AdditionalLightsWorldToLights[(x_1087 / 4i)][(x_1089 % 4i)];
        let x_1094 : vec3<f32> = vs_TEXCOORD7;
        let x_1097 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1092.x, x_1092.y, x_1092.w) * vec3<f32>(x_1094.x, x_1094.x, x_1094.x)) + x_1097);
        let x_1099 : i32 = u_xlati11;
        let x_1102 : i32 = u_xlati11;
        let x_1106 : vec4<f32> = x_316.x_AdditionalLightsWorldToLights[((x_1099 + 2i) / 4i)][((x_1102 + 2i) % 4i)];
        let x_1108 : vec3<f32> = vs_TEXCOORD7;
        let x_1111 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1106.x, x_1106.y, x_1106.w) * vec3<f32>(x_1108.z, x_1108.z, x_1108.z)) + x_1111);
        let x_1113 : vec3<f32> = u_xlat25;
        let x_1114 : i32 = u_xlati11;
        let x_1117 : i32 = u_xlati11;
        let x_1121 : vec4<f32> = x_316.x_AdditionalLightsWorldToLights[((x_1114 + 3i) / 4i)][((x_1117 + 3i) % 4i)];
        u_xlat25 = (x_1113 + vec3<f32>(x_1121.x, x_1121.y, x_1121.w));
        let x_1124 : vec3<f32> = u_xlat25;
        let x_1126 : vec3<f32> = u_xlat25;
        let x_1128 : vec2<f32> = (vec2<f32>(x_1124.x, x_1124.y) / vec2<f32>(x_1126.z, x_1126.z));
        let x_1129 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1128.x, x_1128.y, x_1129.z);
        let x_1131 : vec3<f32> = u_xlat25;
        let x_1134 : vec2<f32> = ((vec2<f32>(x_1131.x, x_1131.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1135 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1134.x, x_1134.y, x_1135.z);
        let x_1137 : vec3<f32> = u_xlat25;
        let x_1141 : vec2<f32> = clamp(vec2<f32>(x_1137.x, x_1137.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1142 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1141.x, x_1141.y, x_1142.z);
        let x_1144 : i32 = u_xlati46;
        let x_1146 : vec4<f32> = x_316.x_AdditionalLightsCookieAtlasUVRects[x_1144];
        let x_1148 : vec3<f32> = u_xlat25;
        let x_1151 : i32 = u_xlati46;
        let x_1153 : vec4<f32> = x_316.x_AdditionalLightsCookieAtlasUVRects[x_1151];
        let x_1155 : vec2<f32> = ((vec2<f32>(x_1146.x, x_1146.y) * vec2<f32>(x_1148.x, x_1148.y)) + vec2<f32>(x_1153.z, x_1153.w));
        let x_1156 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1155.x, x_1155.y, x_1156.z);
      } else {
        let x_1159 : i32 = u_xlati51;
        u_xlatb51 = (x_1159 == 1i);
        let x_1161 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1161);
        let x_1163 : i32 = u_xlati51;
        if ((x_1163 != 0i)) {
          let x_1168 : vec3<f32> = vs_TEXCOORD7;
          let x_1170 : i32 = u_xlati11;
          let x_1173 : i32 = u_xlati11;
          let x_1177 : vec4<f32> = x_316.x_AdditionalLightsWorldToLights[((x_1170 + 1i) / 4i)][((x_1173 + 1i) % 4i)];
          let x_1179 : vec2<f32> = (vec2<f32>(x_1168.y, x_1168.y) * vec2<f32>(x_1177.x, x_1177.y));
          let x_1180 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1179.x, x_1179.y, x_1180.z, x_1180.w);
          let x_1182 : i32 = u_xlati11;
          let x_1184 : i32 = u_xlati11;
          let x_1187 : vec4<f32> = x_316.x_AdditionalLightsWorldToLights[(x_1182 / 4i)][(x_1184 % 4i)];
          let x_1189 : vec3<f32> = vs_TEXCOORD7;
          let x_1192 : vec4<f32> = u_xlat12;
          let x_1194 : vec2<f32> = ((vec2<f32>(x_1187.x, x_1187.y) * vec2<f32>(x_1189.x, x_1189.x)) + vec2<f32>(x_1192.x, x_1192.y));
          let x_1195 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1194.x, x_1194.y, x_1195.z, x_1195.w);
          let x_1197 : i32 = u_xlati11;
          let x_1200 : i32 = u_xlati11;
          let x_1204 : vec4<f32> = x_316.x_AdditionalLightsWorldToLights[((x_1197 + 2i) / 4i)][((x_1200 + 2i) % 4i)];
          let x_1206 : vec3<f32> = vs_TEXCOORD7;
          let x_1209 : vec4<f32> = u_xlat12;
          let x_1211 : vec2<f32> = ((vec2<f32>(x_1204.x, x_1204.y) * vec2<f32>(x_1206.z, x_1206.z)) + vec2<f32>(x_1209.x, x_1209.y));
          let x_1212 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1211.x, x_1211.y, x_1212.z, x_1212.w);
          let x_1214 : vec4<f32> = u_xlat12;
          let x_1216 : i32 = u_xlati11;
          let x_1219 : i32 = u_xlati11;
          let x_1223 : vec4<f32> = x_316.x_AdditionalLightsWorldToLights[((x_1216 + 3i) / 4i)][((x_1219 + 3i) % 4i)];
          let x_1225 : vec2<f32> = (vec2<f32>(x_1214.x, x_1214.y) + vec2<f32>(x_1223.x, x_1223.y));
          let x_1226 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1225.x, x_1225.y, x_1226.z, x_1226.w);
          let x_1228 : vec4<f32> = u_xlat12;
          let x_1231 : vec2<f32> = ((vec2<f32>(x_1228.x, x_1228.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1232 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1231.x, x_1231.y, x_1232.z, x_1232.w);
          let x_1234 : vec4<f32> = u_xlat12;
          let x_1236 : vec2<f32> = fract(vec2<f32>(x_1234.x, x_1234.y));
          let x_1237 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1236.x, x_1236.y, x_1237.z, x_1237.w);
          let x_1239 : i32 = u_xlati46;
          let x_1241 : vec4<f32> = x_316.x_AdditionalLightsCookieAtlasUVRects[x_1239];
          let x_1243 : vec4<f32> = u_xlat12;
          let x_1246 : i32 = u_xlati46;
          let x_1248 : vec4<f32> = x_316.x_AdditionalLightsCookieAtlasUVRects[x_1246];
          let x_1250 : vec2<f32> = ((vec2<f32>(x_1241.x, x_1241.y) * vec2<f32>(x_1243.x, x_1243.y)) + vec2<f32>(x_1248.z, x_1248.w));
          let x_1251 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1250.x, x_1250.y, x_1251.z);
        } else {
          let x_1254 : vec3<f32> = vs_TEXCOORD7;
          let x_1256 : i32 = u_xlati11;
          let x_1259 : i32 = u_xlati11;
          let x_1263 : vec4<f32> = x_316.x_AdditionalLightsWorldToLights[((x_1256 + 1i) / 4i)][((x_1259 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1254.y, x_1254.y, x_1254.y, x_1254.y) * x_1263);
          let x_1265 : i32 = u_xlati11;
          let x_1267 : i32 = u_xlati11;
          let x_1270 : vec4<f32> = x_316.x_AdditionalLightsWorldToLights[(x_1265 / 4i)][(x_1267 % 4i)];
          let x_1271 : vec3<f32> = vs_TEXCOORD7;
          let x_1274 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1270 * vec4<f32>(x_1271.x, x_1271.x, x_1271.x, x_1271.x)) + x_1274);
          let x_1276 : i32 = u_xlati11;
          let x_1279 : i32 = u_xlati11;
          let x_1283 : vec4<f32> = x_316.x_AdditionalLightsWorldToLights[((x_1276 + 2i) / 4i)][((x_1279 + 2i) % 4i)];
          let x_1284 : vec3<f32> = vs_TEXCOORD7;
          let x_1287 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1283 * vec4<f32>(x_1284.z, x_1284.z, x_1284.z, x_1284.z)) + x_1287);
          let x_1289 : vec4<f32> = u_xlat12;
          let x_1290 : i32 = u_xlati11;
          let x_1293 : i32 = u_xlati11;
          let x_1297 : vec4<f32> = x_316.x_AdditionalLightsWorldToLights[((x_1290 + 3i) / 4i)][((x_1293 + 3i) % 4i)];
          u_xlat12 = (x_1289 + x_1297);
          let x_1299 : vec4<f32> = u_xlat12;
          let x_1301 : vec4<f32> = u_xlat12;
          let x_1303 : vec3<f32> = (vec3<f32>(x_1299.x, x_1299.y, x_1299.z) / vec3<f32>(x_1301.w, x_1301.w, x_1301.w));
          let x_1304 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
          let x_1306 : vec4<f32> = u_xlat12;
          let x_1308 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1306.x, x_1306.y, x_1306.z), vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
          let x_1311 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1311);
          let x_1313 : f32 = u_xlat51;
          let x_1315 : vec4<f32> = u_xlat12;
          let x_1317 : vec3<f32> = (vec3<f32>(x_1313, x_1313, x_1313) * vec3<f32>(x_1315.x, x_1315.y, x_1315.z));
          let x_1318 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1318.w);
          let x_1320 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1320.x, x_1320.y, x_1320.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1325 : f32 = u_xlat51;
          u_xlat51 = max(x_1325, 0.00000099999999747524f);
          let x_1328 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1328);
          let x_1331 : f32 = u_xlat51;
          let x_1333 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1331, x_1331, x_1331) * vec3<f32>(x_1333.z, x_1333.x, x_1333.y));
          let x_1337 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1337);
          let x_1341 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1341, 0.0f, 1.0f);
          let x_1344 : vec3<f32> = u_xlat13;
          let x_1346 : vec4<bool> = (vec4<f32>(x_1344.y, x_1344.y, x_1344.y, x_1344.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1347 : vec2<bool> = vec2<bool>(x_1346.x, x_1346.w);
          let x_1348 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1347.x, x_1348.y, x_1348.z, x_1347.y);
          let x_1351 : bool = u_xlatb11.x;
          if (x_1351) {
            let x_1356 : f32 = u_xlat13.x;
            x_1352 = x_1356;
          } else {
            let x_1359 : f32 = u_xlat13.x;
            x_1352 = -(x_1359);
          }
          let x_1361 : f32 = x_1352;
          u_xlat11.x = x_1361;
          let x_1364 : bool = u_xlatb11.w;
          if (x_1364) {
            let x_1369 : f32 = u_xlat13.x;
            x_1365 = x_1369;
          } else {
            let x_1372 : f32 = u_xlat13.x;
            x_1365 = -(x_1372);
          }
          let x_1374 : f32 = x_1365;
          u_xlat11.w = x_1374;
          let x_1376 : vec4<f32> = u_xlat12;
          let x_1378 : f32 = u_xlat51;
          let x_1381 : vec4<f32> = u_xlat11;
          let x_1383 : vec2<f32> = ((vec2<f32>(x_1376.x, x_1376.y) * vec2<f32>(x_1378, x_1378)) + vec2<f32>(x_1381.x, x_1381.w));
          let x_1384 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1383.x, x_1384.y, x_1384.z, x_1383.y);
          let x_1386 : vec4<f32> = u_xlat11;
          let x_1389 : vec2<f32> = ((vec2<f32>(x_1386.x, x_1386.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1390 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1389.x, x_1390.y, x_1390.z, x_1389.y);
          let x_1392 : vec4<f32> = u_xlat11;
          let x_1396 : vec2<f32> = clamp(vec2<f32>(x_1392.x, x_1392.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1397 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1396.x, x_1397.y, x_1397.z, x_1396.y);
          let x_1399 : i32 = u_xlati46;
          let x_1401 : vec4<f32> = x_316.x_AdditionalLightsCookieAtlasUVRects[x_1399];
          let x_1403 : vec4<f32> = u_xlat11;
          let x_1406 : i32 = u_xlati46;
          let x_1408 : vec4<f32> = x_316.x_AdditionalLightsCookieAtlasUVRects[x_1406];
          let x_1410 : vec2<f32> = ((vec2<f32>(x_1401.x, x_1401.y) * vec2<f32>(x_1403.x, x_1403.w)) + vec2<f32>(x_1408.z, x_1408.w));
          let x_1411 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1410.x, x_1410.y, x_1411.z);
        }
      }
      let x_1418 : vec3<f32> = u_xlat25;
      let x_1420 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1418.x, x_1418.y), 0.0f);
      u_xlat11 = x_1420;
      let x_1422 : bool = u_xlatb18.y;
      if (x_1422) {
        let x_1427 : f32 = u_xlat11.w;
        x_1423 = x_1427;
      } else {
        let x_1430 : f32 = u_xlat11.x;
        x_1423 = x_1430;
      }
      let x_1431 : f32 = x_1423;
      u_xlat51 = x_1431;
      let x_1433 : bool = u_xlatb18.x;
      if (x_1433) {
        let x_1437 : vec4<f32> = u_xlat11;
        x_1434 = vec3<f32>(x_1437.x, x_1437.y, x_1437.z);
      } else {
        let x_1440 : f32 = u_xlat51;
        x_1434 = vec3<f32>(x_1440, x_1440, x_1440);
      }
      let x_1442 : vec3<f32> = x_1434;
      let x_1443 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1442.x, x_1442.y, x_1442.z, x_1443.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1449 : vec4<f32> = u_xlat11;
    let x_1451 : i32 = u_xlati46;
    let x_1453 : vec4<f32> = x_779.x_AdditionalLightsColor[x_1451];
    let x_1455 : vec3<f32> = (vec3<f32>(x_1449.x, x_1449.y, x_1449.z) * vec3<f32>(x_1453.x, x_1453.y, x_1453.z));
    let x_1456 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
    let x_1458 : f32 = u_xlat47;
    let x_1459 : f32 = u_xlat49;
    u_xlat46 = (x_1458 * x_1459);
    let x_1461 : vec3<f32> = u_xlat15;
    let x_1462 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(x_1461, x_1462);
    let x_1464 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1464, 0.0f, 1.0f);
    let x_1466 : f32 = u_xlat46;
    let x_1467 : f32 = u_xlat47;
    u_xlat46 = (x_1466 * x_1467);
    let x_1469 : f32 = u_xlat46;
    let x_1471 : vec4<f32> = u_xlat11;
    let x_1473 : vec3<f32> = (vec3<f32>(x_1469, x_1469, x_1469) * vec3<f32>(x_1471.x, x_1471.y, x_1471.z));
    let x_1474 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1473.x, x_1473.y, x_1473.z, x_1474.w);
    let x_1476 : vec3<f32> = u_xlat9;
    let x_1477 : f32 = u_xlat48;
    let x_1480 : vec3<f32> = u_xlat6;
    u_xlat9 = ((x_1476 * vec3<f32>(x_1477, x_1477, x_1477)) + x_1480);
    let x_1482 : vec3<f32> = u_xlat9;
    let x_1483 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1482, x_1483);
    let x_1485 : f32 = u_xlat46;
    u_xlat46 = max(x_1485, 1.17549435e-38f);
    let x_1487 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1487);
    let x_1489 : f32 = u_xlat46;
    let x_1491 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1489, x_1489, x_1489) * x_1491);
    let x_1493 : vec3<f32> = u_xlat15;
    let x_1494 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1493, x_1494);
    let x_1496 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1496, 0.0f, 1.0f);
    let x_1498 : vec3<f32> = u_xlat10;
    let x_1499 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1498, x_1499);
    let x_1501 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1501, 0.0f, 1.0f);
    let x_1503 : f32 = u_xlat46;
    let x_1504 : f32 = u_xlat46;
    u_xlat46 = (x_1503 * x_1504);
    let x_1506 : f32 = u_xlat46;
    let x_1508 : f32 = u_xlat8.x;
    u_xlat46 = ((x_1506 * x_1508) + 1.00001001358032226562f);
    let x_1511 : f32 = u_xlat47;
    let x_1512 : f32 = u_xlat47;
    u_xlat47 = (x_1511 * x_1512);
    let x_1514 : f32 = u_xlat46;
    let x_1515 : f32 = u_xlat46;
    u_xlat46 = (x_1514 * x_1515);
    let x_1517 : f32 = u_xlat47;
    u_xlat47 = max(x_1517, 0.10000000149011611938f);
    let x_1519 : f32 = u_xlat46;
    let x_1520 : f32 = u_xlat47;
    u_xlat46 = (x_1519 * x_1520);
    let x_1523 : f32 = u_xlat3.x;
    let x_1524 : f32 = u_xlat46;
    u_xlat46 = (x_1523 * x_1524);
    let x_1526 : f32 = u_xlat4;
    let x_1527 : f32 = u_xlat46;
    u_xlat46 = (x_1526 / x_1527);
    let x_1529 : vec4<f32> = u_xlat0;
    let x_1531 : f32 = u_xlat46;
    let x_1534 : vec3<f32> = u_xlat17;
    u_xlat9 = ((vec3<f32>(x_1529.x, x_1529.y, x_1529.z) * vec3<f32>(x_1531, x_1531, x_1531)) + x_1534);
    let x_1536 : vec3<f32> = u_xlat9;
    let x_1537 : vec4<f32> = u_xlat11;
    let x_1540 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1536 * vec3<f32>(x_1537.x, x_1537.y, x_1537.z)) + x_1540);

    continuing {
      let x_1542 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1542 + bitcast<u32>(1i));
    }
  }
  let x_1544 : vec4<f32> = u_xlat7;
  let x_1546 : vec4<f32> = u_xlat5;
  let x_1549 : vec4<f32> = u_xlat2;
  let x_1551 : vec3<f32> = ((vec3<f32>(x_1544.x, x_1544.y, x_1544.z) * vec3<f32>(x_1546.x, x_1546.y, x_1546.z)) + vec3<f32>(x_1549.x, x_1549.y, x_1549.z));
  let x_1552 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1552.w);
  let x_1556 : vec3<f32> = u_xlat22;
  let x_1557 : vec4<f32> = u_xlat0;
  let x_1559 : vec3<f32> = (x_1556 + vec3<f32>(x_1557.x, x_1557.y, x_1557.z));
  let x_1560 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1559.x, x_1559.y, x_1559.z, x_1560.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


