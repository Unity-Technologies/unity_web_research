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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat4 : f32;

var<private> u_xlat42 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat18 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat32 : f32;

@group(1) @binding(3) var<uniform> x_221 : LightShadows;

var<private> u_xlatb32 : bool;

var<private> u_xlatb46 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat46 : f32;

@group(1) @binding(4) var<uniform> x_291 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_492 : UnityPerDraw;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatb18 : vec2<bool>;

var<private> u_xlatu46 : u32;

var<private> u_xlati47 : i32;

var<private> u_xlati46 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_755 : AdditionalLights;

var<private> u_xlat48 : f32;

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

var<private> u_xlatu44 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_383 : f32;
  var x_394 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_888 : f32;
  var x_898 : f32;
  var txVec1 : vec3<f32>;
  var x_1328 : f32;
  var x_1341 : f32;
  var x_1399 : f32;
  var x_1410 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_35);
  u_xlat0 = x_36;
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_47 : f32 = x_28.x_GlobalMipBias.x;
  let x_48 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_44.x, x_44.y), x_47);
  u_xlat1 = x_48.x;
  let x_53 : vec4<f32> = vs_TEXCOORD3;
  let x_55 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_60 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_60);
  let x_63 : vec3<f32> = u_xlat15;
  let x_65 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15 = (vec3<f32>(x_63.x, x_63.x, x_63.x) * vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_74 : vec4<f32> = vs_TEXCOORD0;
  let x_77 : f32 = x_28.x_GlobalMipBias.x;
  let x_78 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_74.z, x_74.w), x_77);
  u_xlat2 = x_78;
  let x_84 : vec4<f32> = vs_TEXCOORD0;
  let x_87 : f32 = x_28.x_GlobalMipBias.x;
  let x_88 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_84.z, x_84.w), x_87);
  u_xlat3 = vec3<f32>(x_88.x, x_88.y, x_88.z);
  let x_90 : vec4<f32> = u_xlat2;
  let x_94 : vec3<f32> = (vec3<f32>(x_90.x, x_90.y, x_90.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_97 : vec3<f32> = u_xlat15;
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_97, vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_103 : f32 = u_xlat2.x;
  u_xlat2.x = (x_103 + 0.5f);
  let x_107 : vec4<f32> = u_xlat2;
  let x_109 : vec3<f32> = u_xlat3;
  let x_110 : vec3<f32> = (vec3<f32>(x_107.x, x_107.x, x_107.x) * x_109);
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_116 : f32 = u_xlat2.w;
  u_xlat44 = max(x_116, 0.00009999999747378752f);
  let x_119 : vec4<f32> = u_xlat2;
  let x_121 : f32 = u_xlat44;
  let x_123 : vec3<f32> = (vec3<f32>(x_119.x, x_119.y, x_119.z) / vec3<f32>(x_121, x_121, x_121));
  let x_124 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_123.x, x_123.y, x_123.z, x_124.w);
  let x_126 : f32 = u_xlat1;
  u_xlat44 = ((-(x_126) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_131 : f32 = u_xlat44;
  u_xlat3.x = (-(x_131) + 1.0f);
  let x_137 : vec4<f32> = u_xlat0;
  let x_139 : f32 = u_xlat44;
  u_xlat17 = (vec3<f32>(x_137.x, x_137.y, x_137.z) * vec3<f32>(x_139, x_139, x_139));
  let x_142 : vec4<f32> = u_xlat0;
  let x_146 : vec3<f32> = (vec3<f32>(x_142.x, x_142.y, x_142.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_147 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_149 : f32 = u_xlat1;
  let x_151 : vec4<f32> = u_xlat0;
  let x_156 : vec3<f32> = ((vec3<f32>(x_149, x_149, x_149) * vec3<f32>(x_151.x, x_151.y, x_151.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_157 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_160 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_160) + 1.0f);
  let x_163 : f32 = u_xlat1;
  let x_164 : f32 = u_xlat1;
  u_xlat44 = (x_163 * x_164);
  let x_166 : f32 = u_xlat44;
  u_xlat44 = max(x_166, 0.0078125f);
  let x_170 : f32 = u_xlat44;
  let x_171 : f32 = u_xlat44;
  u_xlat4 = (x_170 * x_171);
  let x_175 : f32 = u_xlat0.w;
  let x_177 : f32 = u_xlat3.x;
  u_xlat42 = (x_175 + x_177);
  let x_179 : f32 = u_xlat42;
  u_xlat42 = clamp(x_179, 0.0f, 1.0f);
  let x_182 : f32 = u_xlat44;
  u_xlat3.x = ((x_182 * 4.0f) + 2.0f);
  let x_191 : vec4<f32> = vs_TEXCOORD8;
  let x_192 : vec2<f32> = vec2<f32>(x_191.x, x_191.y);
  let x_196 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_192.x, x_192.y, x_196);
  let x_209 : vec3<f32> = txVec0;
  let x_211 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_209.xy, x_209.z);
  u_xlat18 = x_211;
  let x_224 : f32 = x_221.x_MainLightShadowParams.x;
  u_xlat32 = (-(x_224) + 1.0f);
  let x_227 : f32 = u_xlat18;
  let x_229 : f32 = x_221.x_MainLightShadowParams.x;
  let x_231 : f32 = u_xlat32;
  u_xlat18 = ((x_227 * x_229) + x_231);
  let x_237 : f32 = vs_TEXCOORD8.z;
  u_xlatb32 = (0.0f >= x_237);
  let x_241 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (x_241 >= 1.0f);
  let x_243 : bool = u_xlatb46;
  let x_244 : bool = u_xlatb32;
  u_xlatb32 = (x_243 | x_244);
  let x_246 : bool = u_xlatb32;
  let x_247 : f32 = u_xlat18;
  u_xlat18 = select(x_247, 1.0f, x_246);
  let x_252 : vec3<f32> = vs_TEXCOORD7;
  let x_256 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_258 : vec3<f32> = (x_252 + -(x_256));
  let x_259 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_261 : vec4<f32> = u_xlat5;
  let x_263 : vec4<f32> = u_xlat5;
  u_xlat32 = dot(vec3<f32>(x_261.x, x_261.y, x_261.z), vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_267 : f32 = u_xlat32;
  let x_269 : f32 = x_221.x_MainLightShadowParams.z;
  let x_272 : f32 = x_221.x_MainLightShadowParams.w;
  u_xlat46 = ((x_267 * x_269) + x_272);
  let x_274 : f32 = u_xlat46;
  u_xlat46 = clamp(x_274, 0.0f, 1.0f);
  let x_276 : f32 = u_xlat18;
  u_xlat5.x = (-(x_276) + 1.0f);
  let x_280 : f32 = u_xlat46;
  let x_282 : f32 = u_xlat5.x;
  let x_284 : f32 = u_xlat18;
  u_xlat18 = ((x_280 * x_282) + x_284);
  let x_294 : f32 = x_291.x_MainLightCookieTextureFormat;
  u_xlatb46 = !((x_294 == -1.0f));
  let x_297 : bool = u_xlatb46;
  if (x_297) {
    let x_300 : vec3<f32> = vs_TEXCOORD7;
    let x_305 : vec4<f32> = x_291.x_MainLightWorldToLight[1i];
    let x_307 : vec2<f32> = (vec2<f32>(x_300.y, x_300.y) * vec2<f32>(x_305.x, x_305.y));
    let x_308 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_307.x, x_307.y, x_308.z, x_308.w);
    let x_311 : vec4<f32> = x_291.x_MainLightWorldToLight[0i];
    let x_313 : vec3<f32> = vs_TEXCOORD7;
    let x_316 : vec4<f32> = u_xlat5;
    let x_318 : vec2<f32> = ((vec2<f32>(x_311.x, x_311.y) * vec2<f32>(x_313.x, x_313.x)) + vec2<f32>(x_316.x, x_316.y));
    let x_319 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_318.x, x_318.y, x_319.z, x_319.w);
    let x_322 : vec4<f32> = x_291.x_MainLightWorldToLight[2i];
    let x_324 : vec3<f32> = vs_TEXCOORD7;
    let x_327 : vec4<f32> = u_xlat5;
    let x_329 : vec2<f32> = ((vec2<f32>(x_322.x, x_322.y) * vec2<f32>(x_324.z, x_324.z)) + vec2<f32>(x_327.x, x_327.y));
    let x_330 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_329.x, x_329.y, x_330.z, x_330.w);
    let x_332 : vec4<f32> = u_xlat5;
    let x_336 : vec4<f32> = x_291.x_MainLightWorldToLight[3i];
    let x_338 : vec2<f32> = (vec2<f32>(x_332.x, x_332.y) + vec2<f32>(x_336.x, x_336.y));
    let x_339 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_338.x, x_338.y, x_339.z, x_339.w);
    let x_341 : vec4<f32> = u_xlat5;
    let x_345 : vec2<f32> = ((vec2<f32>(x_341.x, x_341.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_346 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_345.x, x_345.y, x_346.z, x_346.w);
    let x_353 : vec4<f32> = u_xlat5;
    let x_356 : f32 = x_28.x_GlobalMipBias.x;
    let x_357 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_353.x, x_353.y), x_356);
    u_xlat5 = x_357;
    let x_362 : f32 = x_291.x_MainLightCookieTextureFormat;
    let x_364 : f32 = x_291.x_MainLightCookieTextureFormat;
    let x_366 : f32 = x_291.x_MainLightCookieTextureFormat;
    let x_368 : f32 = x_291.x_MainLightCookieTextureFormat;
    let x_369 : vec4<f32> = vec4<f32>(x_362, x_364, x_366, x_368);
    let x_377 : vec4<bool> = (vec4<f32>(x_369.x, x_369.y, x_369.z, x_369.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_377.x, x_377.y);
    let x_381 : bool = u_xlatb6.y;
    if (x_381) {
      let x_387 : f32 = u_xlat5.w;
      x_383 = x_387;
    } else {
      let x_390 : f32 = u_xlat5.x;
      x_383 = x_390;
    }
    let x_391 : f32 = x_383;
    u_xlat46 = x_391;
    let x_393 : bool = u_xlatb6.x;
    if (x_393) {
      let x_397 : vec4<f32> = u_xlat5;
      x_394 = vec3<f32>(x_397.x, x_397.y, x_397.z);
    } else {
      let x_400 : f32 = u_xlat46;
      x_394 = vec3<f32>(x_400, x_400, x_400);
    }
    let x_402 : vec3<f32> = x_394;
    let x_403 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_409 : vec4<f32> = u_xlat5;
  let x_412 : vec4<f32> = x_28.x_MainLightColor;
  let x_414 : vec3<f32> = (vec3<f32>(x_409.x, x_409.y, x_409.z) * vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_419 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_419;
  let x_423 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_423;
  let x_427 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_427;
  let x_429 : vec3<f32> = u_xlat6;
  let x_431 : vec3<f32> = u_xlat15;
  u_xlat46 = dot(-(x_429), x_431);
  let x_433 : f32 = u_xlat46;
  let x_434 : f32 = u_xlat46;
  u_xlat46 = (x_433 + x_434);
  let x_437 : vec3<f32> = u_xlat15;
  let x_438 : f32 = u_xlat46;
  let x_442 : vec3<f32> = u_xlat6;
  let x_444 : vec3<f32> = ((x_437 * -(vec3<f32>(x_438, x_438, x_438))) + -(x_442));
  let x_445 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec3<f32> = u_xlat15;
  let x_448 : vec3<f32> = u_xlat6;
  u_xlat46 = dot(x_447, x_448);
  let x_450 : f32 = u_xlat46;
  u_xlat46 = clamp(x_450, 0.0f, 1.0f);
  let x_452 : f32 = u_xlat46;
  u_xlat46 = (-(x_452) + 1.0f);
  let x_455 : f32 = u_xlat46;
  let x_456 : f32 = u_xlat46;
  u_xlat46 = (x_455 * x_456);
  let x_458 : f32 = u_xlat46;
  let x_459 : f32 = u_xlat46;
  u_xlat46 = (x_458 * x_459);
  let x_462 : f32 = u_xlat1;
  u_xlat47 = ((-(x_462) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_468 : f32 = u_xlat1;
  let x_469 : f32 = u_xlat47;
  u_xlat1 = (x_468 * x_469);
  let x_471 : f32 = u_xlat1;
  u_xlat1 = (x_471 * 6.0f);
  let x_482 : vec4<f32> = u_xlat7;
  let x_484 : f32 = u_xlat1;
  let x_485 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_482.x, x_482.y, x_482.z), x_484);
  u_xlat7 = x_485;
  let x_487 : f32 = u_xlat7.w;
  u_xlat1 = (x_487 + -1.0f);
  let x_494 : f32 = x_492.unity_SpecCube0_HDR.w;
  let x_495 : f32 = u_xlat1;
  u_xlat1 = ((x_494 * x_495) + 1.0f);
  let x_498 : f32 = u_xlat1;
  u_xlat1 = max(x_498, 0.0f);
  let x_500 : f32 = u_xlat1;
  u_xlat1 = log2(x_500);
  let x_502 : f32 = u_xlat1;
  let x_504 : f32 = x_492.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_502 * x_504);
  let x_506 : f32 = u_xlat1;
  u_xlat1 = exp2(x_506);
  let x_508 : f32 = u_xlat1;
  let x_510 : f32 = x_492.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_508 * x_510);
  let x_512 : vec4<f32> = u_xlat7;
  let x_514 : f32 = u_xlat1;
  let x_516 : vec3<f32> = (vec3<f32>(x_512.x, x_512.y, x_512.z) * vec3<f32>(x_514, x_514, x_514));
  let x_517 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_521 : f32 = u_xlat44;
  let x_523 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_521, x_521) * vec2<f32>(x_523, x_523)) + vec2<f32>(-1.0f, 1.0f));
  let x_529 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_529);
  let x_532 : vec4<f32> = u_xlat0;
  let x_535 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_532.x, x_532.y, x_532.z)) + vec3<f32>(x_535, x_535, x_535));
  let x_538 : f32 = u_xlat46;
  let x_540 : vec3<f32> = u_xlat22;
  let x_542 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_538, x_538, x_538) * x_540) + vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : f32 = u_xlat1;
  let x_547 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_545, x_545, x_545) * x_547);
  let x_549 : vec4<f32> = u_xlat7;
  let x_551 : vec3<f32> = u_xlat22;
  let x_552 : vec3<f32> = (vec3<f32>(x_549.x, x_549.y, x_549.z) * x_551);
  let x_553 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_555 : vec4<f32> = u_xlat2;
  let x_557 : vec3<f32> = u_xlat17;
  let x_559 : vec4<f32> = u_xlat7;
  let x_561 : vec3<f32> = ((vec3<f32>(x_555.x, x_555.y, x_555.z) * x_557) + vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_564 : f32 = u_xlat18;
  let x_567 : f32 = x_492.unity_LightData.z;
  u_xlat42 = (x_564 * x_567);
  let x_569 : vec3<f32> = u_xlat15;
  let x_571 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1 = dot(x_569, vec3<f32>(x_571.x, x_571.y, x_571.z));
  let x_574 : f32 = u_xlat1;
  u_xlat1 = clamp(x_574, 0.0f, 1.0f);
  let x_576 : f32 = u_xlat42;
  let x_577 : f32 = u_xlat1;
  u_xlat42 = (x_576 * x_577);
  let x_579 : f32 = u_xlat42;
  let x_581 : vec4<f32> = u_xlat5;
  let x_583 : vec3<f32> = (vec3<f32>(x_579, x_579, x_579) * vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec3<f32> = u_xlat6;
  let x_588 : vec4<f32> = x_28.x_MainLightPosition;
  let x_590 : vec3<f32> = (x_586 + vec3<f32>(x_588.x, x_588.y, x_588.z));
  let x_591 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_593 : vec4<f32> = u_xlat7;
  let x_595 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_593.x, x_593.y, x_593.z), vec3<f32>(x_595.x, x_595.y, x_595.z));
  let x_598 : f32 = u_xlat42;
  u_xlat42 = max(x_598, 1.17549435e-38f);
  let x_601 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_601);
  let x_603 : f32 = u_xlat42;
  let x_605 : vec4<f32> = u_xlat7;
  let x_607 : vec3<f32> = (vec3<f32>(x_603, x_603, x_603) * vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_608 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec3<f32> = u_xlat15;
  let x_611 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_610, vec3<f32>(x_611.x, x_611.y, x_611.z));
  let x_614 : f32 = u_xlat42;
  u_xlat42 = clamp(x_614, 0.0f, 1.0f);
  let x_617 : vec4<f32> = x_28.x_MainLightPosition;
  let x_619 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_617.x, x_617.y, x_617.z), vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : f32 = u_xlat1;
  u_xlat1 = clamp(x_622, 0.0f, 1.0f);
  let x_624 : f32 = u_xlat42;
  let x_625 : f32 = u_xlat42;
  u_xlat42 = (x_624 * x_625);
  let x_627 : f32 = u_xlat42;
  let x_629 : f32 = u_xlat8.x;
  u_xlat42 = ((x_627 * x_629) + 1.00001001358032226562f);
  let x_633 : f32 = u_xlat1;
  let x_634 : f32 = u_xlat1;
  u_xlat1 = (x_633 * x_634);
  let x_636 : f32 = u_xlat42;
  let x_637 : f32 = u_xlat42;
  u_xlat42 = (x_636 * x_637);
  let x_639 : f32 = u_xlat1;
  u_xlat1 = max(x_639, 0.10000000149011611938f);
  let x_642 : f32 = u_xlat42;
  let x_643 : f32 = u_xlat1;
  u_xlat42 = (x_642 * x_643);
  let x_646 : f32 = u_xlat3.x;
  let x_647 : f32 = u_xlat42;
  u_xlat42 = (x_646 * x_647);
  let x_649 : f32 = u_xlat4;
  let x_650 : f32 = u_xlat42;
  u_xlat42 = (x_649 / x_650);
  let x_652 : vec4<f32> = u_xlat0;
  let x_654 : f32 = u_xlat42;
  let x_657 : vec3<f32> = u_xlat17;
  let x_658 : vec3<f32> = ((vec3<f32>(x_652.x, x_652.y, x_652.z) * vec3<f32>(x_654, x_654, x_654)) + x_657);
  let x_659 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_662 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_664 : f32 = x_492.unity_LightData.y;
  u_xlat42 = min(x_662, x_664);
  let x_668 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_668));
  let x_671 : f32 = u_xlat32;
  let x_674 : f32 = x_221.x_AdditionalShadowFadeParams.x;
  let x_677 : f32 = x_221.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_671 * x_674) + x_677);
  let x_679 : f32 = u_xlat1;
  u_xlat1 = clamp(x_679, 0.0f, 1.0f);
  let x_683 : f32 = x_291.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_685 : f32 = x_291.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_687 : f32 = x_291.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_689 : f32 = x_291.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_690 : vec4<f32> = vec4<f32>(x_683, x_685, x_687, x_689);
  let x_696 : vec4<bool> = (vec4<f32>(x_690.x, x_690.y, x_690.z, x_690.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb18 = vec2<bool>(x_696.x, x_696.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_708 : u32 = u_xlatu_loop_1;
    let x_709 : u32 = u_xlatu42;
    if ((x_708 < x_709)) {
    } else {
      break;
    }
    let x_712 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_712 >> 2u);
    let x_716 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_716 & 3u));
    let x_720 : u32 = u_xlatu46;
    let x_723 : vec4<f32> = x_492.unity_LightIndices[bitcast<i32>(x_720)];
    let x_733 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_738 : vec4<u32> = indexable[x_733];
    u_xlat46 = dot(x_723, bitcast<vec4<f32>>(x_738));
    let x_742 : f32 = u_xlat46;
    u_xlati46 = i32(x_742);
    let x_745 : vec3<f32> = vs_TEXCOORD7;
    let x_756 : i32 = u_xlati46;
    let x_758 : vec4<f32> = x_755.x_AdditionalLightsPosition[x_756];
    let x_761 : i32 = u_xlati46;
    let x_763 : vec4<f32> = x_755.x_AdditionalLightsPosition[x_761];
    u_xlat9 = ((-(x_745) * vec3<f32>(x_758.w, x_758.w, x_758.w)) + vec3<f32>(x_763.x, x_763.y, x_763.z));
    let x_766 : vec3<f32> = u_xlat9;
    let x_767 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_766, x_767);
    let x_769 : f32 = u_xlat47;
    u_xlat47 = max(x_769, 0.00006103515625f);
    let x_773 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_773);
    let x_776 : f32 = u_xlat48;
    let x_778 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_776, x_776, x_776) * x_778);
    let x_781 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_781);
    let x_783 : f32 = u_xlat47;
    let x_784 : i32 = u_xlati46;
    let x_786 : f32 = x_755.x_AdditionalLightsAttenuation[x_784].x;
    u_xlat47 = (x_783 * x_786);
    let x_788 : f32 = u_xlat47;
    let x_790 : f32 = u_xlat47;
    u_xlat47 = ((-(x_788) * x_790) + 1.0f);
    let x_793 : f32 = u_xlat47;
    u_xlat47 = max(x_793, 0.0f);
    let x_795 : f32 = u_xlat47;
    let x_796 : f32 = u_xlat47;
    u_xlat47 = (x_795 * x_796);
    let x_798 : f32 = u_xlat47;
    let x_799 : f32 = u_xlat49;
    u_xlat47 = (x_798 * x_799);
    let x_801 : i32 = u_xlati46;
    let x_803 : vec4<f32> = x_755.x_AdditionalLightsSpotDir[x_801];
    let x_805 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_803.x, x_803.y, x_803.z), x_805);
    let x_807 : f32 = u_xlat49;
    let x_808 : i32 = u_xlati46;
    let x_810 : f32 = x_755.x_AdditionalLightsAttenuation[x_808].z;
    let x_812 : i32 = u_xlati46;
    let x_814 : f32 = x_755.x_AdditionalLightsAttenuation[x_812].w;
    u_xlat49 = ((x_807 * x_810) + x_814);
    let x_816 : f32 = u_xlat49;
    u_xlat49 = clamp(x_816, 0.0f, 1.0f);
    let x_818 : f32 = u_xlat49;
    let x_819 : f32 = u_xlat49;
    u_xlat49 = (x_818 * x_819);
    let x_821 : f32 = u_xlat47;
    let x_822 : f32 = u_xlat49;
    u_xlat47 = (x_821 * x_822);
    let x_826 : i32 = u_xlati46;
    let x_828 : f32 = x_221.x_AdditionalShadowParams[x_826].w;
    u_xlati49 = i32(x_828);
    let x_831 : i32 = u_xlati49;
    u_xlatb51 = (x_831 >= 0i);
    let x_833 : bool = u_xlatb51;
    if (x_833) {
      let x_837 : i32 = u_xlati46;
      let x_839 : f32 = x_221.x_AdditionalShadowParams[x_837].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_839, x_839, x_839, x_839))));
      let x_843 : bool = u_xlatb51;
      if (x_843) {
        let x_848 : vec3<f32> = u_xlat10;
        let x_851 : vec3<f32> = u_xlat10;
        let x_854 : vec4<bool> = (abs(vec4<f32>(x_848.z, x_848.z, x_848.y, x_848.z)) >= abs(vec4<f32>(x_851.x, x_851.y, x_851.x, x_851.x)));
        let x_856 : vec3<bool> = vec3<bool>(x_854.x, x_854.y, x_854.z);
        let x_857 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_856.x, x_856.y, x_856.z, x_857.w);
        let x_860 : bool = u_xlatb11.y;
        let x_862 : bool = u_xlatb11.x;
        u_xlatb51 = (x_860 & x_862);
        let x_864 : vec3<f32> = u_xlat10;
        let x_867 : vec4<bool> = (-(vec4<f32>(x_864.z, x_864.y, x_864.z, x_864.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_868 : vec3<bool> = vec3<bool>(x_867.x, x_867.y, x_867.w);
        let x_869 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_868.x, x_868.y, x_869.z, x_868.z);
        let x_873 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_873);
        let x_878 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_878);
        let x_884 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_884);
        let x_887 : bool = u_xlatb11.z;
        if (x_887) {
          let x_892 : f32 = u_xlat11.y;
          x_888 = x_892;
        } else {
          let x_894 : f32 = u_xlat52;
          x_888 = x_894;
        }
        let x_895 : f32 = x_888;
        u_xlat52 = x_895;
        let x_897 : bool = u_xlatb51;
        if (x_897) {
          let x_902 : f32 = u_xlat11.x;
          x_898 = x_902;
        } else {
          let x_904 : f32 = u_xlat52;
          x_898 = x_904;
        }
        let x_905 : f32 = x_898;
        u_xlat51 = x_905;
        let x_906 : i32 = u_xlati46;
        let x_908 : f32 = x_221.x_AdditionalShadowParams[x_906].w;
        u_xlat52 = trunc(x_908);
        let x_910 : f32 = u_xlat51;
        let x_911 : f32 = u_xlat52;
        u_xlat51 = (x_910 + x_911);
        let x_913 : f32 = u_xlat51;
        u_xlati49 = i32(x_913);
      }
      let x_915 : i32 = u_xlati49;
      u_xlati49 = (x_915 << bitcast<u32>(2i));
      let x_917 : vec3<f32> = vs_TEXCOORD7;
      let x_920 : i32 = u_xlati49;
      let x_923 : i32 = u_xlati49;
      let x_927 : vec4<f32> = x_221.x_AdditionalLightsWorldToShadow[((x_920 + 1i) / 4i)][((x_923 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_917.y, x_917.y, x_917.y, x_917.y) * x_927);
      let x_929 : i32 = u_xlati49;
      let x_931 : i32 = u_xlati49;
      let x_934 : vec4<f32> = x_221.x_AdditionalLightsWorldToShadow[(x_929 / 4i)][(x_931 % 4i)];
      let x_935 : vec3<f32> = vs_TEXCOORD7;
      let x_938 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_934 * vec4<f32>(x_935.x, x_935.x, x_935.x, x_935.x)) + x_938);
      let x_940 : i32 = u_xlati49;
      let x_943 : i32 = u_xlati49;
      let x_947 : vec4<f32> = x_221.x_AdditionalLightsWorldToShadow[((x_940 + 2i) / 4i)][((x_943 + 2i) % 4i)];
      let x_948 : vec3<f32> = vs_TEXCOORD7;
      let x_951 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_947 * vec4<f32>(x_948.z, x_948.z, x_948.z, x_948.z)) + x_951);
      let x_953 : vec4<f32> = u_xlat11;
      let x_954 : i32 = u_xlati49;
      let x_957 : i32 = u_xlati49;
      let x_961 : vec4<f32> = x_221.x_AdditionalLightsWorldToShadow[((x_954 + 3i) / 4i)][((x_957 + 3i) % 4i)];
      u_xlat11 = (x_953 + x_961);
      let x_963 : vec4<f32> = u_xlat11;
      let x_965 : vec4<f32> = u_xlat11;
      let x_967 : vec3<f32> = (vec3<f32>(x_963.x, x_963.y, x_963.z) / vec3<f32>(x_965.w, x_965.w, x_965.w));
      let x_968 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
      let x_971 : vec4<f32> = u_xlat11;
      let x_972 : vec2<f32> = vec2<f32>(x_971.x, x_971.y);
      let x_974 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_972.x, x_972.y, x_974);
      let x_982 : vec3<f32> = txVec1;
      let x_984 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_982.xy, x_982.z);
      u_xlat49 = x_984;
      let x_985 : i32 = u_xlati46;
      let x_987 : f32 = x_221.x_AdditionalShadowParams[x_985].x;
      u_xlat51 = (1.0f + -(x_987));
      let x_990 : f32 = u_xlat49;
      let x_991 : i32 = u_xlati46;
      let x_993 : f32 = x_221.x_AdditionalShadowParams[x_991].x;
      let x_995 : f32 = u_xlat51;
      u_xlat49 = ((x_990 * x_993) + x_995);
      let x_998 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_998);
      let x_1002 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1002 >= 1.0f);
      let x_1004 : bool = u_xlatb51;
      let x_1005 : bool = u_xlatb52;
      u_xlatb51 = (x_1004 | x_1005);
      let x_1007 : bool = u_xlatb51;
      let x_1008 : f32 = u_xlat49;
      u_xlat49 = select(x_1008, 1.0f, x_1007);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1011 : f32 = u_xlat49;
    u_xlat51 = (-(x_1011) + 1.0f);
    let x_1014 : f32 = u_xlat1;
    let x_1015 : f32 = u_xlat51;
    let x_1017 : f32 = u_xlat49;
    u_xlat49 = ((x_1014 * x_1015) + x_1017);
    let x_1020 : i32 = u_xlati46;
    u_xlati51 = (1i << bitcast<u32>((x_1020 & 31i)));
    let x_1024 : i32 = u_xlati51;
    let x_1027 : f32 = x_291.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1024) & bitcast<u32>(x_1027)));
    let x_1031 : i32 = u_xlati51;
    if ((x_1031 != 0i)) {
      let x_1035 : i32 = u_xlati46;
      let x_1037 : f32 = x_291.x_AdditionalLightsLightTypes[x_1035].el;
      u_xlati51 = i32(x_1037);
      let x_1040 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1040 != 0i));
      let x_1044 : i32 = u_xlati46;
      u_xlati11 = (x_1044 << bitcast<u32>(2i));
      let x_1046 : i32 = u_xlati52;
      if ((x_1046 != 0i)) {
        let x_1051 : vec3<f32> = vs_TEXCOORD7;
        let x_1053 : i32 = u_xlati11;
        let x_1056 : i32 = u_xlati11;
        let x_1060 : vec4<f32> = x_291.x_AdditionalLightsWorldToLights[((x_1053 + 1i) / 4i)][((x_1056 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1051.y, x_1051.y, x_1051.y) * vec3<f32>(x_1060.x, x_1060.y, x_1060.w));
        let x_1063 : i32 = u_xlati11;
        let x_1065 : i32 = u_xlati11;
        let x_1068 : vec4<f32> = x_291.x_AdditionalLightsWorldToLights[(x_1063 / 4i)][(x_1065 % 4i)];
        let x_1070 : vec3<f32> = vs_TEXCOORD7;
        let x_1073 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1068.x, x_1068.y, x_1068.w) * vec3<f32>(x_1070.x, x_1070.x, x_1070.x)) + x_1073);
        let x_1075 : i32 = u_xlati11;
        let x_1078 : i32 = u_xlati11;
        let x_1082 : vec4<f32> = x_291.x_AdditionalLightsWorldToLights[((x_1075 + 2i) / 4i)][((x_1078 + 2i) % 4i)];
        let x_1084 : vec3<f32> = vs_TEXCOORD7;
        let x_1087 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1082.x, x_1082.y, x_1082.w) * vec3<f32>(x_1084.z, x_1084.z, x_1084.z)) + x_1087);
        let x_1089 : vec3<f32> = u_xlat25;
        let x_1090 : i32 = u_xlati11;
        let x_1093 : i32 = u_xlati11;
        let x_1097 : vec4<f32> = x_291.x_AdditionalLightsWorldToLights[((x_1090 + 3i) / 4i)][((x_1093 + 3i) % 4i)];
        u_xlat25 = (x_1089 + vec3<f32>(x_1097.x, x_1097.y, x_1097.w));
        let x_1100 : vec3<f32> = u_xlat25;
        let x_1102 : vec3<f32> = u_xlat25;
        let x_1104 : vec2<f32> = (vec2<f32>(x_1100.x, x_1100.y) / vec2<f32>(x_1102.z, x_1102.z));
        let x_1105 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1104.x, x_1104.y, x_1105.z);
        let x_1107 : vec3<f32> = u_xlat25;
        let x_1110 : vec2<f32> = ((vec2<f32>(x_1107.x, x_1107.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1111 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1110.x, x_1110.y, x_1111.z);
        let x_1113 : vec3<f32> = u_xlat25;
        let x_1117 : vec2<f32> = clamp(vec2<f32>(x_1113.x, x_1113.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1118 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1117.x, x_1117.y, x_1118.z);
        let x_1120 : i32 = u_xlati46;
        let x_1122 : vec4<f32> = x_291.x_AdditionalLightsCookieAtlasUVRects[x_1120];
        let x_1124 : vec3<f32> = u_xlat25;
        let x_1127 : i32 = u_xlati46;
        let x_1129 : vec4<f32> = x_291.x_AdditionalLightsCookieAtlasUVRects[x_1127];
        let x_1131 : vec2<f32> = ((vec2<f32>(x_1122.x, x_1122.y) * vec2<f32>(x_1124.x, x_1124.y)) + vec2<f32>(x_1129.z, x_1129.w));
        let x_1132 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1131.x, x_1131.y, x_1132.z);
      } else {
        let x_1135 : i32 = u_xlati51;
        u_xlatb51 = (x_1135 == 1i);
        let x_1137 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1137);
        let x_1139 : i32 = u_xlati51;
        if ((x_1139 != 0i)) {
          let x_1144 : vec3<f32> = vs_TEXCOORD7;
          let x_1146 : i32 = u_xlati11;
          let x_1149 : i32 = u_xlati11;
          let x_1153 : vec4<f32> = x_291.x_AdditionalLightsWorldToLights[((x_1146 + 1i) / 4i)][((x_1149 + 1i) % 4i)];
          let x_1155 : vec2<f32> = (vec2<f32>(x_1144.y, x_1144.y) * vec2<f32>(x_1153.x, x_1153.y));
          let x_1156 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1155.x, x_1155.y, x_1156.z, x_1156.w);
          let x_1158 : i32 = u_xlati11;
          let x_1160 : i32 = u_xlati11;
          let x_1163 : vec4<f32> = x_291.x_AdditionalLightsWorldToLights[(x_1158 / 4i)][(x_1160 % 4i)];
          let x_1165 : vec3<f32> = vs_TEXCOORD7;
          let x_1168 : vec4<f32> = u_xlat12;
          let x_1170 : vec2<f32> = ((vec2<f32>(x_1163.x, x_1163.y) * vec2<f32>(x_1165.x, x_1165.x)) + vec2<f32>(x_1168.x, x_1168.y));
          let x_1171 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1170.x, x_1170.y, x_1171.z, x_1171.w);
          let x_1173 : i32 = u_xlati11;
          let x_1176 : i32 = u_xlati11;
          let x_1180 : vec4<f32> = x_291.x_AdditionalLightsWorldToLights[((x_1173 + 2i) / 4i)][((x_1176 + 2i) % 4i)];
          let x_1182 : vec3<f32> = vs_TEXCOORD7;
          let x_1185 : vec4<f32> = u_xlat12;
          let x_1187 : vec2<f32> = ((vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(x_1182.z, x_1182.z)) + vec2<f32>(x_1185.x, x_1185.y));
          let x_1188 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1187.x, x_1187.y, x_1188.z, x_1188.w);
          let x_1190 : vec4<f32> = u_xlat12;
          let x_1192 : i32 = u_xlati11;
          let x_1195 : i32 = u_xlati11;
          let x_1199 : vec4<f32> = x_291.x_AdditionalLightsWorldToLights[((x_1192 + 3i) / 4i)][((x_1195 + 3i) % 4i)];
          let x_1201 : vec2<f32> = (vec2<f32>(x_1190.x, x_1190.y) + vec2<f32>(x_1199.x, x_1199.y));
          let x_1202 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1201.x, x_1201.y, x_1202.z, x_1202.w);
          let x_1204 : vec4<f32> = u_xlat12;
          let x_1207 : vec2<f32> = ((vec2<f32>(x_1204.x, x_1204.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1208 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1207.x, x_1207.y, x_1208.z, x_1208.w);
          let x_1210 : vec4<f32> = u_xlat12;
          let x_1212 : vec2<f32> = fract(vec2<f32>(x_1210.x, x_1210.y));
          let x_1213 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
          let x_1215 : i32 = u_xlati46;
          let x_1217 : vec4<f32> = x_291.x_AdditionalLightsCookieAtlasUVRects[x_1215];
          let x_1219 : vec4<f32> = u_xlat12;
          let x_1222 : i32 = u_xlati46;
          let x_1224 : vec4<f32> = x_291.x_AdditionalLightsCookieAtlasUVRects[x_1222];
          let x_1226 : vec2<f32> = ((vec2<f32>(x_1217.x, x_1217.y) * vec2<f32>(x_1219.x, x_1219.y)) + vec2<f32>(x_1224.z, x_1224.w));
          let x_1227 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1226.x, x_1226.y, x_1227.z);
        } else {
          let x_1230 : vec3<f32> = vs_TEXCOORD7;
          let x_1232 : i32 = u_xlati11;
          let x_1235 : i32 = u_xlati11;
          let x_1239 : vec4<f32> = x_291.x_AdditionalLightsWorldToLights[((x_1232 + 1i) / 4i)][((x_1235 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1230.y, x_1230.y, x_1230.y, x_1230.y) * x_1239);
          let x_1241 : i32 = u_xlati11;
          let x_1243 : i32 = u_xlati11;
          let x_1246 : vec4<f32> = x_291.x_AdditionalLightsWorldToLights[(x_1241 / 4i)][(x_1243 % 4i)];
          let x_1247 : vec3<f32> = vs_TEXCOORD7;
          let x_1250 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1246 * vec4<f32>(x_1247.x, x_1247.x, x_1247.x, x_1247.x)) + x_1250);
          let x_1252 : i32 = u_xlati11;
          let x_1255 : i32 = u_xlati11;
          let x_1259 : vec4<f32> = x_291.x_AdditionalLightsWorldToLights[((x_1252 + 2i) / 4i)][((x_1255 + 2i) % 4i)];
          let x_1260 : vec3<f32> = vs_TEXCOORD7;
          let x_1263 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1259 * vec4<f32>(x_1260.z, x_1260.z, x_1260.z, x_1260.z)) + x_1263);
          let x_1265 : vec4<f32> = u_xlat12;
          let x_1266 : i32 = u_xlati11;
          let x_1269 : i32 = u_xlati11;
          let x_1273 : vec4<f32> = x_291.x_AdditionalLightsWorldToLights[((x_1266 + 3i) / 4i)][((x_1269 + 3i) % 4i)];
          u_xlat12 = (x_1265 + x_1273);
          let x_1275 : vec4<f32> = u_xlat12;
          let x_1277 : vec4<f32> = u_xlat12;
          let x_1279 : vec3<f32> = (vec3<f32>(x_1275.x, x_1275.y, x_1275.z) / vec3<f32>(x_1277.w, x_1277.w, x_1277.w));
          let x_1280 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
          let x_1282 : vec4<f32> = u_xlat12;
          let x_1284 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1282.x, x_1282.y, x_1282.z), vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
          let x_1287 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1287);
          let x_1289 : f32 = u_xlat51;
          let x_1291 : vec4<f32> = u_xlat12;
          let x_1293 : vec3<f32> = (vec3<f32>(x_1289, x_1289, x_1289) * vec3<f32>(x_1291.x, x_1291.y, x_1291.z));
          let x_1294 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1294.w);
          let x_1296 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1296.x, x_1296.y, x_1296.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1301 : f32 = u_xlat51;
          u_xlat51 = max(x_1301, 0.00000099999999747524f);
          let x_1304 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1304);
          let x_1307 : f32 = u_xlat51;
          let x_1309 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1307, x_1307, x_1307) * vec3<f32>(x_1309.z, x_1309.x, x_1309.y));
          let x_1313 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1313);
          let x_1317 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1317, 0.0f, 1.0f);
          let x_1320 : vec3<f32> = u_xlat13;
          let x_1322 : vec4<bool> = (vec4<f32>(x_1320.y, x_1320.y, x_1320.y, x_1320.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1323 : vec2<bool> = vec2<bool>(x_1322.x, x_1322.w);
          let x_1324 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1323.x, x_1324.y, x_1324.z, x_1323.y);
          let x_1327 : bool = u_xlatb11.x;
          if (x_1327) {
            let x_1332 : f32 = u_xlat13.x;
            x_1328 = x_1332;
          } else {
            let x_1335 : f32 = u_xlat13.x;
            x_1328 = -(x_1335);
          }
          let x_1337 : f32 = x_1328;
          u_xlat11.x = x_1337;
          let x_1340 : bool = u_xlatb11.w;
          if (x_1340) {
            let x_1345 : f32 = u_xlat13.x;
            x_1341 = x_1345;
          } else {
            let x_1348 : f32 = u_xlat13.x;
            x_1341 = -(x_1348);
          }
          let x_1350 : f32 = x_1341;
          u_xlat11.w = x_1350;
          let x_1352 : vec4<f32> = u_xlat12;
          let x_1354 : f32 = u_xlat51;
          let x_1357 : vec4<f32> = u_xlat11;
          let x_1359 : vec2<f32> = ((vec2<f32>(x_1352.x, x_1352.y) * vec2<f32>(x_1354, x_1354)) + vec2<f32>(x_1357.x, x_1357.w));
          let x_1360 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1359.x, x_1360.y, x_1360.z, x_1359.y);
          let x_1362 : vec4<f32> = u_xlat11;
          let x_1365 : vec2<f32> = ((vec2<f32>(x_1362.x, x_1362.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1366 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1365.x, x_1366.y, x_1366.z, x_1365.y);
          let x_1368 : vec4<f32> = u_xlat11;
          let x_1372 : vec2<f32> = clamp(vec2<f32>(x_1368.x, x_1368.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1373 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1372.x, x_1373.y, x_1373.z, x_1372.y);
          let x_1375 : i32 = u_xlati46;
          let x_1377 : vec4<f32> = x_291.x_AdditionalLightsCookieAtlasUVRects[x_1375];
          let x_1379 : vec4<f32> = u_xlat11;
          let x_1382 : i32 = u_xlati46;
          let x_1384 : vec4<f32> = x_291.x_AdditionalLightsCookieAtlasUVRects[x_1382];
          let x_1386 : vec2<f32> = ((vec2<f32>(x_1377.x, x_1377.y) * vec2<f32>(x_1379.x, x_1379.w)) + vec2<f32>(x_1384.z, x_1384.w));
          let x_1387 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1386.x, x_1386.y, x_1387.z);
        }
      }
      let x_1394 : vec3<f32> = u_xlat25;
      let x_1396 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1394.x, x_1394.y), 0.0f);
      u_xlat11 = x_1396;
      let x_1398 : bool = u_xlatb18.y;
      if (x_1398) {
        let x_1403 : f32 = u_xlat11.w;
        x_1399 = x_1403;
      } else {
        let x_1406 : f32 = u_xlat11.x;
        x_1399 = x_1406;
      }
      let x_1407 : f32 = x_1399;
      u_xlat51 = x_1407;
      let x_1409 : bool = u_xlatb18.x;
      if (x_1409) {
        let x_1413 : vec4<f32> = u_xlat11;
        x_1410 = vec3<f32>(x_1413.x, x_1413.y, x_1413.z);
      } else {
        let x_1416 : f32 = u_xlat51;
        x_1410 = vec3<f32>(x_1416, x_1416, x_1416);
      }
      let x_1418 : vec3<f32> = x_1410;
      let x_1419 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1425 : vec4<f32> = u_xlat11;
    let x_1427 : i32 = u_xlati46;
    let x_1429 : vec4<f32> = x_755.x_AdditionalLightsColor[x_1427];
    let x_1431 : vec3<f32> = (vec3<f32>(x_1425.x, x_1425.y, x_1425.z) * vec3<f32>(x_1429.x, x_1429.y, x_1429.z));
    let x_1432 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1431.x, x_1431.y, x_1431.z, x_1432.w);
    let x_1434 : f32 = u_xlat47;
    let x_1435 : f32 = u_xlat49;
    u_xlat46 = (x_1434 * x_1435);
    let x_1437 : vec3<f32> = u_xlat15;
    let x_1438 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(x_1437, x_1438);
    let x_1440 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1440, 0.0f, 1.0f);
    let x_1442 : f32 = u_xlat46;
    let x_1443 : f32 = u_xlat47;
    u_xlat46 = (x_1442 * x_1443);
    let x_1445 : f32 = u_xlat46;
    let x_1447 : vec4<f32> = u_xlat11;
    let x_1449 : vec3<f32> = (vec3<f32>(x_1445, x_1445, x_1445) * vec3<f32>(x_1447.x, x_1447.y, x_1447.z));
    let x_1450 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1450.w);
    let x_1452 : vec3<f32> = u_xlat9;
    let x_1453 : f32 = u_xlat48;
    let x_1456 : vec3<f32> = u_xlat6;
    u_xlat9 = ((x_1452 * vec3<f32>(x_1453, x_1453, x_1453)) + x_1456);
    let x_1458 : vec3<f32> = u_xlat9;
    let x_1459 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1458, x_1459);
    let x_1461 : f32 = u_xlat46;
    u_xlat46 = max(x_1461, 1.17549435e-38f);
    let x_1463 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1463);
    let x_1465 : f32 = u_xlat46;
    let x_1467 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1465, x_1465, x_1465) * x_1467);
    let x_1469 : vec3<f32> = u_xlat15;
    let x_1470 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1469, x_1470);
    let x_1472 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1472, 0.0f, 1.0f);
    let x_1474 : vec3<f32> = u_xlat10;
    let x_1475 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1474, x_1475);
    let x_1477 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1477, 0.0f, 1.0f);
    let x_1479 : f32 = u_xlat46;
    let x_1480 : f32 = u_xlat46;
    u_xlat46 = (x_1479 * x_1480);
    let x_1482 : f32 = u_xlat46;
    let x_1484 : f32 = u_xlat8.x;
    u_xlat46 = ((x_1482 * x_1484) + 1.00001001358032226562f);
    let x_1487 : f32 = u_xlat47;
    let x_1488 : f32 = u_xlat47;
    u_xlat47 = (x_1487 * x_1488);
    let x_1490 : f32 = u_xlat46;
    let x_1491 : f32 = u_xlat46;
    u_xlat46 = (x_1490 * x_1491);
    let x_1493 : f32 = u_xlat47;
    u_xlat47 = max(x_1493, 0.10000000149011611938f);
    let x_1495 : f32 = u_xlat46;
    let x_1496 : f32 = u_xlat47;
    u_xlat46 = (x_1495 * x_1496);
    let x_1499 : f32 = u_xlat3.x;
    let x_1500 : f32 = u_xlat46;
    u_xlat46 = (x_1499 * x_1500);
    let x_1502 : f32 = u_xlat4;
    let x_1503 : f32 = u_xlat46;
    u_xlat46 = (x_1502 / x_1503);
    let x_1505 : vec4<f32> = u_xlat0;
    let x_1507 : f32 = u_xlat46;
    let x_1510 : vec3<f32> = u_xlat17;
    u_xlat9 = ((vec3<f32>(x_1505.x, x_1505.y, x_1505.z) * vec3<f32>(x_1507, x_1507, x_1507)) + x_1510);
    let x_1512 : vec3<f32> = u_xlat9;
    let x_1513 : vec4<f32> = u_xlat11;
    let x_1516 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1512 * vec3<f32>(x_1513.x, x_1513.y, x_1513.z)) + x_1516);

    continuing {
      let x_1518 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1518 + bitcast<u32>(1i));
    }
  }
  let x_1520 : vec4<f32> = u_xlat7;
  let x_1522 : vec4<f32> = u_xlat5;
  let x_1525 : vec4<f32> = u_xlat2;
  let x_1527 : vec3<f32> = ((vec3<f32>(x_1520.x, x_1520.y, x_1520.z) * vec3<f32>(x_1522.x, x_1522.y, x_1522.z)) + vec3<f32>(x_1525.x, x_1525.y, x_1525.z));
  let x_1528 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1527.x, x_1527.y, x_1527.z, x_1528.w);
  let x_1532 : vec3<f32> = u_xlat22;
  let x_1533 : vec4<f32> = u_xlat0;
  let x_1535 : vec3<f32> = (x_1532 + vec3<f32>(x_1533.x, x_1533.y, x_1533.z));
  let x_1536 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1535.x, x_1535.y, x_1535.z, x_1536.w);
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


