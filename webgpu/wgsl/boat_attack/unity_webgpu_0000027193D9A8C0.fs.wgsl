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

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_80 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

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

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat41 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_541 : UnityPerDraw;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu41 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlati41 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_786 : AdditionalLights;

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
  var txVec0 : vec3<f32>;
  var x_424 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_921 : f32;
  var x_932 : f32;
  var txVec1 : vec3<f32>;
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
  u_xlat13.x = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_60 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_60);
  let x_63 : vec3<f32> = u_xlat13;
  let x_65 : vec4<f32> = vs_TEXCOORD3;
  u_xlat13 = (vec3<f32>(x_63.x, x_63.x, x_63.x) * vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_71 : vec3<f32> = vs_TEXCOORD7;
  let x_84 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres0;
  let x_87 : vec3<f32> = (x_71 + -(vec3<f32>(x_84.x, x_84.y, x_84.z)));
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_87.x, x_87.y, x_87.z, x_88.w);
  let x_91 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres1;
  let x_97 : vec3<f32> = (x_91 + -(vec3<f32>(x_94.x, x_94.y, x_94.z)));
  let x_98 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_101 : vec3<f32> = vs_TEXCOORD7;
  let x_104 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres2;
  u_xlat4 = (x_101 + -(vec3<f32>(x_104.x, x_104.y, x_104.z)));
  let x_109 : vec3<f32> = vs_TEXCOORD7;
  let x_112 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_109 + -(vec3<f32>(x_112.x, x_112.y, x_112.z)));
  let x_116 : vec4<f32> = u_xlat2;
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_116.x, x_116.y, x_116.z), vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_122 : vec4<f32> = u_xlat3;
  let x_124 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_122.x, x_122.y, x_122.z), vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_129 : vec3<f32> = u_xlat4;
  let x_130 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_129, x_130);
  let x_134 : vec3<f32> = u_xlat5;
  let x_135 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_134, x_135);
  let x_143 : vec4<f32> = u_xlat2;
  let x_146 : vec4<f32> = x_80.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_143 < x_146);
  let x_150 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_150);
  let x_156 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_156);
  let x_160 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_160);
  let x_164 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_168);
  let x_174 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_174);
  let x_178 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_178);
  let x_181 : vec4<f32> = u_xlat2;
  let x_183 : vec4<f32> = u_xlat3;
  let x_185 : vec3<f32> = (vec3<f32>(x_181.x, x_181.y, x_181.z) + vec3<f32>(x_183.y, x_183.z, x_183.w));
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : vec4<f32> = u_xlat2;
  let x_191 : vec3<f32> = max(vec3<f32>(x_188.x, x_188.y, x_188.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_192.x, x_191.x, x_191.y, x_191.z);
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_194, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_202 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_202) + 4.0f);
  let x_209 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_209);
  let x_213 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_213) << bitcast<u32>(2i));
  let x_217 : vec3<f32> = vs_TEXCOORD7;
  let x_219 : i32 = u_xlati2;
  let x_222 : i32 = u_xlati2;
  let x_226 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_219 + 1i) / 4i)][((x_222 + 1i) % 4i)];
  u_xlat14 = (vec3<f32>(x_217.y, x_217.y, x_217.y) * vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : i32 = u_xlati2;
  let x_231 : i32 = u_xlati2;
  let x_234 : vec4<f32> = x_80.x_MainLightWorldToShadow[(x_229 / 4i)][(x_231 % 4i)];
  let x_236 : vec3<f32> = vs_TEXCOORD7;
  let x_239 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236.x, x_236.x, x_236.x)) + x_239);
  let x_241 : i32 = u_xlati2;
  let x_244 : i32 = u_xlati2;
  let x_248 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_241 + 2i) / 4i)][((x_244 + 2i) % 4i)];
  let x_250 : vec3<f32> = vs_TEXCOORD7;
  let x_253 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_248.x, x_248.y, x_248.z) * vec3<f32>(x_250.z, x_250.z, x_250.z)) + x_253);
  let x_255 : vec3<f32> = u_xlat14;
  let x_256 : i32 = u_xlati2;
  let x_259 : i32 = u_xlati2;
  let x_263 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_256 + 3i) / 4i)][((x_259 + 3i) % 4i)];
  let x_265 : vec3<f32> = (x_255 + vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_266 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_273 : vec4<f32> = vs_TEXCOORD0;
  let x_276 : f32 = x_28.x_GlobalMipBias.x;
  let x_277 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_273.z, x_273.w), x_276);
  u_xlat3 = x_277;
  let x_282 : vec4<f32> = vs_TEXCOORD0;
  let x_285 : f32 = x_28.x_GlobalMipBias.x;
  let x_286 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_282.z, x_282.w), x_285);
  u_xlat4 = vec3<f32>(x_286.x, x_286.y, x_286.z);
  let x_288 : vec4<f32> = u_xlat3;
  let x_292 : vec3<f32> = (vec3<f32>(x_288.x, x_288.y, x_288.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_293 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_296 : vec3<f32> = u_xlat13;
  let x_297 : vec4<f32> = u_xlat3;
  u_xlat38 = dot(x_296, vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : f32 = u_xlat38;
  u_xlat38 = (x_300 + 0.5f);
  let x_303 : f32 = u_xlat38;
  let x_305 : vec3<f32> = u_xlat4;
  let x_306 : vec3<f32> = (vec3<f32>(x_303, x_303, x_303) * x_305);
  let x_307 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_310 : f32 = u_xlat3.w;
  u_xlat38 = max(x_310, 0.00009999999747378752f);
  let x_313 : vec4<f32> = u_xlat3;
  let x_315 : f32 = u_xlat38;
  let x_317 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) / vec3<f32>(x_315, x_315, x_315));
  let x_318 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : f32 = u_xlat1;
  u_xlat38 = ((-(x_320) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_326 : f32 = u_xlat38;
  u_xlat39 = (-(x_326) + 1.0f);
  let x_329 : vec4<f32> = u_xlat0;
  let x_331 : f32 = u_xlat38;
  u_xlat4 = (vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_331, x_331, x_331));
  let x_334 : vec4<f32> = u_xlat0;
  let x_338 : vec3<f32> = (vec3<f32>(x_334.x, x_334.y, x_334.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_339 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : f32 = u_xlat1;
  let x_343 : vec4<f32> = u_xlat0;
  let x_348 : vec3<f32> = ((vec3<f32>(x_341, x_341, x_341) * vec3<f32>(x_343.x, x_343.y, x_343.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_349 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_352 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_352) + 1.0f);
  let x_355 : f32 = u_xlat1;
  let x_356 : f32 = u_xlat1;
  u_xlat38 = (x_355 * x_356);
  let x_358 : f32 = u_xlat38;
  u_xlat38 = max(x_358, 0.0078125f);
  let x_362 : f32 = u_xlat38;
  let x_363 : f32 = u_xlat38;
  u_xlat40 = (x_362 * x_363);
  let x_367 : f32 = u_xlat0.w;
  let x_368 : f32 = u_xlat39;
  u_xlat36 = (x_367 + x_368);
  let x_370 : f32 = u_xlat36;
  u_xlat36 = clamp(x_370, 0.0f, 1.0f);
  let x_372 : f32 = u_xlat38;
  u_xlat39 = ((x_372 * 4.0f) + 2.0f);
  let x_377 : vec4<f32> = u_xlat2;
  let x_378 : vec2<f32> = vec2<f32>(x_377.x, x_377.y);
  let x_380 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_378.x, x_378.y, x_380);
  let x_392 : vec3<f32> = txVec0;
  let x_394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_392.xy, x_392.z);
  u_xlat2.x = x_394;
  let x_398 : f32 = x_80.x_MainLightShadowParams.x;
  u_xlat14.x = (-(x_398) + 1.0f);
  let x_403 : f32 = u_xlat2.x;
  let x_405 : f32 = x_80.x_MainLightShadowParams.x;
  let x_408 : f32 = u_xlat14.x;
  u_xlat2.x = ((x_403 * x_405) + x_408);
  let x_413 : f32 = u_xlat2.z;
  u_xlatb14 = (0.0f >= x_413);
  let x_417 : f32 = u_xlat2.z;
  u_xlatb26 = (x_417 >= 1.0f);
  let x_419 : bool = u_xlatb26;
  let x_420 : bool = u_xlatb14;
  u_xlatb14 = (x_419 | x_420);
  let x_422 : bool = u_xlatb14;
  if (x_422) {
    x_424 = 1.0f;
  } else {
    let x_429 : f32 = u_xlat2.x;
    x_424 = x_429;
  }
  let x_430 : f32 = x_424;
  u_xlat2.x = x_430;
  let x_432 : vec3<f32> = vs_TEXCOORD7;
  let x_435 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat5 = (x_432 + -(x_435));
  let x_438 : vec3<f32> = u_xlat5;
  let x_439 : vec3<f32> = u_xlat5;
  u_xlat14.x = dot(x_438, x_439);
  let x_444 : f32 = u_xlat14.x;
  let x_446 : f32 = x_80.x_MainLightShadowParams.z;
  let x_449 : f32 = x_80.x_MainLightShadowParams.w;
  u_xlat26 = ((x_444 * x_446) + x_449);
  let x_451 : f32 = u_xlat26;
  u_xlat26 = clamp(x_451, 0.0f, 1.0f);
  let x_454 : f32 = u_xlat2.x;
  u_xlat5.x = (-(x_454) + 1.0f);
  let x_458 : f32 = u_xlat26;
  let x_460 : f32 = u_xlat5.x;
  let x_463 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_458 * x_460) + x_463);
  let x_468 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_468;
  let x_472 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_472;
  let x_476 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_476;
  let x_478 : vec3<f32> = u_xlat5;
  let x_480 : vec3<f32> = u_xlat13;
  u_xlat26 = dot(-(x_478), x_480);
  let x_482 : f32 = u_xlat26;
  let x_483 : f32 = u_xlat26;
  u_xlat26 = (x_482 + x_483);
  let x_486 : vec3<f32> = u_xlat13;
  let x_487 : f32 = u_xlat26;
  let x_491 : vec3<f32> = u_xlat5;
  let x_493 : vec3<f32> = ((x_486 * -(vec3<f32>(x_487, x_487, x_487))) + -(x_491));
  let x_494 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec3<f32> = u_xlat13;
  let x_497 : vec3<f32> = u_xlat5;
  u_xlat26 = dot(x_496, x_497);
  let x_499 : f32 = u_xlat26;
  u_xlat26 = clamp(x_499, 0.0f, 1.0f);
  let x_501 : f32 = u_xlat26;
  u_xlat26 = (-(x_501) + 1.0f);
  let x_504 : f32 = u_xlat26;
  let x_505 : f32 = u_xlat26;
  u_xlat26 = (x_504 * x_505);
  let x_507 : f32 = u_xlat26;
  let x_508 : f32 = u_xlat26;
  u_xlat26 = (x_507 * x_508);
  let x_511 : f32 = u_xlat1;
  u_xlat41 = ((-(x_511) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_517 : f32 = u_xlat1;
  let x_518 : f32 = u_xlat41;
  u_xlat1 = (x_517 * x_518);
  let x_520 : f32 = u_xlat1;
  u_xlat1 = (x_520 * 6.0f);
  let x_531 : vec4<f32> = u_xlat6;
  let x_533 : f32 = u_xlat1;
  let x_534 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_531.x, x_531.y, x_531.z), x_533);
  u_xlat6 = x_534;
  let x_536 : f32 = u_xlat6.w;
  u_xlat1 = (x_536 + -1.0f);
  let x_543 : f32 = x_541.unity_SpecCube0_HDR.w;
  let x_544 : f32 = u_xlat1;
  u_xlat1 = ((x_543 * x_544) + 1.0f);
  let x_547 : f32 = u_xlat1;
  u_xlat1 = max(x_547, 0.0f);
  let x_549 : f32 = u_xlat1;
  u_xlat1 = log2(x_549);
  let x_551 : f32 = u_xlat1;
  let x_553 : f32 = x_541.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_551 * x_553);
  let x_555 : f32 = u_xlat1;
  u_xlat1 = exp2(x_555);
  let x_557 : f32 = u_xlat1;
  let x_559 : f32 = x_541.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_557 * x_559);
  let x_561 : vec4<f32> = u_xlat6;
  let x_563 : f32 = u_xlat1;
  let x_565 : vec3<f32> = (vec3<f32>(x_561.x, x_561.y, x_561.z) * vec3<f32>(x_563, x_563, x_563));
  let x_566 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_570 : f32 = u_xlat38;
  let x_572 : f32 = u_xlat38;
  u_xlat7 = ((vec2<f32>(x_570, x_570) * vec2<f32>(x_572, x_572)) + vec2<f32>(-1.0f, 1.0f));
  let x_578 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_578);
  let x_581 : vec4<f32> = u_xlat0;
  let x_584 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_581.x, x_581.y, x_581.z)) + vec3<f32>(x_584, x_584, x_584));
  let x_587 : f32 = u_xlat26;
  let x_589 : vec3<f32> = u_xlat19;
  let x_591 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_587, x_587, x_587) * x_589) + vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : f32 = u_xlat1;
  let x_596 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_594, x_594, x_594) * x_596);
  let x_598 : vec4<f32> = u_xlat6;
  let x_600 : vec3<f32> = u_xlat19;
  let x_601 : vec3<f32> = (vec3<f32>(x_598.x, x_598.y, x_598.z) * x_600);
  let x_602 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat3;
  let x_606 : vec3<f32> = u_xlat4;
  let x_608 : vec4<f32> = u_xlat6;
  let x_610 : vec3<f32> = ((vec3<f32>(x_604.x, x_604.y, x_604.z) * x_606) + vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_614 : f32 = u_xlat2.x;
  let x_616 : f32 = x_541.unity_LightData.z;
  u_xlat36 = (x_614 * x_616);
  let x_618 : vec3<f32> = u_xlat13;
  let x_620 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1 = dot(x_618, vec3<f32>(x_620.x, x_620.y, x_620.z));
  let x_623 : f32 = u_xlat1;
  u_xlat1 = clamp(x_623, 0.0f, 1.0f);
  let x_625 : f32 = u_xlat36;
  let x_626 : f32 = u_xlat1;
  u_xlat36 = (x_625 * x_626);
  let x_628 : f32 = u_xlat36;
  let x_631 : vec4<f32> = x_28.x_MainLightColor;
  let x_633 : vec3<f32> = (vec3<f32>(x_628, x_628, x_628) * vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_633.x, x_634.y, x_633.y, x_633.z);
  let x_636 : vec3<f32> = u_xlat5;
  let x_638 : vec4<f32> = x_28.x_MainLightPosition;
  let x_640 : vec3<f32> = (x_636 + vec3<f32>(x_638.x, x_638.y, x_638.z));
  let x_641 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat6;
  let x_645 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_643.x, x_643.y, x_643.z), vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_648 : f32 = u_xlat36;
  u_xlat36 = max(x_648, 1.17549435e-38f);
  let x_651 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_651);
  let x_653 : f32 = u_xlat36;
  let x_655 : vec4<f32> = u_xlat6;
  let x_657 : vec3<f32> = (vec3<f32>(x_653, x_653, x_653) * vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_658 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_660 : vec3<f32> = u_xlat13;
  let x_661 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_660, vec3<f32>(x_661.x, x_661.y, x_661.z));
  let x_664 : f32 = u_xlat36;
  u_xlat36 = clamp(x_664, 0.0f, 1.0f);
  let x_667 : vec4<f32> = x_28.x_MainLightPosition;
  let x_669 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_667.x, x_667.y, x_667.z), vec3<f32>(x_669.x, x_669.y, x_669.z));
  let x_672 : f32 = u_xlat1;
  u_xlat1 = clamp(x_672, 0.0f, 1.0f);
  let x_674 : f32 = u_xlat36;
  let x_675 : f32 = u_xlat36;
  u_xlat36 = (x_674 * x_675);
  let x_677 : f32 = u_xlat36;
  let x_679 : f32 = u_xlat7.x;
  u_xlat36 = ((x_677 * x_679) + 1.00001001358032226562f);
  let x_683 : f32 = u_xlat1;
  let x_684 : f32 = u_xlat1;
  u_xlat1 = (x_683 * x_684);
  let x_686 : f32 = u_xlat36;
  let x_687 : f32 = u_xlat36;
  u_xlat36 = (x_686 * x_687);
  let x_689 : f32 = u_xlat1;
  u_xlat1 = max(x_689, 0.10000000149011611938f);
  let x_692 : f32 = u_xlat36;
  let x_693 : f32 = u_xlat1;
  u_xlat36 = (x_692 * x_693);
  let x_695 : f32 = u_xlat39;
  let x_696 : f32 = u_xlat36;
  u_xlat36 = (x_695 * x_696);
  let x_698 : f32 = u_xlat40;
  let x_699 : f32 = u_xlat36;
  u_xlat36 = (x_698 / x_699);
  let x_701 : vec4<f32> = u_xlat0;
  let x_703 : f32 = u_xlat36;
  let x_706 : vec3<f32> = u_xlat4;
  let x_707 : vec3<f32> = ((vec3<f32>(x_701.x, x_701.y, x_701.z) * vec3<f32>(x_703, x_703, x_703)) + x_706);
  let x_708 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_711 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_713 : f32 = x_541.unity_LightData.y;
  u_xlat36 = min(x_711, x_713);
  let x_716 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_716));
  let x_720 : f32 = u_xlat14.x;
  let x_723 : f32 = x_80.x_AdditionalShadowFadeParams.x;
  let x_726 : f32 = x_80.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_720 * x_723) + x_726);
  let x_728 : f32 = u_xlat1;
  u_xlat1 = clamp(x_728, 0.0f, 1.0f);
  u_xlat19.x = 0.0f;
  u_xlat19.y = 0.0f;
  u_xlat19.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_740 : u32 = u_xlatu_loop_1;
    let x_741 : u32 = u_xlatu36;
    if ((x_740 < x_741)) {
    } else {
      break;
    }
    let x_744 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_744 >> 2u);
    let x_747 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_747 & 3u));
    let x_751 : u32 = u_xlatu41;
    let x_754 : vec4<f32> = x_541.unity_LightIndices[bitcast<i32>(x_751)];
    let x_764 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_769 : vec4<u32> = indexable[x_764];
    u_xlat41 = dot(x_754, bitcast<vec4<f32>>(x_769));
    let x_773 : f32 = u_xlat41;
    u_xlati41 = i32(x_773);
    let x_776 : vec3<f32> = vs_TEXCOORD7;
    let x_787 : i32 = u_xlati41;
    let x_789 : vec4<f32> = x_786.x_AdditionalLightsPosition[x_787];
    let x_792 : i32 = u_xlati41;
    let x_794 : vec4<f32> = x_786.x_AdditionalLightsPosition[x_792];
    u_xlat8 = ((-(x_776) * vec3<f32>(x_789.w, x_789.w, x_789.w)) + vec3<f32>(x_794.x, x_794.y, x_794.z));
    let x_798 : vec3<f32> = u_xlat8;
    let x_799 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_798, x_799);
    let x_801 : f32 = u_xlat42;
    u_xlat42 = max(x_801, 0.00006103515625f);
    let x_805 : f32 = u_xlat42;
    u_xlat44 = inverseSqrt(x_805);
    let x_808 : f32 = u_xlat44;
    let x_810 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_808, x_808, x_808) * x_810);
    let x_813 : f32 = u_xlat42;
    u_xlat45 = (1.0f / x_813);
    let x_815 : f32 = u_xlat42;
    let x_816 : i32 = u_xlati41;
    let x_818 : f32 = x_786.x_AdditionalLightsAttenuation[x_816].x;
    u_xlat42 = (x_815 * x_818);
    let x_820 : f32 = u_xlat42;
    let x_822 : f32 = u_xlat42;
    u_xlat42 = ((-(x_820) * x_822) + 1.0f);
    let x_825 : f32 = u_xlat42;
    u_xlat42 = max(x_825, 0.0f);
    let x_827 : f32 = u_xlat42;
    let x_828 : f32 = u_xlat42;
    u_xlat42 = (x_827 * x_828);
    let x_830 : f32 = u_xlat42;
    let x_831 : f32 = u_xlat45;
    u_xlat42 = (x_830 * x_831);
    let x_833 : i32 = u_xlati41;
    let x_835 : vec4<f32> = x_786.x_AdditionalLightsSpotDir[x_833];
    let x_837 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_835.x, x_835.y, x_835.z), x_837);
    let x_839 : f32 = u_xlat45;
    let x_840 : i32 = u_xlati41;
    let x_842 : f32 = x_786.x_AdditionalLightsAttenuation[x_840].z;
    let x_844 : i32 = u_xlati41;
    let x_846 : f32 = x_786.x_AdditionalLightsAttenuation[x_844].w;
    u_xlat45 = ((x_839 * x_842) + x_846);
    let x_848 : f32 = u_xlat45;
    u_xlat45 = clamp(x_848, 0.0f, 1.0f);
    let x_850 : f32 = u_xlat45;
    let x_851 : f32 = u_xlat45;
    u_xlat45 = (x_850 * x_851);
    let x_853 : f32 = u_xlat42;
    let x_854 : f32 = u_xlat45;
    u_xlat42 = (x_853 * x_854);
    let x_858 : i32 = u_xlati41;
    let x_860 : f32 = x_80.x_AdditionalShadowParams[x_858].w;
    u_xlati45 = i32(x_860);
    let x_865 : i32 = u_xlati45;
    u_xlatb10.x = (x_865 >= 0i);
    let x_869 : bool = u_xlatb10.x;
    if (x_869) {
      let x_873 : i32 = u_xlati41;
      let x_875 : f32 = x_80.x_AdditionalShadowParams[x_873].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_875, x_875, x_875, x_875))));
      let x_881 : bool = u_xlatb10.x;
      if (x_881) {
        let x_884 : vec3<f32> = u_xlat9;
        let x_887 : vec3<f32> = u_xlat9;
        let x_890 : vec4<bool> = (abs(vec4<f32>(x_884.z, x_884.z, x_884.y, x_884.z)) >= abs(vec4<f32>(x_887.x, x_887.y, x_887.x, x_887.x)));
        u_xlatb10 = vec3<bool>(x_890.x, x_890.y, x_890.z);
        let x_893 : bool = u_xlatb10.y;
        let x_895 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_893 & x_895);
        let x_899 : vec3<f32> = u_xlat9;
        let x_902 : vec4<bool> = (-(vec4<f32>(x_899.z, x_899.y, x_899.x, x_899.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_902.x, x_902.y, x_902.z);
        let x_906 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_906);
        let x_911 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_911);
        let x_916 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_916);
        let x_920 : bool = u_xlatb10.z;
        if (x_920) {
          let x_925 : f32 = u_xlat22.z;
          x_921 = x_925;
        } else {
          let x_927 : f32 = u_xlat11;
          x_921 = x_927;
        }
        let x_928 : f32 = x_921;
        u_xlat34 = x_928;
        let x_931 : bool = u_xlatb10.x;
        if (x_931) {
          let x_936 : f32 = u_xlat22.x;
          x_932 = x_936;
        } else {
          let x_938 : f32 = u_xlat34;
          x_932 = x_938;
        }
        let x_939 : f32 = x_932;
        u_xlat10.x = x_939;
        let x_941 : i32 = u_xlati41;
        let x_943 : f32 = x_80.x_AdditionalShadowParams[x_941].w;
        u_xlat22.x = trunc(x_943);
        let x_947 : f32 = u_xlat10.x;
        let x_949 : f32 = u_xlat22.x;
        u_xlat10.x = (x_947 + x_949);
        let x_953 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_953);
      }
      let x_955 : i32 = u_xlati45;
      u_xlati45 = (x_955 << bitcast<u32>(2i));
      let x_957 : vec3<f32> = vs_TEXCOORD7;
      let x_960 : i32 = u_xlati45;
      let x_963 : i32 = u_xlati45;
      let x_967 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_960 + 1i) / 4i)][((x_963 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_957.y, x_957.y, x_957.y, x_957.y) * x_967);
      let x_969 : i32 = u_xlati45;
      let x_971 : i32 = u_xlati45;
      let x_974 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[(x_969 / 4i)][(x_971 % 4i)];
      let x_975 : vec3<f32> = vs_TEXCOORD7;
      let x_978 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_974 * vec4<f32>(x_975.x, x_975.x, x_975.x, x_975.x)) + x_978);
      let x_980 : i32 = u_xlati45;
      let x_983 : i32 = u_xlati45;
      let x_987 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_980 + 2i) / 4i)][((x_983 + 2i) % 4i)];
      let x_988 : vec3<f32> = vs_TEXCOORD7;
      let x_991 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_987 * vec4<f32>(x_988.z, x_988.z, x_988.z, x_988.z)) + x_991);
      let x_993 : vec4<f32> = u_xlat10;
      let x_994 : i32 = u_xlati45;
      let x_997 : i32 = u_xlati45;
      let x_1001 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_994 + 3i) / 4i)][((x_997 + 3i) % 4i)];
      u_xlat10 = (x_993 + x_1001);
      let x_1003 : vec4<f32> = u_xlat10;
      let x_1005 : vec4<f32> = u_xlat10;
      let x_1007 : vec3<f32> = (vec3<f32>(x_1003.x, x_1003.y, x_1003.z) / vec3<f32>(x_1005.w, x_1005.w, x_1005.w));
      let x_1008 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
      let x_1011 : vec4<f32> = u_xlat10;
      let x_1012 : vec2<f32> = vec2<f32>(x_1011.x, x_1011.y);
      let x_1014 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1012.x, x_1012.y, x_1014);
      let x_1022 : vec3<f32> = txVec1;
      let x_1024 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1022.xy, x_1022.z);
      u_xlat45 = x_1024;
      let x_1025 : i32 = u_xlati41;
      let x_1027 : f32 = x_80.x_AdditionalShadowParams[x_1025].x;
      u_xlat10.x = (1.0f + -(x_1027));
      let x_1031 : f32 = u_xlat45;
      let x_1032 : i32 = u_xlati41;
      let x_1034 : f32 = x_80.x_AdditionalShadowParams[x_1032].x;
      let x_1037 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1031 * x_1034) + x_1037);
      let x_1040 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1040);
      let x_1045 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1045 >= 1.0f);
      let x_1047 : bool = u_xlatb22;
      let x_1049 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1047 | x_1049);
      let x_1053 : bool = u_xlatb10.x;
      let x_1054 : f32 = u_xlat45;
      u_xlat45 = select(x_1054, 1.0f, x_1053);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1057 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1057) + 1.0f);
    let x_1061 : f32 = u_xlat1;
    let x_1063 : f32 = u_xlat10.x;
    let x_1065 : f32 = u_xlat45;
    u_xlat45 = ((x_1061 * x_1063) + x_1065);
    let x_1067 : f32 = u_xlat42;
    let x_1068 : f32 = u_xlat45;
    u_xlat42 = (x_1067 * x_1068);
    let x_1070 : vec3<f32> = u_xlat13;
    let x_1071 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1070, x_1071);
    let x_1073 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1073, 0.0f, 1.0f);
    let x_1075 : f32 = u_xlat42;
    let x_1076 : f32 = u_xlat45;
    u_xlat42 = (x_1075 * x_1076);
    let x_1078 : f32 = u_xlat42;
    let x_1080 : i32 = u_xlati41;
    let x_1082 : vec4<f32> = x_786.x_AdditionalLightsColor[x_1080];
    let x_1084 : vec3<f32> = (vec3<f32>(x_1078, x_1078, x_1078) * vec3<f32>(x_1082.x, x_1082.y, x_1082.z));
    let x_1085 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1085.w);
    let x_1087 : vec3<f32> = u_xlat8;
    let x_1088 : f32 = u_xlat44;
    let x_1091 : vec3<f32> = u_xlat5;
    u_xlat8 = ((x_1087 * vec3<f32>(x_1088, x_1088, x_1088)) + x_1091);
    let x_1093 : vec3<f32> = u_xlat8;
    let x_1094 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1093, x_1094);
    let x_1096 : f32 = u_xlat41;
    u_xlat41 = max(x_1096, 1.17549435e-38f);
    let x_1098 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1098);
    let x_1100 : f32 = u_xlat41;
    let x_1102 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1100, x_1100, x_1100) * x_1102);
    let x_1104 : vec3<f32> = u_xlat13;
    let x_1105 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1104, x_1105);
    let x_1107 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1107, 0.0f, 1.0f);
    let x_1109 : vec3<f32> = u_xlat9;
    let x_1110 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1109, x_1110);
    let x_1112 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1112, 0.0f, 1.0f);
    let x_1114 : f32 = u_xlat41;
    let x_1115 : f32 = u_xlat41;
    u_xlat41 = (x_1114 * x_1115);
    let x_1117 : f32 = u_xlat41;
    let x_1119 : f32 = u_xlat7.x;
    u_xlat41 = ((x_1117 * x_1119) + 1.00001001358032226562f);
    let x_1122 : f32 = u_xlat42;
    let x_1123 : f32 = u_xlat42;
    u_xlat42 = (x_1122 * x_1123);
    let x_1125 : f32 = u_xlat41;
    let x_1126 : f32 = u_xlat41;
    u_xlat41 = (x_1125 * x_1126);
    let x_1128 : f32 = u_xlat42;
    u_xlat42 = max(x_1128, 0.10000000149011611938f);
    let x_1130 : f32 = u_xlat41;
    let x_1131 : f32 = u_xlat42;
    u_xlat41 = (x_1130 * x_1131);
    let x_1133 : f32 = u_xlat39;
    let x_1134 : f32 = u_xlat41;
    u_xlat41 = (x_1133 * x_1134);
    let x_1136 : f32 = u_xlat40;
    let x_1137 : f32 = u_xlat41;
    u_xlat41 = (x_1136 / x_1137);
    let x_1139 : vec4<f32> = u_xlat0;
    let x_1141 : f32 = u_xlat41;
    let x_1144 : vec3<f32> = u_xlat4;
    u_xlat8 = ((vec3<f32>(x_1139.x, x_1139.y, x_1139.z) * vec3<f32>(x_1141, x_1141, x_1141)) + x_1144);
    let x_1146 : vec3<f32> = u_xlat8;
    let x_1147 : vec4<f32> = u_xlat10;
    let x_1150 : vec3<f32> = u_xlat19;
    u_xlat19 = ((x_1146 * vec3<f32>(x_1147.x, x_1147.y, x_1147.z)) + x_1150);

    continuing {
      let x_1152 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1152 + bitcast<u32>(1i));
    }
  }
  let x_1154 : vec4<f32> = u_xlat6;
  let x_1156 : vec4<f32> = u_xlat2;
  let x_1159 : vec4<f32> = u_xlat3;
  let x_1161 : vec3<f32> = ((vec3<f32>(x_1154.x, x_1154.y, x_1154.z) * vec3<f32>(x_1156.x, x_1156.z, x_1156.w)) + vec3<f32>(x_1159.x, x_1159.y, x_1159.z));
  let x_1162 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
  let x_1166 : vec3<f32> = u_xlat19;
  let x_1167 : vec4<f32> = u_xlat0;
  let x_1169 : vec3<f32> = (x_1166 + vec3<f32>(x_1167.x, x_1167.y, x_1167.z));
  let x_1170 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
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


