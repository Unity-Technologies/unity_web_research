struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_147 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_372 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_665 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1123 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1238 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb15 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat29 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat15 : vec3<f32>;
  var x_118 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu3 : u32;
  var u_xlati3 : i32;
  var u_xlat17 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat44 : f32;
  var u_xlat46 : f32;
  var u_xlat19 : f32;
  var u_xlat42 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb17 : vec2<bool>;
  var u_xlatb31 : bool;
  var x_613 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat31 : f32;
  var x_749 : f32;
  var x_760 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu44 : u32;
  var u_xlati47 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat47 : f32;
  var u_xlat48 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat35 : vec2<f32>;
  var u_xlatu35 : u32;
  var u_xlati49 : i32;
  var u_xlati35 : i32;
  var u_xlati50 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb35 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var u_xlat39 : vec2<f32>;
  var x_1540 : f32;
  var x_1553 : f32;
  var x_1605 : f32;
  var x_1617 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_59 : vec4<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_44.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_59.x, x_59.y), x_62);
  u_xlat1 = x_63.x;
  let x_70 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb15 = (x_70 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD7;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_82 : vec3<f32> = (-(x_76) + x_81);
  let x_83 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_86 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_86.x, x_86.y, x_86.z), vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_91);
  let x_93 : f32 = u_xlat29;
  let x_95 : vec4<f32> = u_xlat2;
  let x_97 : vec3<f32> = (vec3<f32>(x_93, x_93, x_93) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_105 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_105;
  let x_108 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_108;
  let x_113 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_113;
  let x_117 : bool = u_xlatb15;
  if (x_117) {
    let x_121 : vec4<f32> = u_xlat2;
    x_118 = vec3<f32>(x_121.x, x_121.y, x_121.z);
  } else {
    let x_124 : vec4<f32> = u_xlat3;
    x_118 = vec3<f32>(x_124.x, x_124.y, x_124.z);
  }
  let x_126 : vec3<f32> = x_118;
  u_xlat15 = x_126;
  let x_128 : vec3<f32> = vs_TEXCOORD3;
  let x_129 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_128, x_129);
  let x_133 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_133);
  let x_136 : vec4<f32> = u_xlat2;
  let x_138 : vec3<f32> = vs_TEXCOORD3;
  let x_139 : vec3<f32> = (vec3<f32>(x_136.x, x_136.x, x_136.x) * x_138);
  let x_140 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
  let x_142 : vec3<f32> = vs_TEXCOORD7;
  let x_150 : vec4<f32> = x_147.x_CascadeShadowSplitSpheres0;
  let x_153 : vec3<f32> = (x_142 + -(vec3<f32>(x_150.x, x_150.y, x_150.z)));
  let x_154 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_157 : vec3<f32> = vs_TEXCOORD7;
  let x_159 : vec4<f32> = x_147.x_CascadeShadowSplitSpheres1;
  let x_162 : vec3<f32> = (x_157 + -(vec3<f32>(x_159.x, x_159.y, x_159.z)));
  let x_163 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_166 : vec3<f32> = vs_TEXCOORD7;
  let x_169 : vec4<f32> = x_147.x_CascadeShadowSplitSpheres2;
  let x_172 : vec3<f32> = (x_166 + -(vec3<f32>(x_169.x, x_169.y, x_169.z)));
  let x_173 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_176 : vec3<f32> = vs_TEXCOORD7;
  let x_179 : vec4<f32> = x_147.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_176 + -(vec3<f32>(x_179.x, x_179.y, x_179.z)));
  let x_183 : vec4<f32> = u_xlat3;
  let x_185 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_189 : vec4<f32> = u_xlat4;
  let x_191 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_189.x, x_189.y, x_189.z), vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_195 : vec4<f32> = u_xlat5;
  let x_197 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec3<f32> = u_xlat6;
  let x_202 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_201, x_202);
  let x_208 : vec4<f32> = u_xlat3;
  let x_211 : vec4<f32> = x_147.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_208 < x_211);
  let x_214 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_214);
  let x_218 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_218);
  let x_222 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_222);
  let x_226 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_226);
  let x_230 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_230);
  let x_236 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_236);
  let x_240 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_240);
  let x_243 : vec4<f32> = u_xlat3;
  let x_245 : vec4<f32> = u_xlat4;
  let x_247 : vec3<f32> = (vec3<f32>(x_243.x, x_243.y, x_243.z) + vec3<f32>(x_245.y, x_245.z, x_245.w));
  let x_248 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : vec4<f32> = u_xlat3;
  let x_253 : vec3<f32> = max(vec3<f32>(x_250.x, x_250.y, x_250.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_254 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_254.x, x_253.x, x_253.y, x_253.z);
  let x_256 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(x_256, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_264 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_264) + 4.0f);
  let x_271 : f32 = u_xlat3.x;
  u_xlatu3 = u32(x_271);
  let x_275 : u32 = u_xlatu3;
  u_xlati3 = (bitcast<i32>(x_275) << bitcast<u32>(2i));
  let x_279 : vec3<f32> = vs_TEXCOORD7;
  let x_281 : i32 = u_xlati3;
  let x_284 : i32 = u_xlati3;
  let x_288 : vec4<f32> = x_147.x_MainLightWorldToShadow[((x_281 + 1i) / 4i)][((x_284 + 1i) % 4i)];
  u_xlat17 = (vec3<f32>(x_279.y, x_279.y, x_279.y) * vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : i32 = u_xlati3;
  let x_293 : i32 = u_xlati3;
  let x_296 : vec4<f32> = x_147.x_MainLightWorldToShadow[(x_291 / 4i)][(x_293 % 4i)];
  let x_298 : vec3<f32> = vs_TEXCOORD7;
  let x_301 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_298.x, x_298.x, x_298.x)) + x_301);
  let x_303 : i32 = u_xlati3;
  let x_306 : i32 = u_xlati3;
  let x_310 : vec4<f32> = x_147.x_MainLightWorldToShadow[((x_303 + 2i) / 4i)][((x_306 + 2i) % 4i)];
  let x_312 : vec3<f32> = vs_TEXCOORD7;
  let x_315 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_310.x, x_310.y, x_310.z) * vec3<f32>(x_312.z, x_312.z, x_312.z)) + x_315);
  let x_317 : vec3<f32> = u_xlat17;
  let x_318 : i32 = u_xlati3;
  let x_321 : i32 = u_xlati3;
  let x_325 : vec4<f32> = x_147.x_MainLightWorldToShadow[((x_318 + 3i) / 4i)][((x_321 + 3i) % 4i)];
  let x_327 : vec3<f32> = (x_317 + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_332 : f32 = vs_TEXCOORD7.y;
  let x_334 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat45 = (x_332 * x_334);
  let x_337 : f32 = x_44.unity_MatrixV[0i].z;
  let x_339 : f32 = vs_TEXCOORD7.x;
  let x_341 : f32 = u_xlat45;
  u_xlat45 = ((x_337 * x_339) + x_341);
  let x_344 : f32 = x_44.unity_MatrixV[2i].z;
  let x_346 : f32 = vs_TEXCOORD7.z;
  let x_348 : f32 = u_xlat45;
  u_xlat45 = ((x_344 * x_346) + x_348);
  let x_350 : f32 = u_xlat45;
  let x_352 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat45 = (x_350 + x_352);
  let x_354 : f32 = u_xlat45;
  let x_358 : f32 = x_44.x_ProjectionParams.y;
  u_xlat45 = (-(x_354) + -(x_358));
  let x_361 : f32 = u_xlat45;
  u_xlat45 = max(x_361, 0.0f);
  let x_363 : f32 = u_xlat45;
  let x_366 : f32 = x_44.unity_FogParams.x;
  u_xlat45 = (x_363 * x_366);
  u_xlat2.w = 1.0f;
  let x_375 : vec4<f32> = x_372.unity_SHAr;
  let x_376 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_375, x_376);
  let x_381 : vec4<f32> = x_372.unity_SHAg;
  let x_382 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_381, x_382);
  let x_387 : vec4<f32> = x_372.unity_SHAb;
  let x_388 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_387, x_388);
  let x_391 : vec4<f32> = u_xlat2;
  let x_393 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_391.y, x_391.z, x_391.z, x_391.x) * vec4<f32>(x_393.x, x_393.y, x_393.z, x_393.z));
  let x_398 : vec4<f32> = x_372.unity_SHBr;
  let x_399 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_398, x_399);
  let x_404 : vec4<f32> = x_372.unity_SHBg;
  let x_405 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_404, x_405);
  let x_410 : vec4<f32> = x_372.unity_SHBb;
  let x_411 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_410, x_411);
  let x_416 : f32 = u_xlat2.y;
  let x_418 : f32 = u_xlat2.y;
  u_xlat44 = (x_416 * x_418);
  let x_421 : f32 = u_xlat2.x;
  let x_423 : f32 = u_xlat2.x;
  let x_425 : f32 = u_xlat44;
  u_xlat44 = ((x_421 * x_423) + -(x_425));
  let x_430 : vec4<f32> = x_372.unity_SHC;
  let x_432 : f32 = u_xlat44;
  let x_435 : vec3<f32> = u_xlat6;
  let x_436 : vec3<f32> = ((vec3<f32>(x_430.x, x_430.y, x_430.z) * vec3<f32>(x_432, x_432, x_432)) + x_435);
  let x_437 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat4;
  let x_441 : vec4<f32> = u_xlat5;
  let x_443 : vec3<f32> = (vec3<f32>(x_439.x, x_439.y, x_439.z) + vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_444 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec4<f32> = u_xlat4;
  let x_448 : vec3<f32> = max(vec3<f32>(x_446.x, x_446.y, x_446.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_449 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_453 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_454 : vec2<f32> = vec2<f32>(x_453.x, x_453.y);
  let x_458 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_454.x, x_454.y));
  let x_459 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_458.x, x_458.y, x_459.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat5;
  let x_463 : vec4<f32> = hlslcc_FragCoord;
  let x_465 : vec2<f32> = (vec2<f32>(x_461.x, x_461.y) * vec2<f32>(x_463.x, x_463.y));
  let x_466 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
  let x_469 : f32 = u_xlat5.y;
  let x_472 : f32 = x_44.x_ScaleBiasRt.x;
  let x_475 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat44 = ((x_469 * x_472) + x_475);
  let x_477 : f32 = u_xlat44;
  u_xlat5.z = (-(x_477) + 1.0f);
  let x_481 : f32 = u_xlat1;
  u_xlat44 = ((-(x_481) * 0.959999979f) + 0.959999979f);
  let x_487 : f32 = u_xlat44;
  u_xlat46 = (-(x_487) + 1.0f);
  let x_490 : vec4<f32> = u_xlat0;
  let x_492 : f32 = u_xlat44;
  u_xlat6 = (vec3<f32>(x_490.x, x_490.y, x_490.z) * vec3<f32>(x_492, x_492, x_492));
  let x_495 : vec4<f32> = u_xlat0;
  let x_499 : vec3<f32> = (vec3<f32>(x_495.x, x_495.y, x_495.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_500 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : f32 = u_xlat1;
  let x_504 : vec4<f32> = u_xlat0;
  let x_509 : vec3<f32> = ((vec3<f32>(x_502, x_502, x_502) * vec3<f32>(x_504.x, x_504.y, x_504.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_510 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_513 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_513) + 1.0f);
  let x_516 : f32 = u_xlat1;
  let x_517 : f32 = u_xlat1;
  u_xlat44 = (x_516 * x_517);
  let x_519 : f32 = u_xlat44;
  u_xlat44 = max(x_519, 0.0078125f);
  let x_523 : f32 = u_xlat44;
  let x_524 : f32 = u_xlat44;
  u_xlat19 = (x_523 * x_524);
  let x_528 : f32 = u_xlat0.w;
  let x_529 : f32 = u_xlat46;
  u_xlat42 = (x_528 + x_529);
  let x_531 : f32 = u_xlat42;
  u_xlat42 = clamp(x_531, 0.0f, 1.0f);
  let x_533 : f32 = u_xlat44;
  u_xlat46 = ((x_533 * 4.0f) + 2.0f);
  let x_541 : vec4<f32> = u_xlat5;
  let x_544 : f32 = x_44.x_GlobalMipBias.x;
  let x_545 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_541.x, x_541.z), x_544);
  u_xlat5.x = x_545.x;
  let x_550 : f32 = u_xlat5.x;
  u_xlat33 = (x_550 + -1.0f);
  let x_553 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_554 : f32 = u_xlat33;
  u_xlat33 = ((x_553 * x_554) + 1.0f);
  let x_558 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_558, 1.0f);
  let x_562 : vec4<f32> = u_xlat3;
  let x_563 : vec2<f32> = vec2<f32>(x_562.x, x_562.y);
  let x_565 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_563.x, x_563.y, x_565);
  let x_577 : vec3<f32> = txVec0;
  let x_579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_577.xy, x_577.z);
  u_xlat3.x = x_579;
  let x_582 : f32 = x_147.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_582) + 1.0f);
  let x_587 : f32 = u_xlat3.x;
  let x_589 : f32 = x_147.x_MainLightShadowParams.x;
  let x_592 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_587 * x_589) + x_592);
  let x_599 : f32 = u_xlat3.z;
  u_xlatb17.x = (0.0f >= x_599);
  let x_604 : f32 = u_xlat3.z;
  u_xlatb31 = (x_604 >= 1.0f);
  let x_606 : bool = u_xlatb31;
  let x_608 : bool = u_xlatb17.x;
  u_xlatb17.x = (x_606 | x_608);
  let x_612 : bool = u_xlatb17.x;
  if (x_612) {
    x_613 = 1.0f;
  } else {
    let x_618 : f32 = u_xlat3.x;
    x_613 = x_618;
  }
  let x_619 : f32 = x_613;
  u_xlat3.x = x_619;
  let x_622 : vec3<f32> = vs_TEXCOORD7;
  let x_624 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_626 : vec3<f32> = (x_622 + -(x_624));
  let x_627 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec4<f32> = u_xlat7;
  let x_631 : vec4<f32> = u_xlat7;
  u_xlat17.x = dot(vec3<f32>(x_629.x, x_629.y, x_629.z), vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_636 : f32 = u_xlat17.x;
  let x_638 : f32 = x_147.x_MainLightShadowParams.z;
  let x_641 : f32 = x_147.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_636 * x_638) + x_641);
  let x_645 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_645, 0.0f, 1.0f);
  let x_650 : f32 = u_xlat3.x;
  u_xlat31 = (-(x_650) + 1.0f);
  let x_654 : f32 = u_xlat17.x;
  let x_655 : f32 = u_xlat31;
  let x_658 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_654 * x_655) + x_658);
  let x_667 : f32 = x_665.x_MainLightCookieTextureFormat;
  u_xlatb17.x = !((x_667 == -1.0f));
  let x_671 : bool = u_xlatb17.x;
  if (x_671) {
    let x_674 : vec3<f32> = vs_TEXCOORD7;
    let x_677 : vec4<f32> = x_665.x_MainLightWorldToLight[1i];
    let x_679 : vec2<f32> = (vec2<f32>(x_674.y, x_674.y) * vec2<f32>(x_677.x, x_677.y));
    let x_680 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_679.x, x_679.y, x_680.z);
    let x_683 : vec4<f32> = x_665.x_MainLightWorldToLight[0i];
    let x_685 : vec3<f32> = vs_TEXCOORD7;
    let x_688 : vec3<f32> = u_xlat17;
    let x_690 : vec2<f32> = ((vec2<f32>(x_683.x, x_683.y) * vec2<f32>(x_685.x, x_685.x)) + vec2<f32>(x_688.x, x_688.y));
    let x_691 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_690.x, x_690.y, x_691.z);
    let x_694 : vec4<f32> = x_665.x_MainLightWorldToLight[2i];
    let x_696 : vec3<f32> = vs_TEXCOORD7;
    let x_699 : vec3<f32> = u_xlat17;
    let x_701 : vec2<f32> = ((vec2<f32>(x_694.x, x_694.y) * vec2<f32>(x_696.z, x_696.z)) + vec2<f32>(x_699.x, x_699.y));
    let x_702 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_701.x, x_701.y, x_702.z);
    let x_704 : vec3<f32> = u_xlat17;
    let x_707 : vec4<f32> = x_665.x_MainLightWorldToLight[3i];
    let x_709 : vec2<f32> = (vec2<f32>(x_704.x, x_704.y) + vec2<f32>(x_707.x, x_707.y));
    let x_710 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_709.x, x_709.y, x_710.z);
    let x_712 : vec3<f32> = u_xlat17;
    let x_717 : vec2<f32> = ((vec2<f32>(x_712.x, x_712.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_718 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_717.x, x_717.y, x_718.z);
    let x_725 : vec3<f32> = u_xlat17;
    let x_728 : f32 = x_44.x_GlobalMipBias.x;
    let x_729 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_725.x, x_725.y), x_728);
    u_xlat7 = x_729;
    let x_731 : f32 = x_665.x_MainLightCookieTextureFormat;
    let x_733 : f32 = x_665.x_MainLightCookieTextureFormat;
    let x_735 : f32 = x_665.x_MainLightCookieTextureFormat;
    let x_737 : f32 = x_665.x_MainLightCookieTextureFormat;
    let x_738 : vec4<f32> = vec4<f32>(x_731, x_733, x_735, x_737);
    let x_745 : vec4<bool> = (vec4<f32>(x_738.x, x_738.y, x_738.z, x_738.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb17 = vec2<bool>(x_745.x, x_745.y);
    let x_748 : bool = u_xlatb17.y;
    if (x_748) {
      let x_753 : f32 = u_xlat7.w;
      x_749 = x_753;
    } else {
      let x_756 : f32 = u_xlat7.x;
      x_749 = x_756;
    }
    let x_757 : f32 = x_749;
    u_xlat31 = x_757;
    let x_759 : bool = u_xlatb17.x;
    if (x_759) {
      let x_763 : vec4<f32> = u_xlat7;
      x_760 = vec3<f32>(x_763.x, x_763.y, x_763.z);
    } else {
      let x_766 : f32 = u_xlat31;
      x_760 = vec3<f32>(x_766, x_766, x_766);
    }
    let x_768 : vec3<f32> = x_760;
    let x_769 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_775 : vec4<f32> = u_xlat7;
  let x_778 : vec4<f32> = x_44.x_MainLightColor;
  let x_780 : vec3<f32> = (vec3<f32>(x_775.x, x_775.y, x_775.z) * vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : f32 = u_xlat33;
  let x_785 : vec4<f32> = u_xlat7;
  let x_787 : vec3<f32> = (vec3<f32>(x_783, x_783, x_783) * vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec3<f32> = u_xlat15;
  let x_792 : vec4<f32> = u_xlat2;
  u_xlat17.x = dot(-(x_790), vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_797 : f32 = u_xlat17.x;
  let x_799 : f32 = u_xlat17.x;
  u_xlat17.x = (x_797 + x_799);
  let x_803 : vec4<f32> = u_xlat2;
  let x_805 : vec3<f32> = u_xlat17;
  let x_809 : vec3<f32> = u_xlat15;
  let x_811 : vec3<f32> = ((vec3<f32>(x_803.x, x_803.y, x_803.z) * -(vec3<f32>(x_805.x, x_805.x, x_805.x))) + -(x_809));
  let x_812 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec4<f32> = u_xlat2;
  let x_816 : vec3<f32> = u_xlat15;
  u_xlat17.x = dot(vec3<f32>(x_814.x, x_814.y, x_814.z), x_816);
  let x_820 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_820, 0.0f, 1.0f);
  let x_824 : f32 = u_xlat17.x;
  u_xlat17.x = (-(x_824) + 1.0f);
  let x_829 : f32 = u_xlat17.x;
  let x_831 : f32 = u_xlat17.x;
  u_xlat17.x = (x_829 * x_831);
  let x_835 : f32 = u_xlat17.x;
  let x_837 : f32 = u_xlat17.x;
  u_xlat17.x = (x_835 * x_837);
  let x_840 : f32 = u_xlat1;
  u_xlat31 = ((-(x_840) * 0.699999988f) + 1.700000048f);
  let x_846 : f32 = u_xlat1;
  let x_847 : f32 = u_xlat31;
  u_xlat1 = (x_846 * x_847);
  let x_849 : f32 = u_xlat1;
  u_xlat1 = (x_849 * 6.0f);
  let x_860 : vec4<f32> = u_xlat8;
  let x_862 : f32 = u_xlat1;
  let x_863 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_860.x, x_860.y, x_860.z), x_862);
  u_xlat8 = x_863;
  let x_865 : f32 = u_xlat8.w;
  u_xlat1 = (x_865 + -1.0f);
  let x_868 : f32 = x_372.unity_SpecCube0_HDR.w;
  let x_869 : f32 = u_xlat1;
  u_xlat1 = ((x_868 * x_869) + 1.0f);
  let x_872 : f32 = u_xlat1;
  u_xlat1 = max(x_872, 0.0f);
  let x_874 : f32 = u_xlat1;
  u_xlat1 = log2(x_874);
  let x_876 : f32 = u_xlat1;
  let x_878 : f32 = x_372.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_876 * x_878);
  let x_880 : f32 = u_xlat1;
  u_xlat1 = exp2(x_880);
  let x_882 : f32 = u_xlat1;
  let x_884 : f32 = x_372.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_882 * x_884);
  let x_886 : vec4<f32> = u_xlat8;
  let x_888 : f32 = u_xlat1;
  let x_890 : vec3<f32> = (vec3<f32>(x_886.x, x_886.y, x_886.z) * vec3<f32>(x_888, x_888, x_888));
  let x_891 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
  let x_895 : f32 = u_xlat44;
  let x_897 : f32 = u_xlat44;
  u_xlat9 = ((vec2<f32>(x_895, x_895) * vec2<f32>(x_897, x_897)) + vec2<f32>(-1.0f, 1.0f));
  let x_903 : f32 = u_xlat9.y;
  u_xlat1 = (1.0f / x_903);
  let x_906 : vec4<f32> = u_xlat0;
  let x_909 : f32 = u_xlat42;
  u_xlat23 = (-(vec3<f32>(x_906.x, x_906.y, x_906.z)) + vec3<f32>(x_909, x_909, x_909));
  let x_912 : vec3<f32> = u_xlat17;
  let x_914 : vec3<f32> = u_xlat23;
  let x_916 : vec4<f32> = u_xlat0;
  u_xlat23 = ((vec3<f32>(x_912.x, x_912.x, x_912.x) * x_914) + vec3<f32>(x_916.x, x_916.y, x_916.z));
  let x_919 : f32 = u_xlat1;
  let x_921 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_919, x_919, x_919) * x_921);
  let x_923 : vec4<f32> = u_xlat8;
  let x_925 : vec3<f32> = u_xlat23;
  let x_926 : vec3<f32> = (vec3<f32>(x_923.x, x_923.y, x_923.z) * x_925);
  let x_927 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : vec4<f32> = u_xlat4;
  let x_931 : vec3<f32> = u_xlat6;
  let x_933 : vec4<f32> = u_xlat8;
  let x_935 : vec3<f32> = ((vec3<f32>(x_929.x, x_929.y, x_929.z) * x_931) + vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_939 : f32 = u_xlat3.x;
  let x_941 : f32 = x_372.unity_LightData.z;
  u_xlat42 = (x_939 * x_941);
  let x_943 : vec4<f32> = u_xlat2;
  let x_946 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(vec3<f32>(x_943.x, x_943.y, x_943.z), vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : f32 = u_xlat1;
  u_xlat1 = clamp(x_949, 0.0f, 1.0f);
  let x_951 : f32 = u_xlat42;
  let x_952 : f32 = u_xlat1;
  u_xlat42 = (x_951 * x_952);
  let x_954 : f32 = u_xlat42;
  let x_956 : vec4<f32> = u_xlat7;
  let x_958 : vec3<f32> = (vec3<f32>(x_954, x_954, x_954) * vec3<f32>(x_956.x, x_956.y, x_956.z));
  let x_959 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
  let x_961 : vec3<f32> = u_xlat15;
  let x_963 : vec4<f32> = x_44.x_MainLightPosition;
  let x_965 : vec3<f32> = (x_961 + vec3<f32>(x_963.x, x_963.y, x_963.z));
  let x_966 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
  let x_968 : vec4<f32> = u_xlat7;
  let x_970 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_968.x, x_968.y, x_968.z), vec3<f32>(x_970.x, x_970.y, x_970.z));
  let x_973 : f32 = u_xlat42;
  u_xlat42 = max(x_973, 1.17549435e-37f);
  let x_976 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_976);
  let x_978 : f32 = u_xlat42;
  let x_980 : vec4<f32> = u_xlat7;
  let x_982 : vec3<f32> = (vec3<f32>(x_978, x_978, x_978) * vec3<f32>(x_980.x, x_980.y, x_980.z));
  let x_983 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
  let x_985 : vec4<f32> = u_xlat2;
  let x_987 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_985.x, x_985.y, x_985.z), vec3<f32>(x_987.x, x_987.y, x_987.z));
  let x_990 : f32 = u_xlat42;
  u_xlat42 = clamp(x_990, 0.0f, 1.0f);
  let x_993 : vec4<f32> = x_44.x_MainLightPosition;
  let x_995 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_993.x, x_993.y, x_993.z), vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_998 : f32 = u_xlat1;
  u_xlat1 = clamp(x_998, 0.0f, 1.0f);
  let x_1000 : f32 = u_xlat42;
  let x_1001 : f32 = u_xlat42;
  u_xlat42 = (x_1000 * x_1001);
  let x_1003 : f32 = u_xlat42;
  let x_1005 : f32 = u_xlat9.x;
  u_xlat42 = ((x_1003 * x_1005) + 1.000010014f);
  let x_1009 : f32 = u_xlat1;
  let x_1010 : f32 = u_xlat1;
  u_xlat1 = (x_1009 * x_1010);
  let x_1012 : f32 = u_xlat42;
  let x_1013 : f32 = u_xlat42;
  u_xlat42 = (x_1012 * x_1013);
  let x_1015 : f32 = u_xlat1;
  u_xlat1 = max(x_1015, 0.100000001f);
  let x_1018 : f32 = u_xlat42;
  let x_1019 : f32 = u_xlat1;
  u_xlat42 = (x_1018 * x_1019);
  let x_1021 : f32 = u_xlat46;
  let x_1022 : f32 = u_xlat42;
  u_xlat42 = (x_1021 * x_1022);
  let x_1024 : f32 = u_xlat19;
  let x_1025 : f32 = u_xlat42;
  u_xlat42 = (x_1024 / x_1025);
  let x_1027 : vec4<f32> = u_xlat0;
  let x_1029 : f32 = u_xlat42;
  let x_1032 : vec3<f32> = u_xlat6;
  let x_1033 : vec3<f32> = ((vec3<f32>(x_1027.x, x_1027.y, x_1027.z) * vec3<f32>(x_1029, x_1029, x_1029)) + x_1032);
  let x_1034 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
  let x_1036 : vec4<f32> = u_xlat3;
  let x_1038 : vec4<f32> = u_xlat7;
  let x_1040 : vec3<f32> = (vec3<f32>(x_1036.x, x_1036.y, x_1036.z) * vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1041 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
  let x_1044 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1046 : f32 = x_372.unity_LightData.y;
  u_xlat42 = min(x_1044, x_1046);
  let x_1049 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1049));
  let x_1054 : f32 = x_665.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1056 : f32 = x_665.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1058 : f32 = x_665.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1060 : f32 = x_665.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1061 : vec4<f32> = vec4<f32>(x_1054, x_1056, x_1058, x_1060);
  let x_1067 : vec4<bool> = (vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1061.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1067.x, x_1067.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1078 : u32 = u_xlatu_loop_1;
    let x_1079 : u32 = u_xlatu42;
    if ((x_1078 < x_1079)) {
    } else {
      break;
    }
    let x_1082 : u32 = u_xlatu_loop_1;
    u_xlatu44 = (x_1082 >> 2u);
    let x_1085 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1085 & 3u));
    let x_1088 : u32 = u_xlatu44;
    let x_1091 : vec4<f32> = x_372.unity_LightIndices[bitcast<i32>(x_1088)];
    let x_1101 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1106 : vec4<u32> = indexable[x_1101];
    u_xlat44 = dot(x_1091, bitcast<vec4<f32>>(x_1106));
    let x_1109 : f32 = u_xlat44;
    u_xlatu44 = bitcast<u32>(i32(x_1109));
    let x_1112 : vec3<f32> = vs_TEXCOORD7;
    let x_1124 : u32 = u_xlatu44;
    let x_1127 : vec4<f32> = x_1123.x_AdditionalLightsPosition[bitcast<i32>(x_1124)];
    let x_1130 : u32 = u_xlatu44;
    let x_1133 : vec4<f32> = x_1123.x_AdditionalLightsPosition[bitcast<i32>(x_1130)];
    u_xlat23 = ((-(x_1112) * vec3<f32>(x_1127.w, x_1127.w, x_1127.w)) + vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
    let x_1137 : vec3<f32> = u_xlat23;
    let x_1138 : vec3<f32> = u_xlat23;
    u_xlat47 = dot(x_1137, x_1138);
    let x_1140 : f32 = u_xlat47;
    u_xlat47 = max(x_1140, 6.10351562e-05f);
    let x_1144 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1144);
    let x_1147 : f32 = u_xlat48;
    let x_1149 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1147, x_1147, x_1147) * x_1149);
    let x_1152 : f32 = u_xlat47;
    u_xlat35.x = (1.0f / x_1152);
    let x_1155 : f32 = u_xlat47;
    let x_1156 : u32 = u_xlatu44;
    let x_1159 : f32 = x_1123.x_AdditionalLightsAttenuation[bitcast<i32>(x_1156)].x;
    u_xlat47 = (x_1155 * x_1159);
    let x_1161 : f32 = u_xlat47;
    let x_1163 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1161) * x_1163) + 1.0f);
    let x_1166 : f32 = u_xlat47;
    u_xlat47 = max(x_1166, 0.0f);
    let x_1168 : f32 = u_xlat47;
    let x_1169 : f32 = u_xlat47;
    u_xlat47 = (x_1168 * x_1169);
    let x_1171 : f32 = u_xlat47;
    let x_1173 : f32 = u_xlat35.x;
    u_xlat47 = (x_1171 * x_1173);
    let x_1175 : u32 = u_xlatu44;
    let x_1178 : vec4<f32> = x_1123.x_AdditionalLightsSpotDir[bitcast<i32>(x_1175)];
    let x_1180 : vec3<f32> = u_xlat10;
    u_xlat35.x = dot(vec3<f32>(x_1178.x, x_1178.y, x_1178.z), x_1180);
    let x_1184 : f32 = u_xlat35.x;
    let x_1185 : u32 = u_xlatu44;
    let x_1188 : f32 = x_1123.x_AdditionalLightsAttenuation[bitcast<i32>(x_1185)].z;
    let x_1190 : u32 = u_xlatu44;
    let x_1193 : f32 = x_1123.x_AdditionalLightsAttenuation[bitcast<i32>(x_1190)].w;
    u_xlat35.x = ((x_1184 * x_1188) + x_1193);
    let x_1197 : f32 = u_xlat35.x;
    u_xlat35.x = clamp(x_1197, 0.0f, 1.0f);
    let x_1201 : f32 = u_xlat35.x;
    let x_1203 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1201 * x_1203);
    let x_1206 : f32 = u_xlat47;
    let x_1208 : f32 = u_xlat35.x;
    u_xlat47 = (x_1206 * x_1208);
    let x_1211 : u32 = u_xlatu44;
    u_xlatu35 = (x_1211 >> 5u);
    let x_1214 : u32 = u_xlatu44;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_1214) & 31i)));
    let x_1220 : i32 = u_xlati49;
    let x_1222 : u32 = u_xlatu35;
    let x_1225 : f32 = x_665.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1222)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_1220) & bitcast<u32>(x_1225)));
    let x_1229 : i32 = u_xlati35;
    if ((x_1229 != 0i)) {
      let x_1239 : u32 = u_xlatu44;
      let x_1242 : f32 = x_1238.x_AdditionalLightsLightTypes[bitcast<i32>(x_1239)].el;
      u_xlati35 = i32(x_1242);
      let x_1244 : i32 = u_xlati35;
      u_xlati49 = select(1i, 0i, (x_1244 != 0i));
      let x_1248 : u32 = u_xlatu44;
      u_xlati50 = (bitcast<i32>(x_1248) << bitcast<u32>(2i));
      let x_1251 : i32 = u_xlati49;
      if ((x_1251 != 0i)) {
        let x_1256 : vec3<f32> = vs_TEXCOORD7;
        let x_1258 : i32 = u_xlati50;
        let x_1261 : i32 = u_xlati50;
        let x_1265 : vec4<f32> = x_1238.x_AdditionalLightsWorldToLights[((x_1258 + 1i) / 4i)][((x_1261 + 1i) % 4i)];
        let x_1267 : vec3<f32> = (vec3<f32>(x_1256.y, x_1256.y, x_1256.y) * vec3<f32>(x_1265.x, x_1265.y, x_1265.w));
        let x_1268 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1268.w);
        let x_1270 : i32 = u_xlati50;
        let x_1272 : i32 = u_xlati50;
        let x_1275 : vec4<f32> = x_1238.x_AdditionalLightsWorldToLights[(x_1270 / 4i)][(x_1272 % 4i)];
        let x_1277 : vec3<f32> = vs_TEXCOORD7;
        let x_1280 : vec4<f32> = u_xlat11;
        let x_1282 : vec3<f32> = ((vec3<f32>(x_1275.x, x_1275.y, x_1275.w) * vec3<f32>(x_1277.x, x_1277.x, x_1277.x)) + vec3<f32>(x_1280.x, x_1280.y, x_1280.z));
        let x_1283 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
        let x_1285 : i32 = u_xlati50;
        let x_1288 : i32 = u_xlati50;
        let x_1292 : vec4<f32> = x_1238.x_AdditionalLightsWorldToLights[((x_1285 + 2i) / 4i)][((x_1288 + 2i) % 4i)];
        let x_1294 : vec3<f32> = vs_TEXCOORD7;
        let x_1297 : vec4<f32> = u_xlat11;
        let x_1299 : vec3<f32> = ((vec3<f32>(x_1292.x, x_1292.y, x_1292.w) * vec3<f32>(x_1294.z, x_1294.z, x_1294.z)) + vec3<f32>(x_1297.x, x_1297.y, x_1297.z));
        let x_1300 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1299.x, x_1299.y, x_1299.z, x_1300.w);
        let x_1302 : vec4<f32> = u_xlat11;
        let x_1304 : i32 = u_xlati50;
        let x_1307 : i32 = u_xlati50;
        let x_1311 : vec4<f32> = x_1238.x_AdditionalLightsWorldToLights[((x_1304 + 3i) / 4i)][((x_1307 + 3i) % 4i)];
        let x_1313 : vec3<f32> = (vec3<f32>(x_1302.x, x_1302.y, x_1302.z) + vec3<f32>(x_1311.x, x_1311.y, x_1311.w));
        let x_1314 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1314.w);
        let x_1316 : vec4<f32> = u_xlat11;
        let x_1318 : vec4<f32> = u_xlat11;
        let x_1320 : vec2<f32> = (vec2<f32>(x_1316.x, x_1316.y) / vec2<f32>(x_1318.z, x_1318.z));
        let x_1321 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1320.x, x_1320.y, x_1321.z, x_1321.w);
        let x_1323 : vec4<f32> = u_xlat11;
        let x_1326 : vec2<f32> = ((vec2<f32>(x_1323.x, x_1323.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1327 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1326.x, x_1326.y, x_1327.z, x_1327.w);
        let x_1329 : vec4<f32> = u_xlat11;
        let x_1333 : vec2<f32> = clamp(vec2<f32>(x_1329.x, x_1329.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1334 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1333.x, x_1333.y, x_1334.z, x_1334.w);
        let x_1336 : u32 = u_xlatu44;
        let x_1339 : vec4<f32> = x_1238.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1336)];
        let x_1341 : vec4<f32> = u_xlat11;
        let x_1344 : u32 = u_xlatu44;
        let x_1347 : vec4<f32> = x_1238.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1344)];
        let x_1349 : vec2<f32> = ((vec2<f32>(x_1339.x, x_1339.y) * vec2<f32>(x_1341.x, x_1341.y)) + vec2<f32>(x_1347.z, x_1347.w));
        let x_1350 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1349.x, x_1349.y, x_1350.z, x_1350.w);
      } else {
        let x_1354 : i32 = u_xlati35;
        u_xlatb35 = (x_1354 == 1i);
        let x_1356 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1356);
        let x_1358 : i32 = u_xlati35;
        if ((x_1358 != 0i)) {
          let x_1362 : vec3<f32> = vs_TEXCOORD7;
          let x_1364 : i32 = u_xlati50;
          let x_1367 : i32 = u_xlati50;
          let x_1371 : vec4<f32> = x_1238.x_AdditionalLightsWorldToLights[((x_1364 + 1i) / 4i)][((x_1367 + 1i) % 4i)];
          u_xlat35 = (vec2<f32>(x_1362.y, x_1362.y) * vec2<f32>(x_1371.x, x_1371.y));
          let x_1374 : i32 = u_xlati50;
          let x_1376 : i32 = u_xlati50;
          let x_1379 : vec4<f32> = x_1238.x_AdditionalLightsWorldToLights[(x_1374 / 4i)][(x_1376 % 4i)];
          let x_1381 : vec3<f32> = vs_TEXCOORD7;
          let x_1384 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1379.x, x_1379.y) * vec2<f32>(x_1381.x, x_1381.x)) + x_1384);
          let x_1386 : i32 = u_xlati50;
          let x_1389 : i32 = u_xlati50;
          let x_1393 : vec4<f32> = x_1238.x_AdditionalLightsWorldToLights[((x_1386 + 2i) / 4i)][((x_1389 + 2i) % 4i)];
          let x_1395 : vec3<f32> = vs_TEXCOORD7;
          let x_1398 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1393.x, x_1393.y) * vec2<f32>(x_1395.z, x_1395.z)) + x_1398);
          let x_1400 : vec2<f32> = u_xlat35;
          let x_1401 : i32 = u_xlati50;
          let x_1404 : i32 = u_xlati50;
          let x_1408 : vec4<f32> = x_1238.x_AdditionalLightsWorldToLights[((x_1401 + 3i) / 4i)][((x_1404 + 3i) % 4i)];
          u_xlat35 = (x_1400 + vec2<f32>(x_1408.x, x_1408.y));
          let x_1411 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1411 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1414 : vec2<f32> = u_xlat35;
          u_xlat35 = fract(x_1414);
          let x_1416 : u32 = u_xlatu44;
          let x_1419 : vec4<f32> = x_1238.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1416)];
          let x_1421 : vec2<f32> = u_xlat35;
          let x_1423 : u32 = u_xlatu44;
          let x_1426 : vec4<f32> = x_1238.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1423)];
          let x_1428 : vec2<f32> = ((vec2<f32>(x_1419.x, x_1419.y) * x_1421) + vec2<f32>(x_1426.z, x_1426.w));
          let x_1429 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1428.x, x_1428.y, x_1429.z, x_1429.w);
        } else {
          let x_1433 : vec3<f32> = vs_TEXCOORD7;
          let x_1435 : i32 = u_xlati50;
          let x_1438 : i32 = u_xlati50;
          let x_1442 : vec4<f32> = x_1238.x_AdditionalLightsWorldToLights[((x_1435 + 1i) / 4i)][((x_1438 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1433.y, x_1433.y, x_1433.y, x_1433.y) * x_1442);
          let x_1444 : i32 = u_xlati50;
          let x_1446 : i32 = u_xlati50;
          let x_1449 : vec4<f32> = x_1238.x_AdditionalLightsWorldToLights[(x_1444 / 4i)][(x_1446 % 4i)];
          let x_1450 : vec3<f32> = vs_TEXCOORD7;
          let x_1453 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1449 * vec4<f32>(x_1450.x, x_1450.x, x_1450.x, x_1450.x)) + x_1453);
          let x_1455 : i32 = u_xlati50;
          let x_1458 : i32 = u_xlati50;
          let x_1462 : vec4<f32> = x_1238.x_AdditionalLightsWorldToLights[((x_1455 + 2i) / 4i)][((x_1458 + 2i) % 4i)];
          let x_1463 : vec3<f32> = vs_TEXCOORD7;
          let x_1466 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1462 * vec4<f32>(x_1463.z, x_1463.z, x_1463.z, x_1463.z)) + x_1466);
          let x_1468 : vec4<f32> = u_xlat12;
          let x_1469 : i32 = u_xlati50;
          let x_1472 : i32 = u_xlati50;
          let x_1476 : vec4<f32> = x_1238.x_AdditionalLightsWorldToLights[((x_1469 + 3i) / 4i)][((x_1472 + 3i) % 4i)];
          u_xlat12 = (x_1468 + x_1476);
          let x_1478 : vec4<f32> = u_xlat12;
          let x_1480 : vec4<f32> = u_xlat12;
          let x_1482 : vec3<f32> = (vec3<f32>(x_1478.x, x_1478.y, x_1478.z) / vec3<f32>(x_1480.w, x_1480.w, x_1480.w));
          let x_1483 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1482.x, x_1482.y, x_1482.z, x_1483.w);
          let x_1485 : vec4<f32> = u_xlat12;
          let x_1487 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(vec3<f32>(x_1485.x, x_1485.y, x_1485.z), vec3<f32>(x_1487.x, x_1487.y, x_1487.z));
          let x_1492 : f32 = u_xlat35.x;
          u_xlat35.x = inverseSqrt(x_1492);
          let x_1495 : vec2<f32> = u_xlat35;
          let x_1497 : vec4<f32> = u_xlat12;
          let x_1499 : vec3<f32> = (vec3<f32>(x_1495.x, x_1495.x, x_1495.x) * vec3<f32>(x_1497.x, x_1497.y, x_1497.z));
          let x_1500 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1499.x, x_1499.y, x_1499.z, x_1500.w);
          let x_1502 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(abs(vec3<f32>(x_1502.x, x_1502.y, x_1502.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1509 : f32 = u_xlat35.x;
          u_xlat35.x = max(x_1509, 0.000001f);
          let x_1514 : f32 = u_xlat35.x;
          u_xlat35.x = (1.0f / x_1514);
          let x_1518 : vec2<f32> = u_xlat35;
          let x_1520 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1518.x, x_1518.x, x_1518.x) * vec3<f32>(x_1520.z, x_1520.x, x_1520.y));
          let x_1524 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1524);
          let x_1528 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1528, 0.0f, 1.0f);
          let x_1532 : vec3<f32> = u_xlat13;
          let x_1535 : vec4<bool> = (vec4<f32>(x_1532.y, x_1532.z, x_1532.y, x_1532.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1535.x, x_1535.y);
          let x_1539 : bool = u_xlatb39.x;
          if (x_1539) {
            let x_1544 : f32 = u_xlat13.x;
            x_1540 = x_1544;
          } else {
            let x_1547 : f32 = u_xlat13.x;
            x_1540 = -(x_1547);
          }
          let x_1549 : f32 = x_1540;
          u_xlat39.x = x_1549;
          let x_1552 : bool = u_xlatb39.y;
          if (x_1552) {
            let x_1557 : f32 = u_xlat13.x;
            x_1553 = x_1557;
          } else {
            let x_1560 : f32 = u_xlat13.x;
            x_1553 = -(x_1560);
          }
          let x_1562 : f32 = x_1553;
          u_xlat39.y = x_1562;
          let x_1564 : vec4<f32> = u_xlat12;
          let x_1566 : vec2<f32> = u_xlat35;
          let x_1569 : vec2<f32> = u_xlat39;
          u_xlat35 = ((vec2<f32>(x_1564.x, x_1564.y) * vec2<f32>(x_1566.x, x_1566.x)) + x_1569);
          let x_1571 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1571 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1574 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1574, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1578 : u32 = u_xlatu44;
          let x_1581 : vec4<f32> = x_1238.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1578)];
          let x_1583 : vec2<f32> = u_xlat35;
          let x_1585 : u32 = u_xlatu44;
          let x_1588 : vec4<f32> = x_1238.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1585)];
          let x_1590 : vec2<f32> = ((vec2<f32>(x_1581.x, x_1581.y) * x_1583) + vec2<f32>(x_1588.z, x_1588.w));
          let x_1591 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1590.x, x_1590.y, x_1591.z, x_1591.w);
        }
      }
      let x_1598 : vec4<f32> = u_xlat11;
      let x_1601 : f32 = x_44.x_GlobalMipBias.x;
      let x_1602 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1598.x, x_1598.y), x_1601);
      u_xlat11 = x_1602;
      let x_1604 : bool = u_xlatb7.y;
      if (x_1604) {
        let x_1609 : f32 = u_xlat11.w;
        x_1605 = x_1609;
      } else {
        let x_1612 : f32 = u_xlat11.x;
        x_1605 = x_1612;
      }
      let x_1613 : f32 = x_1605;
      u_xlat35.x = x_1613;
      let x_1616 : bool = u_xlatb7.x;
      if (x_1616) {
        let x_1620 : vec4<f32> = u_xlat11;
        x_1617 = vec3<f32>(x_1620.x, x_1620.y, x_1620.z);
      } else {
        let x_1623 : vec2<f32> = u_xlat35;
        x_1617 = vec3<f32>(x_1623.x, x_1623.x, x_1623.x);
      }
      let x_1625 : vec3<f32> = x_1617;
      let x_1626 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1625.x, x_1625.y, x_1625.z, x_1626.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1632 : vec4<f32> = u_xlat11;
    let x_1634 : u32 = u_xlatu44;
    let x_1637 : vec4<f32> = x_1123.x_AdditionalLightsColor[bitcast<i32>(x_1634)];
    let x_1639 : vec3<f32> = (vec3<f32>(x_1632.x, x_1632.y, x_1632.z) * vec3<f32>(x_1637.x, x_1637.y, x_1637.z));
    let x_1640 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1639.x, x_1639.y, x_1639.z, x_1640.w);
    let x_1642 : f32 = u_xlat33;
    let x_1644 : vec4<f32> = u_xlat11;
    let x_1646 : vec3<f32> = (vec3<f32>(x_1642, x_1642, x_1642) * vec3<f32>(x_1644.x, x_1644.y, x_1644.z));
    let x_1647 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1646.x, x_1646.y, x_1646.z, x_1647.w);
    let x_1649 : vec4<f32> = u_xlat2;
    let x_1651 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_1649.x, x_1649.y, x_1649.z), x_1651);
    let x_1653 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1653, 0.0f, 1.0f);
    let x_1655 : f32 = u_xlat44;
    let x_1656 : f32 = u_xlat47;
    u_xlat44 = (x_1655 * x_1656);
    let x_1658 : f32 = u_xlat44;
    let x_1660 : vec4<f32> = u_xlat11;
    let x_1662 : vec3<f32> = (vec3<f32>(x_1658, x_1658, x_1658) * vec3<f32>(x_1660.x, x_1660.y, x_1660.z));
    let x_1663 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1662.x, x_1662.y, x_1662.z, x_1663.w);
    let x_1665 : vec3<f32> = u_xlat23;
    let x_1666 : f32 = u_xlat48;
    let x_1669 : vec3<f32> = u_xlat15;
    u_xlat23 = ((x_1665 * vec3<f32>(x_1666, x_1666, x_1666)) + x_1669);
    let x_1671 : vec3<f32> = u_xlat23;
    let x_1672 : vec3<f32> = u_xlat23;
    u_xlat44 = dot(x_1671, x_1672);
    let x_1674 : f32 = u_xlat44;
    u_xlat44 = max(x_1674, 1.17549435e-37f);
    let x_1676 : f32 = u_xlat44;
    u_xlat44 = inverseSqrt(x_1676);
    let x_1678 : f32 = u_xlat44;
    let x_1680 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1678, x_1678, x_1678) * x_1680);
    let x_1682 : vec4<f32> = u_xlat2;
    let x_1684 : vec3<f32> = u_xlat23;
    u_xlat44 = dot(vec3<f32>(x_1682.x, x_1682.y, x_1682.z), x_1684);
    let x_1686 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1686, 0.0f, 1.0f);
    let x_1688 : vec3<f32> = u_xlat10;
    let x_1689 : vec3<f32> = u_xlat23;
    u_xlat47 = dot(x_1688, x_1689);
    let x_1691 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1691, 0.0f, 1.0f);
    let x_1693 : f32 = u_xlat44;
    let x_1694 : f32 = u_xlat44;
    u_xlat44 = (x_1693 * x_1694);
    let x_1696 : f32 = u_xlat44;
    let x_1698 : f32 = u_xlat9.x;
    u_xlat44 = ((x_1696 * x_1698) + 1.000010014f);
    let x_1701 : f32 = u_xlat47;
    let x_1702 : f32 = u_xlat47;
    u_xlat47 = (x_1701 * x_1702);
    let x_1704 : f32 = u_xlat44;
    let x_1705 : f32 = u_xlat44;
    u_xlat44 = (x_1704 * x_1705);
    let x_1707 : f32 = u_xlat47;
    u_xlat47 = max(x_1707, 0.100000001f);
    let x_1709 : f32 = u_xlat44;
    let x_1710 : f32 = u_xlat47;
    u_xlat44 = (x_1709 * x_1710);
    let x_1712 : f32 = u_xlat46;
    let x_1713 : f32 = u_xlat44;
    u_xlat44 = (x_1712 * x_1713);
    let x_1715 : f32 = u_xlat19;
    let x_1716 : f32 = u_xlat44;
    u_xlat44 = (x_1715 / x_1716);
    let x_1718 : vec4<f32> = u_xlat0;
    let x_1720 : f32 = u_xlat44;
    let x_1723 : vec3<f32> = u_xlat6;
    u_xlat23 = ((vec3<f32>(x_1718.x, x_1718.y, x_1718.z) * vec3<f32>(x_1720, x_1720, x_1720)) + x_1723);
    let x_1725 : vec3<f32> = u_xlat23;
    let x_1726 : vec4<f32> = u_xlat11;
    let x_1729 : vec4<f32> = u_xlat8;
    let x_1731 : vec3<f32> = ((x_1725 * vec3<f32>(x_1726.x, x_1726.y, x_1726.z)) + vec3<f32>(x_1729.x, x_1729.y, x_1729.z));
    let x_1732 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1731.x, x_1731.y, x_1731.z, x_1732.w);

    continuing {
      let x_1734 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1734 + bitcast<u32>(1i));
    }
  }
  let x_1736 : vec4<f32> = u_xlat4;
  let x_1738 : vec4<f32> = u_xlat5;
  let x_1741 : vec4<f32> = u_xlat3;
  let x_1743 : vec3<f32> = ((vec3<f32>(x_1736.x, x_1736.y, x_1736.z) * vec3<f32>(x_1738.x, x_1738.x, x_1738.x)) + vec3<f32>(x_1741.x, x_1741.y, x_1741.z));
  let x_1744 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1743.x, x_1743.y, x_1743.z, x_1744.w);
  let x_1746 : vec4<f32> = u_xlat8;
  let x_1748 : vec4<f32> = u_xlat0;
  let x_1750 : vec3<f32> = (vec3<f32>(x_1746.x, x_1746.y, x_1746.z) + vec3<f32>(x_1748.x, x_1748.y, x_1748.z));
  let x_1751 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1750.x, x_1750.y, x_1750.z, x_1751.w);
  let x_1753 : f32 = u_xlat45;
  let x_1754 : f32 = u_xlat45;
  u_xlat42 = (x_1753 * -(x_1754));
  let x_1757 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1757);
  let x_1759 : vec4<f32> = u_xlat0;
  let x_1763 : vec4<f32> = x_44.unity_FogColor;
  let x_1766 : vec3<f32> = (vec3<f32>(x_1759.x, x_1759.y, x_1759.z) + -(vec3<f32>(x_1763.x, x_1763.y, x_1763.z)));
  let x_1767 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1766.x, x_1766.y, x_1766.z, x_1767.w);
  let x_1771 : f32 = u_xlat42;
  let x_1773 : vec4<f32> = u_xlat0;
  let x_1777 : vec4<f32> = x_44.unity_FogColor;
  let x_1779 : vec3<f32> = ((vec3<f32>(x_1771, x_1771, x_1771) * vec3<f32>(x_1773.x, x_1773.y, x_1773.z)) + vec3<f32>(x_1777.x, x_1777.y, x_1777.z));
  let x_1780 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1779.x, x_1779.y, x_1779.z, x_1780.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

