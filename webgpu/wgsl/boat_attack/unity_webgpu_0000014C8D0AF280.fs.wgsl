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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

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
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_81 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat42 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat18 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat32 : f32;

@group(1) @binding(3) var<uniform> x_256 : LightShadows;

var<private> u_xlatb32 : bool;

var<private> u_xlatb46 : bool;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat46 : f32;

@group(1) @binding(4) var<uniform> x_325 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlatu42 : u32;

var<private> u_xlatb18 : vec2<bool>;

var<private> u_xlatu46 : u32;

var<private> u_xlati47 : i32;

var<private> u_xlati46 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_808 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat49 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu44 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_416 : f32;
  var x_427 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_941 : f32;
  var x_951 : f32;
  var txVec1 : vec3<f32>;
  var x_1381 : f32;
  var x_1394 : f32;
  var x_1452 : f32;
  var x_1463 : vec3<f32>;
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
  u_xlat1.x = x_48.x;
  let x_54 : vec4<f32> = vs_TEXCOORD3;
  let x_56 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(vec3<f32>(x_54.x, x_54.y, x_54.z), vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_61 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_61);
  let x_65 : vec3<f32> = u_xlat15;
  let x_67 : vec4<f32> = vs_TEXCOORD3;
  let x_69 : vec3<f32> = (vec3<f32>(x_65.x, x_65.x, x_65.x) * vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  u_xlat2.w = 1.0f;
  let x_85 : vec4<f32> = x_81.unity_SHAr;
  let x_86 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_85, x_86);
  let x_91 : vec4<f32> = x_81.unity_SHAg;
  let x_92 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_91, x_92);
  let x_98 : vec4<f32> = x_81.unity_SHAb;
  let x_99 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_98, x_99);
  let x_103 : vec4<f32> = u_xlat2;
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_103.y, x_103.z, x_103.z, x_103.x) * vec4<f32>(x_105.x, x_105.y, x_105.z, x_105.z));
  let x_111 : vec4<f32> = x_81.unity_SHBr;
  let x_112 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_111, x_112);
  let x_117 : vec4<f32> = x_81.unity_SHBg;
  let x_118 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_117, x_118);
  let x_123 : vec4<f32> = x_81.unity_SHBb;
  let x_124 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_123, x_124);
  let x_128 : f32 = u_xlat2.y;
  let x_130 : f32 = u_xlat2.y;
  u_xlat15.x = (x_128 * x_130);
  let x_134 : f32 = u_xlat2.x;
  let x_136 : f32 = u_xlat2.x;
  let x_139 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_134 * x_136) + -(x_139));
  let x_145 : vec4<f32> = x_81.unity_SHC;
  let x_147 : vec3<f32> = u_xlat15;
  let x_150 : vec4<f32> = u_xlat5;
  u_xlat15 = ((vec3<f32>(x_145.x, x_145.y, x_145.z) * vec3<f32>(x_147.x, x_147.x, x_147.x)) + vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_153 : vec3<f32> = u_xlat15;
  let x_154 : vec3<f32> = u_xlat3;
  u_xlat15 = (x_153 + x_154);
  let x_156 : vec3<f32> = u_xlat15;
  u_xlat15 = max(x_156, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_162 : f32 = u_xlat1.x;
  u_xlat44 = ((-(x_162) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_167 : f32 = u_xlat44;
  u_xlat3.x = (-(x_167) + 1.0f);
  let x_172 : vec4<f32> = u_xlat0;
  let x_174 : f32 = u_xlat44;
  u_xlat17 = (vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_174, x_174, x_174));
  let x_177 : vec4<f32> = u_xlat0;
  let x_181 : vec3<f32> = (vec3<f32>(x_177.x, x_177.y, x_177.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_184 : vec3<f32> = u_xlat1;
  let x_186 : vec4<f32> = u_xlat0;
  let x_191 : vec3<f32> = ((vec3<f32>(x_184.x, x_184.x, x_184.x) * vec3<f32>(x_186.x, x_186.y, x_186.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_192 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_195) + 1.0f);
  let x_200 : f32 = u_xlat1.x;
  let x_202 : f32 = u_xlat1.x;
  u_xlat44 = (x_200 * x_202);
  let x_204 : f32 = u_xlat44;
  u_xlat44 = max(x_204, 0.0078125f);
  let x_207 : f32 = u_xlat44;
  let x_208 : f32 = u_xlat44;
  u_xlat4.x = (x_207 * x_208);
  let x_213 : f32 = u_xlat0.w;
  let x_215 : f32 = u_xlat3.x;
  u_xlat42 = (x_213 + x_215);
  let x_217 : f32 = u_xlat42;
  u_xlat42 = clamp(x_217, 0.0f, 1.0f);
  let x_219 : f32 = u_xlat44;
  u_xlat3.x = ((x_219 * 4.0f) + 2.0f);
  let x_228 : vec4<f32> = vs_TEXCOORD8;
  let x_229 : vec2<f32> = vec2<f32>(x_228.x, x_228.y);
  let x_232 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_229.x, x_229.y, x_232);
  let x_245 : vec3<f32> = txVec0;
  let x_247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_245.xy, x_245.z);
  u_xlat18 = x_247;
  let x_259 : f32 = x_256.x_MainLightShadowParams.x;
  u_xlat32 = (-(x_259) + 1.0f);
  let x_262 : f32 = u_xlat18;
  let x_264 : f32 = x_256.x_MainLightShadowParams.x;
  let x_266 : f32 = u_xlat32;
  u_xlat18 = ((x_262 * x_264) + x_266);
  let x_272 : f32 = vs_TEXCOORD8.z;
  u_xlatb32 = (0.0f >= x_272);
  let x_276 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (x_276 >= 1.0f);
  let x_278 : bool = u_xlatb46;
  let x_279 : bool = u_xlatb32;
  u_xlatb32 = (x_278 | x_279);
  let x_281 : bool = u_xlatb32;
  let x_282 : f32 = u_xlat18;
  u_xlat18 = select(x_282, 1.0f, x_281);
  let x_286 : vec3<f32> = vs_TEXCOORD7;
  let x_290 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_292 : vec3<f32> = (x_286 + -(x_290));
  let x_293 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec4<f32> = u_xlat5;
  let x_297 : vec4<f32> = u_xlat5;
  u_xlat32 = dot(vec3<f32>(x_295.x, x_295.y, x_295.z), vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_301 : f32 = u_xlat32;
  let x_303 : f32 = x_256.x_MainLightShadowParams.z;
  let x_306 : f32 = x_256.x_MainLightShadowParams.w;
  u_xlat46 = ((x_301 * x_303) + x_306);
  let x_308 : f32 = u_xlat46;
  u_xlat46 = clamp(x_308, 0.0f, 1.0f);
  let x_310 : f32 = u_xlat18;
  u_xlat5.x = (-(x_310) + 1.0f);
  let x_314 : f32 = u_xlat46;
  let x_316 : f32 = u_xlat5.x;
  let x_318 : f32 = u_xlat18;
  u_xlat18 = ((x_314 * x_316) + x_318);
  let x_328 : f32 = x_325.x_MainLightCookieTextureFormat;
  u_xlatb46 = !((x_328 == -1.0f));
  let x_331 : bool = u_xlatb46;
  if (x_331) {
    let x_334 : vec3<f32> = vs_TEXCOORD7;
    let x_338 : vec4<f32> = x_325.x_MainLightWorldToLight[1i];
    let x_340 : vec2<f32> = (vec2<f32>(x_334.y, x_334.y) * vec2<f32>(x_338.x, x_338.y));
    let x_341 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_340.x, x_340.y, x_341.z, x_341.w);
    let x_344 : vec4<f32> = x_325.x_MainLightWorldToLight[0i];
    let x_346 : vec3<f32> = vs_TEXCOORD7;
    let x_349 : vec4<f32> = u_xlat5;
    let x_351 : vec2<f32> = ((vec2<f32>(x_344.x, x_344.y) * vec2<f32>(x_346.x, x_346.x)) + vec2<f32>(x_349.x, x_349.y));
    let x_352 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_351.x, x_351.y, x_352.z, x_352.w);
    let x_355 : vec4<f32> = x_325.x_MainLightWorldToLight[2i];
    let x_357 : vec3<f32> = vs_TEXCOORD7;
    let x_360 : vec4<f32> = u_xlat5;
    let x_362 : vec2<f32> = ((vec2<f32>(x_355.x, x_355.y) * vec2<f32>(x_357.z, x_357.z)) + vec2<f32>(x_360.x, x_360.y));
    let x_363 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_362.x, x_362.y, x_363.z, x_363.w);
    let x_365 : vec4<f32> = u_xlat5;
    let x_369 : vec4<f32> = x_325.x_MainLightWorldToLight[3i];
    let x_371 : vec2<f32> = (vec2<f32>(x_365.x, x_365.y) + vec2<f32>(x_369.x, x_369.y));
    let x_372 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_371.x, x_371.y, x_372.z, x_372.w);
    let x_374 : vec4<f32> = u_xlat5;
    let x_379 : vec2<f32> = ((vec2<f32>(x_374.x, x_374.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_380 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
    let x_387 : vec4<f32> = u_xlat5;
    let x_390 : f32 = x_28.x_GlobalMipBias.x;
    let x_391 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_387.x, x_387.y), x_390);
    u_xlat5 = x_391;
    let x_396 : f32 = x_325.x_MainLightCookieTextureFormat;
    let x_398 : f32 = x_325.x_MainLightCookieTextureFormat;
    let x_400 : f32 = x_325.x_MainLightCookieTextureFormat;
    let x_402 : f32 = x_325.x_MainLightCookieTextureFormat;
    let x_403 : vec4<f32> = vec4<f32>(x_396, x_398, x_400, x_402);
    let x_411 : vec4<bool> = (vec4<f32>(x_403.x, x_403.y, x_403.z, x_403.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_411.x, x_411.y);
    let x_414 : bool = u_xlatb6.y;
    if (x_414) {
      let x_420 : f32 = u_xlat5.w;
      x_416 = x_420;
    } else {
      let x_423 : f32 = u_xlat5.x;
      x_416 = x_423;
    }
    let x_424 : f32 = x_416;
    u_xlat46 = x_424;
    let x_426 : bool = u_xlatb6.x;
    if (x_426) {
      let x_430 : vec4<f32> = u_xlat5;
      x_427 = vec3<f32>(x_430.x, x_430.y, x_430.z);
    } else {
      let x_433 : f32 = u_xlat46;
      x_427 = vec3<f32>(x_433, x_433, x_433);
    }
    let x_435 : vec3<f32> = x_427;
    let x_436 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_442 : vec4<f32> = u_xlat5;
  let x_445 : vec4<f32> = x_28.x_MainLightColor;
  let x_447 : vec3<f32> = (vec3<f32>(x_442.x, x_442.y, x_442.z) * vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_448 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_452 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_452;
  let x_456 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_456;
  let x_460 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_460;
  let x_462 : vec3<f32> = u_xlat6;
  let x_464 : vec4<f32> = u_xlat2;
  u_xlat46 = dot(-(x_462), vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_467 : f32 = u_xlat46;
  let x_468 : f32 = u_xlat46;
  u_xlat46 = (x_467 + x_468);
  let x_471 : vec4<f32> = u_xlat2;
  let x_473 : f32 = u_xlat46;
  let x_477 : vec3<f32> = u_xlat6;
  let x_479 : vec3<f32> = ((vec3<f32>(x_471.x, x_471.y, x_471.z) * -(vec3<f32>(x_473, x_473, x_473))) + -(x_477));
  let x_480 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_482 : vec4<f32> = u_xlat2;
  let x_484 : vec3<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_482.x, x_482.y, x_482.z), x_484);
  let x_486 : f32 = u_xlat46;
  u_xlat46 = clamp(x_486, 0.0f, 1.0f);
  let x_488 : f32 = u_xlat46;
  u_xlat46 = (-(x_488) + 1.0f);
  let x_491 : f32 = u_xlat46;
  let x_492 : f32 = u_xlat46;
  u_xlat46 = (x_491 * x_492);
  let x_494 : f32 = u_xlat46;
  let x_495 : f32 = u_xlat46;
  u_xlat46 = (x_494 * x_495);
  let x_499 : f32 = u_xlat1.x;
  u_xlat47 = ((-(x_499) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_506 : f32 = u_xlat1.x;
  let x_507 : f32 = u_xlat47;
  u_xlat1.x = (x_506 * x_507);
  let x_511 : f32 = u_xlat1.x;
  u_xlat1.x = (x_511 * 6.0f);
  let x_523 : vec4<f32> = u_xlat7;
  let x_526 : f32 = u_xlat1.x;
  let x_527 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_523.x, x_523.y, x_523.z), x_526);
  u_xlat7 = x_527;
  let x_529 : f32 = u_xlat7.w;
  u_xlat1.x = (x_529 + -1.0f);
  let x_533 : f32 = x_81.unity_SpecCube0_HDR.w;
  let x_535 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_533 * x_535) + 1.0f);
  let x_540 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_540, 0.0f);
  let x_544 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_544);
  let x_548 : f32 = u_xlat1.x;
  let x_550 : f32 = x_81.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_548 * x_550);
  let x_554 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_554);
  let x_558 : f32 = u_xlat1.x;
  let x_560 : f32 = x_81.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_558 * x_560);
  let x_563 : vec4<f32> = u_xlat7;
  let x_565 : vec3<f32> = u_xlat1;
  let x_567 : vec3<f32> = (vec3<f32>(x_563.x, x_563.y, x_563.z) * vec3<f32>(x_565.x, x_565.x, x_565.x));
  let x_568 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  let x_572 : f32 = u_xlat44;
  let x_574 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_572, x_572) * vec2<f32>(x_574, x_574)) + vec2<f32>(-1.0f, 1.0f));
  let x_580 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_580);
  let x_584 : vec4<f32> = u_xlat0;
  let x_587 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_584.x, x_584.y, x_584.z)) + vec3<f32>(x_587, x_587, x_587));
  let x_590 : f32 = u_xlat46;
  let x_592 : vec3<f32> = u_xlat22;
  let x_594 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_590, x_590, x_590) * x_592) + vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : vec3<f32> = u_xlat1;
  let x_599 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_597.x, x_597.x, x_597.x) * x_599);
  let x_601 : vec4<f32> = u_xlat7;
  let x_603 : vec3<f32> = u_xlat22;
  let x_604 : vec3<f32> = (vec3<f32>(x_601.x, x_601.y, x_601.z) * x_603);
  let x_605 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_607 : vec3<f32> = u_xlat15;
  let x_608 : vec3<f32> = u_xlat17;
  let x_610 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_607 * x_608) + vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_613 : f32 = u_xlat18;
  let x_616 : f32 = x_81.unity_LightData.z;
  u_xlat42 = (x_613 * x_616);
  let x_619 : vec4<f32> = u_xlat2;
  let x_622 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_619.x, x_619.y, x_619.z), vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : f32 = u_xlat43;
  u_xlat43 = clamp(x_625, 0.0f, 1.0f);
  let x_627 : f32 = u_xlat42;
  let x_628 : f32 = u_xlat43;
  u_xlat42 = (x_627 * x_628);
  let x_630 : f32 = u_xlat42;
  let x_632 : vec4<f32> = u_xlat5;
  let x_634 : vec3<f32> = (vec3<f32>(x_630, x_630, x_630) * vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec3<f32> = u_xlat6;
  let x_639 : vec4<f32> = x_28.x_MainLightPosition;
  let x_641 : vec3<f32> = (x_637 + vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_642 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_644 : vec4<f32> = u_xlat7;
  let x_646 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_644.x, x_644.y, x_644.z), vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : f32 = u_xlat42;
  u_xlat42 = max(x_649, 1.17549435e-38f);
  let x_652 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_652);
  let x_654 : f32 = u_xlat42;
  let x_656 : vec4<f32> = u_xlat7;
  let x_658 : vec3<f32> = (vec3<f32>(x_654, x_654, x_654) * vec3<f32>(x_656.x, x_656.y, x_656.z));
  let x_659 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat2;
  let x_663 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_661.x, x_661.y, x_661.z), vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_666 : f32 = u_xlat42;
  u_xlat42 = clamp(x_666, 0.0f, 1.0f);
  let x_669 : vec4<f32> = x_28.x_MainLightPosition;
  let x_671 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_669.x, x_669.y, x_669.z), vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : f32 = u_xlat43;
  u_xlat43 = clamp(x_674, 0.0f, 1.0f);
  let x_676 : f32 = u_xlat42;
  let x_677 : f32 = u_xlat42;
  u_xlat42 = (x_676 * x_677);
  let x_679 : f32 = u_xlat42;
  let x_681 : f32 = u_xlat8.x;
  u_xlat42 = ((x_679 * x_681) + 1.00001001358032226562f);
  let x_685 : f32 = u_xlat43;
  let x_686 : f32 = u_xlat43;
  u_xlat43 = (x_685 * x_686);
  let x_688 : f32 = u_xlat42;
  let x_689 : f32 = u_xlat42;
  u_xlat42 = (x_688 * x_689);
  let x_691 : f32 = u_xlat43;
  u_xlat43 = max(x_691, 0.10000000149011611938f);
  let x_694 : f32 = u_xlat42;
  let x_695 : f32 = u_xlat43;
  u_xlat42 = (x_694 * x_695);
  let x_698 : f32 = u_xlat3.x;
  let x_699 : f32 = u_xlat42;
  u_xlat42 = (x_698 * x_699);
  let x_702 : f32 = u_xlat4.x;
  let x_703 : f32 = u_xlat42;
  u_xlat42 = (x_702 / x_703);
  let x_705 : vec4<f32> = u_xlat0;
  let x_707 : f32 = u_xlat42;
  let x_710 : vec3<f32> = u_xlat17;
  let x_711 : vec3<f32> = ((vec3<f32>(x_705.x, x_705.y, x_705.z) * vec3<f32>(x_707, x_707, x_707)) + x_710);
  let x_712 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_715 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_717 : f32 = x_81.unity_LightData.y;
  u_xlat42 = min(x_715, x_717);
  let x_721 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_721));
  let x_724 : f32 = u_xlat32;
  let x_727 : f32 = x_256.x_AdditionalShadowFadeParams.x;
  let x_730 : f32 = x_256.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_724 * x_727) + x_730);
  let x_732 : f32 = u_xlat43;
  u_xlat43 = clamp(x_732, 0.0f, 1.0f);
  let x_736 : f32 = x_325.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_738 : f32 = x_325.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_740 : f32 = x_325.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_742 : f32 = x_325.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_743 : vec4<f32> = vec4<f32>(x_736, x_738, x_740, x_742);
  let x_749 : vec4<bool> = (vec4<f32>(x_743.x, x_743.y, x_743.z, x_743.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb18 = vec2<bool>(x_749.x, x_749.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_761 : u32 = u_xlatu_loop_1;
    let x_762 : u32 = u_xlatu42;
    if ((x_761 < x_762)) {
    } else {
      break;
    }
    let x_765 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_765 >> 2u);
    let x_769 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_769 & 3u));
    let x_773 : u32 = u_xlatu46;
    let x_776 : vec4<f32> = x_81.unity_LightIndices[bitcast<i32>(x_773)];
    let x_786 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_791 : vec4<u32> = indexable[x_786];
    u_xlat46 = dot(x_776, bitcast<vec4<f32>>(x_791));
    let x_795 : f32 = u_xlat46;
    u_xlati46 = i32(x_795);
    let x_798 : vec3<f32> = vs_TEXCOORD7;
    let x_809 : i32 = u_xlati46;
    let x_811 : vec4<f32> = x_808.x_AdditionalLightsPosition[x_809];
    let x_814 : i32 = u_xlati46;
    let x_816 : vec4<f32> = x_808.x_AdditionalLightsPosition[x_814];
    u_xlat9 = ((-(x_798) * vec3<f32>(x_811.w, x_811.w, x_811.w)) + vec3<f32>(x_816.x, x_816.y, x_816.z));
    let x_819 : vec3<f32> = u_xlat9;
    let x_820 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_819, x_820);
    let x_822 : f32 = u_xlat47;
    u_xlat47 = max(x_822, 0.00006103515625f);
    let x_826 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_826);
    let x_829 : f32 = u_xlat48;
    let x_831 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_829, x_829, x_829) * x_831);
    let x_834 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_834);
    let x_836 : f32 = u_xlat47;
    let x_837 : i32 = u_xlati46;
    let x_839 : f32 = x_808.x_AdditionalLightsAttenuation[x_837].x;
    u_xlat47 = (x_836 * x_839);
    let x_841 : f32 = u_xlat47;
    let x_843 : f32 = u_xlat47;
    u_xlat47 = ((-(x_841) * x_843) + 1.0f);
    let x_846 : f32 = u_xlat47;
    u_xlat47 = max(x_846, 0.0f);
    let x_848 : f32 = u_xlat47;
    let x_849 : f32 = u_xlat47;
    u_xlat47 = (x_848 * x_849);
    let x_851 : f32 = u_xlat47;
    let x_852 : f32 = u_xlat49;
    u_xlat47 = (x_851 * x_852);
    let x_854 : i32 = u_xlati46;
    let x_856 : vec4<f32> = x_808.x_AdditionalLightsSpotDir[x_854];
    let x_858 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_856.x, x_856.y, x_856.z), x_858);
    let x_860 : f32 = u_xlat49;
    let x_861 : i32 = u_xlati46;
    let x_863 : f32 = x_808.x_AdditionalLightsAttenuation[x_861].z;
    let x_865 : i32 = u_xlati46;
    let x_867 : f32 = x_808.x_AdditionalLightsAttenuation[x_865].w;
    u_xlat49 = ((x_860 * x_863) + x_867);
    let x_869 : f32 = u_xlat49;
    u_xlat49 = clamp(x_869, 0.0f, 1.0f);
    let x_871 : f32 = u_xlat49;
    let x_872 : f32 = u_xlat49;
    u_xlat49 = (x_871 * x_872);
    let x_874 : f32 = u_xlat47;
    let x_875 : f32 = u_xlat49;
    u_xlat47 = (x_874 * x_875);
    let x_879 : i32 = u_xlati46;
    let x_881 : f32 = x_256.x_AdditionalShadowParams[x_879].w;
    u_xlati49 = i32(x_881);
    let x_884 : i32 = u_xlati49;
    u_xlatb51 = (x_884 >= 0i);
    let x_886 : bool = u_xlatb51;
    if (x_886) {
      let x_890 : i32 = u_xlati46;
      let x_892 : f32 = x_256.x_AdditionalShadowParams[x_890].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_892, x_892, x_892, x_892))));
      let x_896 : bool = u_xlatb51;
      if (x_896) {
        let x_901 : vec3<f32> = u_xlat10;
        let x_904 : vec3<f32> = u_xlat10;
        let x_907 : vec4<bool> = (abs(vec4<f32>(x_901.z, x_901.z, x_901.y, x_901.z)) >= abs(vec4<f32>(x_904.x, x_904.y, x_904.x, x_904.x)));
        let x_909 : vec3<bool> = vec3<bool>(x_907.x, x_907.y, x_907.z);
        let x_910 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_909.x, x_909.y, x_909.z, x_910.w);
        let x_913 : bool = u_xlatb11.y;
        let x_915 : bool = u_xlatb11.x;
        u_xlatb51 = (x_913 & x_915);
        let x_917 : vec3<f32> = u_xlat10;
        let x_920 : vec4<bool> = (-(vec4<f32>(x_917.z, x_917.y, x_917.z, x_917.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_921 : vec3<bool> = vec3<bool>(x_920.x, x_920.y, x_920.w);
        let x_922 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_921.x, x_921.y, x_922.z, x_921.z);
        let x_926 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_926);
        let x_931 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_931);
        let x_937 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_937);
        let x_940 : bool = u_xlatb11.z;
        if (x_940) {
          let x_945 : f32 = u_xlat11.y;
          x_941 = x_945;
        } else {
          let x_947 : f32 = u_xlat52;
          x_941 = x_947;
        }
        let x_948 : f32 = x_941;
        u_xlat52 = x_948;
        let x_950 : bool = u_xlatb51;
        if (x_950) {
          let x_955 : f32 = u_xlat11.x;
          x_951 = x_955;
        } else {
          let x_957 : f32 = u_xlat52;
          x_951 = x_957;
        }
        let x_958 : f32 = x_951;
        u_xlat51 = x_958;
        let x_959 : i32 = u_xlati46;
        let x_961 : f32 = x_256.x_AdditionalShadowParams[x_959].w;
        u_xlat52 = trunc(x_961);
        let x_963 : f32 = u_xlat51;
        let x_964 : f32 = u_xlat52;
        u_xlat51 = (x_963 + x_964);
        let x_966 : f32 = u_xlat51;
        u_xlati49 = i32(x_966);
      }
      let x_968 : i32 = u_xlati49;
      u_xlati49 = (x_968 << bitcast<u32>(2i));
      let x_970 : vec3<f32> = vs_TEXCOORD7;
      let x_973 : i32 = u_xlati49;
      let x_976 : i32 = u_xlati49;
      let x_980 : vec4<f32> = x_256.x_AdditionalLightsWorldToShadow[((x_973 + 1i) / 4i)][((x_976 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_970.y, x_970.y, x_970.y, x_970.y) * x_980);
      let x_982 : i32 = u_xlati49;
      let x_984 : i32 = u_xlati49;
      let x_987 : vec4<f32> = x_256.x_AdditionalLightsWorldToShadow[(x_982 / 4i)][(x_984 % 4i)];
      let x_988 : vec3<f32> = vs_TEXCOORD7;
      let x_991 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_987 * vec4<f32>(x_988.x, x_988.x, x_988.x, x_988.x)) + x_991);
      let x_993 : i32 = u_xlati49;
      let x_996 : i32 = u_xlati49;
      let x_1000 : vec4<f32> = x_256.x_AdditionalLightsWorldToShadow[((x_993 + 2i) / 4i)][((x_996 + 2i) % 4i)];
      let x_1001 : vec3<f32> = vs_TEXCOORD7;
      let x_1004 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1000 * vec4<f32>(x_1001.z, x_1001.z, x_1001.z, x_1001.z)) + x_1004);
      let x_1006 : vec4<f32> = u_xlat11;
      let x_1007 : i32 = u_xlati49;
      let x_1010 : i32 = u_xlati49;
      let x_1014 : vec4<f32> = x_256.x_AdditionalLightsWorldToShadow[((x_1007 + 3i) / 4i)][((x_1010 + 3i) % 4i)];
      u_xlat11 = (x_1006 + x_1014);
      let x_1016 : vec4<f32> = u_xlat11;
      let x_1018 : vec4<f32> = u_xlat11;
      let x_1020 : vec3<f32> = (vec3<f32>(x_1016.x, x_1016.y, x_1016.z) / vec3<f32>(x_1018.w, x_1018.w, x_1018.w));
      let x_1021 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
      let x_1024 : vec4<f32> = u_xlat11;
      let x_1025 : vec2<f32> = vec2<f32>(x_1024.x, x_1024.y);
      let x_1027 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1025.x, x_1025.y, x_1027);
      let x_1035 : vec3<f32> = txVec1;
      let x_1037 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1035.xy, x_1035.z);
      u_xlat49 = x_1037;
      let x_1038 : i32 = u_xlati46;
      let x_1040 : f32 = x_256.x_AdditionalShadowParams[x_1038].x;
      u_xlat51 = (1.0f + -(x_1040));
      let x_1043 : f32 = u_xlat49;
      let x_1044 : i32 = u_xlati46;
      let x_1046 : f32 = x_256.x_AdditionalShadowParams[x_1044].x;
      let x_1048 : f32 = u_xlat51;
      u_xlat49 = ((x_1043 * x_1046) + x_1048);
      let x_1051 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1051);
      let x_1055 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1055 >= 1.0f);
      let x_1057 : bool = u_xlatb51;
      let x_1058 : bool = u_xlatb52;
      u_xlatb51 = (x_1057 | x_1058);
      let x_1060 : bool = u_xlatb51;
      let x_1061 : f32 = u_xlat49;
      u_xlat49 = select(x_1061, 1.0f, x_1060);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1064 : f32 = u_xlat49;
    u_xlat51 = (-(x_1064) + 1.0f);
    let x_1067 : f32 = u_xlat43;
    let x_1068 : f32 = u_xlat51;
    let x_1070 : f32 = u_xlat49;
    u_xlat49 = ((x_1067 * x_1068) + x_1070);
    let x_1073 : i32 = u_xlati46;
    u_xlati51 = (1i << bitcast<u32>((x_1073 & 31i)));
    let x_1077 : i32 = u_xlati51;
    let x_1080 : f32 = x_325.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1077) & bitcast<u32>(x_1080)));
    let x_1084 : i32 = u_xlati51;
    if ((x_1084 != 0i)) {
      let x_1088 : i32 = u_xlati46;
      let x_1090 : f32 = x_325.x_AdditionalLightsLightTypes[x_1088].el;
      u_xlati51 = i32(x_1090);
      let x_1093 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1093 != 0i));
      let x_1097 : i32 = u_xlati46;
      u_xlati11 = (x_1097 << bitcast<u32>(2i));
      let x_1099 : i32 = u_xlati52;
      if ((x_1099 != 0i)) {
        let x_1104 : vec3<f32> = vs_TEXCOORD7;
        let x_1106 : i32 = u_xlati11;
        let x_1109 : i32 = u_xlati11;
        let x_1113 : vec4<f32> = x_325.x_AdditionalLightsWorldToLights[((x_1106 + 1i) / 4i)][((x_1109 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1104.y, x_1104.y, x_1104.y) * vec3<f32>(x_1113.x, x_1113.y, x_1113.w));
        let x_1116 : i32 = u_xlati11;
        let x_1118 : i32 = u_xlati11;
        let x_1121 : vec4<f32> = x_325.x_AdditionalLightsWorldToLights[(x_1116 / 4i)][(x_1118 % 4i)];
        let x_1123 : vec3<f32> = vs_TEXCOORD7;
        let x_1126 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1121.x, x_1121.y, x_1121.w) * vec3<f32>(x_1123.x, x_1123.x, x_1123.x)) + x_1126);
        let x_1128 : i32 = u_xlati11;
        let x_1131 : i32 = u_xlati11;
        let x_1135 : vec4<f32> = x_325.x_AdditionalLightsWorldToLights[((x_1128 + 2i) / 4i)][((x_1131 + 2i) % 4i)];
        let x_1137 : vec3<f32> = vs_TEXCOORD7;
        let x_1140 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1135.x, x_1135.y, x_1135.w) * vec3<f32>(x_1137.z, x_1137.z, x_1137.z)) + x_1140);
        let x_1142 : vec3<f32> = u_xlat25;
        let x_1143 : i32 = u_xlati11;
        let x_1146 : i32 = u_xlati11;
        let x_1150 : vec4<f32> = x_325.x_AdditionalLightsWorldToLights[((x_1143 + 3i) / 4i)][((x_1146 + 3i) % 4i)];
        u_xlat25 = (x_1142 + vec3<f32>(x_1150.x, x_1150.y, x_1150.w));
        let x_1153 : vec3<f32> = u_xlat25;
        let x_1155 : vec3<f32> = u_xlat25;
        let x_1157 : vec2<f32> = (vec2<f32>(x_1153.x, x_1153.y) / vec2<f32>(x_1155.z, x_1155.z));
        let x_1158 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1157.x, x_1157.y, x_1158.z);
        let x_1160 : vec3<f32> = u_xlat25;
        let x_1163 : vec2<f32> = ((vec2<f32>(x_1160.x, x_1160.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1164 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1163.x, x_1163.y, x_1164.z);
        let x_1166 : vec3<f32> = u_xlat25;
        let x_1170 : vec2<f32> = clamp(vec2<f32>(x_1166.x, x_1166.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1171 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1170.x, x_1170.y, x_1171.z);
        let x_1173 : i32 = u_xlati46;
        let x_1175 : vec4<f32> = x_325.x_AdditionalLightsCookieAtlasUVRects[x_1173];
        let x_1177 : vec3<f32> = u_xlat25;
        let x_1180 : i32 = u_xlati46;
        let x_1182 : vec4<f32> = x_325.x_AdditionalLightsCookieAtlasUVRects[x_1180];
        let x_1184 : vec2<f32> = ((vec2<f32>(x_1175.x, x_1175.y) * vec2<f32>(x_1177.x, x_1177.y)) + vec2<f32>(x_1182.z, x_1182.w));
        let x_1185 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1184.x, x_1184.y, x_1185.z);
      } else {
        let x_1188 : i32 = u_xlati51;
        u_xlatb51 = (x_1188 == 1i);
        let x_1190 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1190);
        let x_1192 : i32 = u_xlati51;
        if ((x_1192 != 0i)) {
          let x_1197 : vec3<f32> = vs_TEXCOORD7;
          let x_1199 : i32 = u_xlati11;
          let x_1202 : i32 = u_xlati11;
          let x_1206 : vec4<f32> = x_325.x_AdditionalLightsWorldToLights[((x_1199 + 1i) / 4i)][((x_1202 + 1i) % 4i)];
          let x_1208 : vec2<f32> = (vec2<f32>(x_1197.y, x_1197.y) * vec2<f32>(x_1206.x, x_1206.y));
          let x_1209 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
          let x_1211 : i32 = u_xlati11;
          let x_1213 : i32 = u_xlati11;
          let x_1216 : vec4<f32> = x_325.x_AdditionalLightsWorldToLights[(x_1211 / 4i)][(x_1213 % 4i)];
          let x_1218 : vec3<f32> = vs_TEXCOORD7;
          let x_1221 : vec4<f32> = u_xlat12;
          let x_1223 : vec2<f32> = ((vec2<f32>(x_1216.x, x_1216.y) * vec2<f32>(x_1218.x, x_1218.x)) + vec2<f32>(x_1221.x, x_1221.y));
          let x_1224 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1223.x, x_1223.y, x_1224.z, x_1224.w);
          let x_1226 : i32 = u_xlati11;
          let x_1229 : i32 = u_xlati11;
          let x_1233 : vec4<f32> = x_325.x_AdditionalLightsWorldToLights[((x_1226 + 2i) / 4i)][((x_1229 + 2i) % 4i)];
          let x_1235 : vec3<f32> = vs_TEXCOORD7;
          let x_1238 : vec4<f32> = u_xlat12;
          let x_1240 : vec2<f32> = ((vec2<f32>(x_1233.x, x_1233.y) * vec2<f32>(x_1235.z, x_1235.z)) + vec2<f32>(x_1238.x, x_1238.y));
          let x_1241 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1240.x, x_1240.y, x_1241.z, x_1241.w);
          let x_1243 : vec4<f32> = u_xlat12;
          let x_1245 : i32 = u_xlati11;
          let x_1248 : i32 = u_xlati11;
          let x_1252 : vec4<f32> = x_325.x_AdditionalLightsWorldToLights[((x_1245 + 3i) / 4i)][((x_1248 + 3i) % 4i)];
          let x_1254 : vec2<f32> = (vec2<f32>(x_1243.x, x_1243.y) + vec2<f32>(x_1252.x, x_1252.y));
          let x_1255 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1254.x, x_1254.y, x_1255.z, x_1255.w);
          let x_1257 : vec4<f32> = u_xlat12;
          let x_1260 : vec2<f32> = ((vec2<f32>(x_1257.x, x_1257.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1261 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1260.x, x_1260.y, x_1261.z, x_1261.w);
          let x_1263 : vec4<f32> = u_xlat12;
          let x_1265 : vec2<f32> = fract(vec2<f32>(x_1263.x, x_1263.y));
          let x_1266 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1265.x, x_1265.y, x_1266.z, x_1266.w);
          let x_1268 : i32 = u_xlati46;
          let x_1270 : vec4<f32> = x_325.x_AdditionalLightsCookieAtlasUVRects[x_1268];
          let x_1272 : vec4<f32> = u_xlat12;
          let x_1275 : i32 = u_xlati46;
          let x_1277 : vec4<f32> = x_325.x_AdditionalLightsCookieAtlasUVRects[x_1275];
          let x_1279 : vec2<f32> = ((vec2<f32>(x_1270.x, x_1270.y) * vec2<f32>(x_1272.x, x_1272.y)) + vec2<f32>(x_1277.z, x_1277.w));
          let x_1280 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1279.x, x_1279.y, x_1280.z);
        } else {
          let x_1283 : vec3<f32> = vs_TEXCOORD7;
          let x_1285 : i32 = u_xlati11;
          let x_1288 : i32 = u_xlati11;
          let x_1292 : vec4<f32> = x_325.x_AdditionalLightsWorldToLights[((x_1285 + 1i) / 4i)][((x_1288 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1283.y, x_1283.y, x_1283.y, x_1283.y) * x_1292);
          let x_1294 : i32 = u_xlati11;
          let x_1296 : i32 = u_xlati11;
          let x_1299 : vec4<f32> = x_325.x_AdditionalLightsWorldToLights[(x_1294 / 4i)][(x_1296 % 4i)];
          let x_1300 : vec3<f32> = vs_TEXCOORD7;
          let x_1303 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1299 * vec4<f32>(x_1300.x, x_1300.x, x_1300.x, x_1300.x)) + x_1303);
          let x_1305 : i32 = u_xlati11;
          let x_1308 : i32 = u_xlati11;
          let x_1312 : vec4<f32> = x_325.x_AdditionalLightsWorldToLights[((x_1305 + 2i) / 4i)][((x_1308 + 2i) % 4i)];
          let x_1313 : vec3<f32> = vs_TEXCOORD7;
          let x_1316 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1312 * vec4<f32>(x_1313.z, x_1313.z, x_1313.z, x_1313.z)) + x_1316);
          let x_1318 : vec4<f32> = u_xlat12;
          let x_1319 : i32 = u_xlati11;
          let x_1322 : i32 = u_xlati11;
          let x_1326 : vec4<f32> = x_325.x_AdditionalLightsWorldToLights[((x_1319 + 3i) / 4i)][((x_1322 + 3i) % 4i)];
          u_xlat12 = (x_1318 + x_1326);
          let x_1328 : vec4<f32> = u_xlat12;
          let x_1330 : vec4<f32> = u_xlat12;
          let x_1332 : vec3<f32> = (vec3<f32>(x_1328.x, x_1328.y, x_1328.z) / vec3<f32>(x_1330.w, x_1330.w, x_1330.w));
          let x_1333 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
          let x_1335 : vec4<f32> = u_xlat12;
          let x_1337 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1335.x, x_1335.y, x_1335.z), vec3<f32>(x_1337.x, x_1337.y, x_1337.z));
          let x_1340 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1340);
          let x_1342 : f32 = u_xlat51;
          let x_1344 : vec4<f32> = u_xlat12;
          let x_1346 : vec3<f32> = (vec3<f32>(x_1342, x_1342, x_1342) * vec3<f32>(x_1344.x, x_1344.y, x_1344.z));
          let x_1347 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1346.x, x_1346.y, x_1346.z, x_1347.w);
          let x_1349 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1349.x, x_1349.y, x_1349.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1354 : f32 = u_xlat51;
          u_xlat51 = max(x_1354, 0.00000099999999747524f);
          let x_1357 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1357);
          let x_1360 : f32 = u_xlat51;
          let x_1362 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1360, x_1360, x_1360) * vec3<f32>(x_1362.z, x_1362.x, x_1362.y));
          let x_1366 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1366);
          let x_1370 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1370, 0.0f, 1.0f);
          let x_1373 : vec3<f32> = u_xlat13;
          let x_1375 : vec4<bool> = (vec4<f32>(x_1373.y, x_1373.y, x_1373.y, x_1373.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1376 : vec2<bool> = vec2<bool>(x_1375.x, x_1375.w);
          let x_1377 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1376.x, x_1377.y, x_1377.z, x_1376.y);
          let x_1380 : bool = u_xlatb11.x;
          if (x_1380) {
            let x_1385 : f32 = u_xlat13.x;
            x_1381 = x_1385;
          } else {
            let x_1388 : f32 = u_xlat13.x;
            x_1381 = -(x_1388);
          }
          let x_1390 : f32 = x_1381;
          u_xlat11.x = x_1390;
          let x_1393 : bool = u_xlatb11.w;
          if (x_1393) {
            let x_1398 : f32 = u_xlat13.x;
            x_1394 = x_1398;
          } else {
            let x_1401 : f32 = u_xlat13.x;
            x_1394 = -(x_1401);
          }
          let x_1403 : f32 = x_1394;
          u_xlat11.w = x_1403;
          let x_1405 : vec4<f32> = u_xlat12;
          let x_1407 : f32 = u_xlat51;
          let x_1410 : vec4<f32> = u_xlat11;
          let x_1412 : vec2<f32> = ((vec2<f32>(x_1405.x, x_1405.y) * vec2<f32>(x_1407, x_1407)) + vec2<f32>(x_1410.x, x_1410.w));
          let x_1413 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1412.x, x_1413.y, x_1413.z, x_1412.y);
          let x_1415 : vec4<f32> = u_xlat11;
          let x_1418 : vec2<f32> = ((vec2<f32>(x_1415.x, x_1415.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1419 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1418.x, x_1419.y, x_1419.z, x_1418.y);
          let x_1421 : vec4<f32> = u_xlat11;
          let x_1425 : vec2<f32> = clamp(vec2<f32>(x_1421.x, x_1421.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1426 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1425.x, x_1426.y, x_1426.z, x_1425.y);
          let x_1428 : i32 = u_xlati46;
          let x_1430 : vec4<f32> = x_325.x_AdditionalLightsCookieAtlasUVRects[x_1428];
          let x_1432 : vec4<f32> = u_xlat11;
          let x_1435 : i32 = u_xlati46;
          let x_1437 : vec4<f32> = x_325.x_AdditionalLightsCookieAtlasUVRects[x_1435];
          let x_1439 : vec2<f32> = ((vec2<f32>(x_1430.x, x_1430.y) * vec2<f32>(x_1432.x, x_1432.w)) + vec2<f32>(x_1437.z, x_1437.w));
          let x_1440 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1439.x, x_1439.y, x_1440.z);
        }
      }
      let x_1447 : vec3<f32> = u_xlat25;
      let x_1449 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1447.x, x_1447.y), 0.0f);
      u_xlat11 = x_1449;
      let x_1451 : bool = u_xlatb18.y;
      if (x_1451) {
        let x_1456 : f32 = u_xlat11.w;
        x_1452 = x_1456;
      } else {
        let x_1459 : f32 = u_xlat11.x;
        x_1452 = x_1459;
      }
      let x_1460 : f32 = x_1452;
      u_xlat51 = x_1460;
      let x_1462 : bool = u_xlatb18.x;
      if (x_1462) {
        let x_1466 : vec4<f32> = u_xlat11;
        x_1463 = vec3<f32>(x_1466.x, x_1466.y, x_1466.z);
      } else {
        let x_1469 : f32 = u_xlat51;
        x_1463 = vec3<f32>(x_1469, x_1469, x_1469);
      }
      let x_1471 : vec3<f32> = x_1463;
      let x_1472 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1471.x, x_1471.y, x_1471.z, x_1472.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1478 : vec4<f32> = u_xlat11;
    let x_1480 : i32 = u_xlati46;
    let x_1482 : vec4<f32> = x_808.x_AdditionalLightsColor[x_1480];
    let x_1484 : vec3<f32> = (vec3<f32>(x_1478.x, x_1478.y, x_1478.z) * vec3<f32>(x_1482.x, x_1482.y, x_1482.z));
    let x_1485 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1484.x, x_1484.y, x_1484.z, x_1485.w);
    let x_1487 : f32 = u_xlat47;
    let x_1488 : f32 = u_xlat49;
    u_xlat46 = (x_1487 * x_1488);
    let x_1490 : vec4<f32> = u_xlat2;
    let x_1492 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_1490.x, x_1490.y, x_1490.z), x_1492);
    let x_1494 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1494, 0.0f, 1.0f);
    let x_1496 : f32 = u_xlat46;
    let x_1497 : f32 = u_xlat47;
    u_xlat46 = (x_1496 * x_1497);
    let x_1499 : f32 = u_xlat46;
    let x_1501 : vec4<f32> = u_xlat11;
    let x_1503 : vec3<f32> = (vec3<f32>(x_1499, x_1499, x_1499) * vec3<f32>(x_1501.x, x_1501.y, x_1501.z));
    let x_1504 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1503.x, x_1503.y, x_1503.z, x_1504.w);
    let x_1506 : vec3<f32> = u_xlat9;
    let x_1507 : f32 = u_xlat48;
    let x_1510 : vec3<f32> = u_xlat6;
    u_xlat9 = ((x_1506 * vec3<f32>(x_1507, x_1507, x_1507)) + x_1510);
    let x_1512 : vec3<f32> = u_xlat9;
    let x_1513 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1512, x_1513);
    let x_1515 : f32 = u_xlat46;
    u_xlat46 = max(x_1515, 1.17549435e-38f);
    let x_1517 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1517);
    let x_1519 : f32 = u_xlat46;
    let x_1521 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1519, x_1519, x_1519) * x_1521);
    let x_1523 : vec4<f32> = u_xlat2;
    let x_1525 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1523.x, x_1523.y, x_1523.z), x_1525);
    let x_1527 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1527, 0.0f, 1.0f);
    let x_1529 : vec3<f32> = u_xlat10;
    let x_1530 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1529, x_1530);
    let x_1532 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1532, 0.0f, 1.0f);
    let x_1534 : f32 = u_xlat46;
    let x_1535 : f32 = u_xlat46;
    u_xlat46 = (x_1534 * x_1535);
    let x_1537 : f32 = u_xlat46;
    let x_1539 : f32 = u_xlat8.x;
    u_xlat46 = ((x_1537 * x_1539) + 1.00001001358032226562f);
    let x_1542 : f32 = u_xlat47;
    let x_1543 : f32 = u_xlat47;
    u_xlat47 = (x_1542 * x_1543);
    let x_1545 : f32 = u_xlat46;
    let x_1546 : f32 = u_xlat46;
    u_xlat46 = (x_1545 * x_1546);
    let x_1548 : f32 = u_xlat47;
    u_xlat47 = max(x_1548, 0.10000000149011611938f);
    let x_1550 : f32 = u_xlat46;
    let x_1551 : f32 = u_xlat47;
    u_xlat46 = (x_1550 * x_1551);
    let x_1554 : f32 = u_xlat3.x;
    let x_1555 : f32 = u_xlat46;
    u_xlat46 = (x_1554 * x_1555);
    let x_1558 : f32 = u_xlat4.x;
    let x_1559 : f32 = u_xlat46;
    u_xlat46 = (x_1558 / x_1559);
    let x_1561 : vec4<f32> = u_xlat0;
    let x_1563 : f32 = u_xlat46;
    let x_1566 : vec3<f32> = u_xlat17;
    u_xlat9 = ((vec3<f32>(x_1561.x, x_1561.y, x_1561.z) * vec3<f32>(x_1563, x_1563, x_1563)) + x_1566);
    let x_1568 : vec3<f32> = u_xlat9;
    let x_1569 : vec4<f32> = u_xlat11;
    let x_1572 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1568 * vec3<f32>(x_1569.x, x_1569.y, x_1569.z)) + x_1572);

    continuing {
      let x_1574 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1574 + bitcast<u32>(1i));
    }
  }
  let x_1576 : vec4<f32> = u_xlat7;
  let x_1578 : vec4<f32> = u_xlat5;
  let x_1581 : vec3<f32> = u_xlat1;
  let x_1582 : vec3<f32> = ((vec3<f32>(x_1576.x, x_1576.y, x_1576.z) * vec3<f32>(x_1578.x, x_1578.y, x_1578.z)) + x_1581);
  let x_1583 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1582.x, x_1582.y, x_1582.z, x_1583.w);
  let x_1587 : vec3<f32> = u_xlat22;
  let x_1588 : vec4<f32> = u_xlat0;
  let x_1590 : vec3<f32> = (x_1587 + vec3<f32>(x_1588.x, x_1588.y, x_1588.z));
  let x_1591 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1590.x, x_1590.y, x_1590.z, x_1591.w);
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


