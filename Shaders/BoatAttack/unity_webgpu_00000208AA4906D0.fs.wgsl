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

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_147 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_372 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_960 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb12 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat12 : vec3<f32>;
  var x_118 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu3 : u32;
  var u_xlati3 : i32;
  var u_xlat14 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat35 : f32;
  var u_xlat37 : f32;
  var u_xlat16 : f32;
  var u_xlat33 : f32;
  var u_xlat27 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb14 : bool;
  var u_xlatb25 : bool;
  var x_607 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati38 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati35 : i32;
  var u_xlat38 : f32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat10 : vec3<f32>;
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
  u_xlatb12 = (x_70 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD7;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_82 : vec3<f32> = (-(x_76) + x_81);
  let x_83 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_86 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat23 = dot(vec3<f32>(x_86.x, x_86.y, x_86.z), vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_91);
  let x_93 : f32 = u_xlat23;
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
  let x_117 : bool = u_xlatb12;
  if (x_117) {
    let x_121 : vec4<f32> = u_xlat2;
    x_118 = vec3<f32>(x_121.x, x_121.y, x_121.z);
  } else {
    let x_124 : vec4<f32> = u_xlat3;
    x_118 = vec3<f32>(x_124.x, x_124.y, x_124.z);
  }
  let x_126 : vec3<f32> = x_118;
  u_xlat12 = x_126;
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
  u_xlat14 = (vec3<f32>(x_279.y, x_279.y, x_279.y) * vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : i32 = u_xlati3;
  let x_293 : i32 = u_xlati3;
  let x_296 : vec4<f32> = x_147.x_MainLightWorldToShadow[(x_291 / 4i)][(x_293 % 4i)];
  let x_298 : vec3<f32> = vs_TEXCOORD7;
  let x_301 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_298.x, x_298.x, x_298.x)) + x_301);
  let x_303 : i32 = u_xlati3;
  let x_306 : i32 = u_xlati3;
  let x_310 : vec4<f32> = x_147.x_MainLightWorldToShadow[((x_303 + 2i) / 4i)][((x_306 + 2i) % 4i)];
  let x_312 : vec3<f32> = vs_TEXCOORD7;
  let x_315 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_310.x, x_310.y, x_310.z) * vec3<f32>(x_312.z, x_312.z, x_312.z)) + x_315);
  let x_317 : vec3<f32> = u_xlat14;
  let x_318 : i32 = u_xlati3;
  let x_321 : i32 = u_xlati3;
  let x_325 : vec4<f32> = x_147.x_MainLightWorldToShadow[((x_318 + 3i) / 4i)][((x_321 + 3i) % 4i)];
  let x_327 : vec3<f32> = (x_317 + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_332 : f32 = vs_TEXCOORD7.y;
  let x_334 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat36 = (x_332 * x_334);
  let x_337 : f32 = x_44.unity_MatrixV[0i].z;
  let x_339 : f32 = vs_TEXCOORD7.x;
  let x_341 : f32 = u_xlat36;
  u_xlat36 = ((x_337 * x_339) + x_341);
  let x_344 : f32 = x_44.unity_MatrixV[2i].z;
  let x_346 : f32 = vs_TEXCOORD7.z;
  let x_348 : f32 = u_xlat36;
  u_xlat36 = ((x_344 * x_346) + x_348);
  let x_350 : f32 = u_xlat36;
  let x_352 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat36 = (x_350 + x_352);
  let x_354 : f32 = u_xlat36;
  let x_358 : f32 = x_44.x_ProjectionParams.y;
  u_xlat36 = (-(x_354) + -(x_358));
  let x_361 : f32 = u_xlat36;
  u_xlat36 = max(x_361, 0.0f);
  let x_363 : f32 = u_xlat36;
  let x_366 : f32 = x_44.unity_FogParams.x;
  u_xlat36 = (x_363 * x_366);
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
  u_xlat35 = (x_416 * x_418);
  let x_421 : f32 = u_xlat2.x;
  let x_423 : f32 = u_xlat2.x;
  let x_425 : f32 = u_xlat35;
  u_xlat35 = ((x_421 * x_423) + -(x_425));
  let x_430 : vec4<f32> = x_372.unity_SHC;
  let x_432 : f32 = u_xlat35;
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
  u_xlat35 = ((x_469 * x_472) + x_475);
  let x_477 : f32 = u_xlat35;
  u_xlat5.z = (-(x_477) + 1.0f);
  let x_481 : f32 = u_xlat1;
  u_xlat35 = ((-(x_481) * 0.959999979f) + 0.959999979f);
  let x_487 : f32 = u_xlat35;
  u_xlat37 = (-(x_487) + 1.0f);
  let x_490 : vec4<f32> = u_xlat0;
  let x_492 : f32 = u_xlat35;
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
  u_xlat35 = (x_516 * x_517);
  let x_519 : f32 = u_xlat35;
  u_xlat35 = max(x_519, 0.0078125f);
  let x_523 : f32 = u_xlat35;
  let x_524 : f32 = u_xlat35;
  u_xlat16 = (x_523 * x_524);
  let x_528 : f32 = u_xlat0.w;
  let x_529 : f32 = u_xlat37;
  u_xlat33 = (x_528 + x_529);
  let x_531 : f32 = u_xlat33;
  u_xlat33 = clamp(x_531, 0.0f, 1.0f);
  let x_533 : f32 = u_xlat35;
  u_xlat37 = ((x_533 * 4.0f) + 2.0f);
  let x_541 : vec4<f32> = u_xlat5;
  let x_544 : f32 = x_44.x_GlobalMipBias.x;
  let x_545 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_541.x, x_541.z), x_544);
  u_xlat5.x = x_545.x;
  let x_550 : f32 = u_xlat5.x;
  u_xlat27 = (x_550 + -1.0f);
  let x_553 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_554 : f32 = u_xlat27;
  u_xlat27 = ((x_553 * x_554) + 1.0f);
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
  u_xlat14.x = (-(x_582) + 1.0f);
  let x_587 : f32 = u_xlat3.x;
  let x_589 : f32 = x_147.x_MainLightShadowParams.x;
  let x_592 : f32 = u_xlat14.x;
  u_xlat3.x = ((x_587 * x_589) + x_592);
  let x_597 : f32 = u_xlat3.z;
  u_xlatb14 = (0.0f >= x_597);
  let x_601 : f32 = u_xlat3.z;
  u_xlatb25 = (x_601 >= 1.0f);
  let x_603 : bool = u_xlatb25;
  let x_604 : bool = u_xlatb14;
  u_xlatb14 = (x_603 | x_604);
  let x_606 : bool = u_xlatb14;
  if (x_606) {
    x_607 = 1.0f;
  } else {
    let x_612 : f32 = u_xlat3.x;
    x_607 = x_612;
  }
  let x_613 : f32 = x_607;
  u_xlat3.x = x_613;
  let x_616 : vec3<f32> = vs_TEXCOORD7;
  let x_618 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat7 = (x_616 + -(x_618));
  let x_621 : vec3<f32> = u_xlat7;
  let x_622 : vec3<f32> = u_xlat7;
  u_xlat14.x = dot(x_621, x_622);
  let x_626 : f32 = u_xlat14.x;
  let x_628 : f32 = x_147.x_MainLightShadowParams.z;
  let x_631 : f32 = x_147.x_MainLightShadowParams.w;
  u_xlat14.x = ((x_626 * x_628) + x_631);
  let x_635 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_635, 0.0f, 1.0f);
  let x_640 : f32 = u_xlat3.x;
  u_xlat25 = (-(x_640) + 1.0f);
  let x_644 : f32 = u_xlat14.x;
  let x_645 : f32 = u_xlat25;
  let x_648 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_644 * x_645) + x_648);
  let x_651 : f32 = u_xlat27;
  let x_654 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_651, x_651, x_651) * vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec3<f32> = u_xlat12;
  let x_659 : vec4<f32> = u_xlat2;
  u_xlat14.x = dot(-(x_657), vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_664 : f32 = u_xlat14.x;
  let x_666 : f32 = u_xlat14.x;
  u_xlat14.x = (x_664 + x_666);
  let x_670 : vec4<f32> = u_xlat2;
  let x_672 : vec3<f32> = u_xlat14;
  let x_676 : vec3<f32> = u_xlat12;
  let x_678 : vec3<f32> = ((vec3<f32>(x_670.x, x_670.y, x_670.z) * -(vec3<f32>(x_672.x, x_672.x, x_672.x))) + -(x_676));
  let x_679 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_681 : vec4<f32> = u_xlat2;
  let x_683 : vec3<f32> = u_xlat12;
  u_xlat14.x = dot(vec3<f32>(x_681.x, x_681.y, x_681.z), x_683);
  let x_687 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_687, 0.0f, 1.0f);
  let x_691 : f32 = u_xlat14.x;
  u_xlat14.x = (-(x_691) + 1.0f);
  let x_696 : f32 = u_xlat14.x;
  let x_698 : f32 = u_xlat14.x;
  u_xlat14.x = (x_696 * x_698);
  let x_702 : f32 = u_xlat14.x;
  let x_704 : f32 = u_xlat14.x;
  u_xlat14.x = (x_702 * x_704);
  let x_707 : f32 = u_xlat1;
  u_xlat25 = ((-(x_707) * 0.699999988f) + 1.700000048f);
  let x_713 : f32 = u_xlat1;
  let x_714 : f32 = u_xlat25;
  u_xlat1 = (x_713 * x_714);
  let x_716 : f32 = u_xlat1;
  u_xlat1 = (x_716 * 6.0f);
  let x_727 : vec4<f32> = u_xlat8;
  let x_729 : f32 = u_xlat1;
  let x_730 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_727.x, x_727.y, x_727.z), x_729);
  u_xlat8 = x_730;
  let x_732 : f32 = u_xlat8.w;
  u_xlat1 = (x_732 + -1.0f);
  let x_735 : f32 = x_372.unity_SpecCube0_HDR.w;
  let x_736 : f32 = u_xlat1;
  u_xlat1 = ((x_735 * x_736) + 1.0f);
  let x_739 : f32 = u_xlat1;
  u_xlat1 = max(x_739, 0.0f);
  let x_741 : f32 = u_xlat1;
  u_xlat1 = log2(x_741);
  let x_743 : f32 = u_xlat1;
  let x_745 : f32 = x_372.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_743 * x_745);
  let x_747 : f32 = u_xlat1;
  u_xlat1 = exp2(x_747);
  let x_749 : f32 = u_xlat1;
  let x_751 : f32 = x_372.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_749 * x_751);
  let x_753 : vec4<f32> = u_xlat8;
  let x_755 : f32 = u_xlat1;
  let x_757 : vec3<f32> = (vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(x_755, x_755, x_755));
  let x_758 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_762 : f32 = u_xlat35;
  let x_764 : f32 = u_xlat35;
  u_xlat9 = ((vec2<f32>(x_762, x_762) * vec2<f32>(x_764, x_764)) + vec2<f32>(-1.0f, 1.0f));
  let x_770 : f32 = u_xlat9.y;
  u_xlat1 = (1.0f / x_770);
  let x_773 : vec4<f32> = u_xlat0;
  let x_776 : f32 = u_xlat33;
  u_xlat20 = (-(vec3<f32>(x_773.x, x_773.y, x_773.z)) + vec3<f32>(x_776, x_776, x_776));
  let x_779 : vec3<f32> = u_xlat14;
  let x_781 : vec3<f32> = u_xlat20;
  let x_783 : vec4<f32> = u_xlat0;
  u_xlat20 = ((vec3<f32>(x_779.x, x_779.x, x_779.x) * x_781) + vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : f32 = u_xlat1;
  let x_788 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_786, x_786, x_786) * x_788);
  let x_790 : vec4<f32> = u_xlat8;
  let x_792 : vec3<f32> = u_xlat20;
  let x_793 : vec3<f32> = (vec3<f32>(x_790.x, x_790.y, x_790.z) * x_792);
  let x_794 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec4<f32> = u_xlat4;
  let x_798 : vec3<f32> = u_xlat6;
  let x_800 : vec4<f32> = u_xlat8;
  let x_802 : vec3<f32> = ((vec3<f32>(x_796.x, x_796.y, x_796.z) * x_798) + vec3<f32>(x_800.x, x_800.y, x_800.z));
  let x_803 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_806 : f32 = u_xlat3.x;
  let x_808 : f32 = x_372.unity_LightData.z;
  u_xlat33 = (x_806 * x_808);
  let x_810 : vec4<f32> = u_xlat2;
  let x_813 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(vec3<f32>(x_810.x, x_810.y, x_810.z), vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_816 : f32 = u_xlat1;
  u_xlat1 = clamp(x_816, 0.0f, 1.0f);
  let x_818 : f32 = u_xlat33;
  let x_819 : f32 = u_xlat1;
  u_xlat33 = (x_818 * x_819);
  let x_821 : f32 = u_xlat33;
  let x_823 : vec3<f32> = u_xlat7;
  let x_824 : vec3<f32> = (vec3<f32>(x_821, x_821, x_821) * x_823);
  let x_825 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_827 : vec3<f32> = u_xlat12;
  let x_829 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_827 + vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec3<f32> = u_xlat7;
  let x_833 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_832, x_833);
  let x_835 : f32 = u_xlat33;
  u_xlat33 = max(x_835, 1.17549435e-37f);
  let x_838 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_838);
  let x_840 : f32 = u_xlat33;
  let x_842 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_840, x_840, x_840) * x_842);
  let x_844 : vec4<f32> = u_xlat2;
  let x_846 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_844.x, x_844.y, x_844.z), x_846);
  let x_848 : f32 = u_xlat33;
  u_xlat33 = clamp(x_848, 0.0f, 1.0f);
  let x_851 : vec4<f32> = x_44.x_MainLightPosition;
  let x_853 : vec3<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_851.x, x_851.y, x_851.z), x_853);
  let x_855 : f32 = u_xlat1;
  u_xlat1 = clamp(x_855, 0.0f, 1.0f);
  let x_857 : f32 = u_xlat33;
  let x_858 : f32 = u_xlat33;
  u_xlat33 = (x_857 * x_858);
  let x_860 : f32 = u_xlat33;
  let x_862 : f32 = u_xlat9.x;
  u_xlat33 = ((x_860 * x_862) + 1.000010014f);
  let x_866 : f32 = u_xlat1;
  let x_867 : f32 = u_xlat1;
  u_xlat1 = (x_866 * x_867);
  let x_869 : f32 = u_xlat33;
  let x_870 : f32 = u_xlat33;
  u_xlat33 = (x_869 * x_870);
  let x_872 : f32 = u_xlat1;
  u_xlat1 = max(x_872, 0.100000001f);
  let x_875 : f32 = u_xlat33;
  let x_876 : f32 = u_xlat1;
  u_xlat33 = (x_875 * x_876);
  let x_878 : f32 = u_xlat37;
  let x_879 : f32 = u_xlat33;
  u_xlat33 = (x_878 * x_879);
  let x_881 : f32 = u_xlat16;
  let x_882 : f32 = u_xlat33;
  u_xlat33 = (x_881 / x_882);
  let x_884 : vec4<f32> = u_xlat0;
  let x_886 : f32 = u_xlat33;
  let x_889 : vec3<f32> = u_xlat6;
  u_xlat7 = ((vec3<f32>(x_884.x, x_884.y, x_884.z) * vec3<f32>(x_886, x_886, x_886)) + x_889);
  let x_891 : vec4<f32> = u_xlat3;
  let x_893 : vec3<f32> = u_xlat7;
  let x_894 : vec3<f32> = (vec3<f32>(x_891.x, x_891.y, x_891.z) * x_893);
  let x_895 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_898 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_900 : f32 = x_372.unity_LightData.y;
  u_xlat33 = min(x_898, x_900);
  let x_903 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_903));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_915 : u32 = u_xlatu_loop_1;
    let x_916 : u32 = u_xlatu33;
    if ((x_915 < x_916)) {
    } else {
      break;
    }
    let x_919 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_919 >> 2u);
    let x_922 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_922 & 3u));
    let x_925 : u32 = u_xlatu35;
    let x_928 : vec4<f32> = x_372.unity_LightIndices[bitcast<i32>(x_925)];
    let x_938 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_943 : vec4<u32> = indexable[x_938];
    u_xlat35 = dot(x_928, bitcast<vec4<f32>>(x_943));
    let x_947 : f32 = u_xlat35;
    u_xlati35 = i32(x_947);
    let x_949 : vec3<f32> = vs_TEXCOORD7;
    let x_961 : i32 = u_xlati35;
    let x_963 : vec4<f32> = x_960.x_AdditionalLightsPosition[x_961];
    let x_966 : i32 = u_xlati35;
    let x_968 : vec4<f32> = x_960.x_AdditionalLightsPosition[x_966];
    let x_970 : vec3<f32> = ((-(x_949) * vec3<f32>(x_963.w, x_963.w, x_963.w)) + vec3<f32>(x_968.x, x_968.y, x_968.z));
    let x_971 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
    let x_974 : vec4<f32> = u_xlat8;
    let x_976 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_974.x, x_974.y, x_974.z), vec3<f32>(x_976.x, x_976.y, x_976.z));
    let x_979 : f32 = u_xlat38;
    u_xlat38 = max(x_979, 6.10351562e-05f);
    let x_983 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_983);
    let x_985 : f32 = u_xlat39;
    let x_987 : vec4<f32> = u_xlat8;
    u_xlat20 = (vec3<f32>(x_985, x_985, x_985) * vec3<f32>(x_987.x, x_987.y, x_987.z));
    let x_991 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_991);
    let x_993 : f32 = u_xlat38;
    let x_994 : i32 = u_xlati35;
    let x_996 : f32 = x_960.x_AdditionalLightsAttenuation[x_994].x;
    u_xlat38 = (x_993 * x_996);
    let x_998 : f32 = u_xlat38;
    let x_1000 : f32 = u_xlat38;
    u_xlat38 = ((-(x_998) * x_1000) + 1.0f);
    let x_1003 : f32 = u_xlat38;
    u_xlat38 = max(x_1003, 0.0f);
    let x_1005 : f32 = u_xlat38;
    let x_1006 : f32 = u_xlat38;
    u_xlat38 = (x_1005 * x_1006);
    let x_1008 : f32 = u_xlat38;
    let x_1009 : f32 = u_xlat40;
    u_xlat38 = (x_1008 * x_1009);
    let x_1011 : i32 = u_xlati35;
    let x_1013 : vec4<f32> = x_960.x_AdditionalLightsSpotDir[x_1011];
    let x_1015 : vec3<f32> = u_xlat20;
    u_xlat40 = dot(vec3<f32>(x_1013.x, x_1013.y, x_1013.z), x_1015);
    let x_1017 : f32 = u_xlat40;
    let x_1018 : i32 = u_xlati35;
    let x_1020 : f32 = x_960.x_AdditionalLightsAttenuation[x_1018].z;
    let x_1022 : i32 = u_xlati35;
    let x_1024 : f32 = x_960.x_AdditionalLightsAttenuation[x_1022].w;
    u_xlat40 = ((x_1017 * x_1020) + x_1024);
    let x_1026 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1026, 0.0f, 1.0f);
    let x_1028 : f32 = u_xlat40;
    let x_1029 : f32 = u_xlat40;
    u_xlat40 = (x_1028 * x_1029);
    let x_1031 : f32 = u_xlat38;
    let x_1032 : f32 = u_xlat40;
    u_xlat38 = (x_1031 * x_1032);
    let x_1035 : f32 = u_xlat27;
    let x_1037 : i32 = u_xlati35;
    let x_1039 : vec4<f32> = x_960.x_AdditionalLightsColor[x_1037];
    u_xlat10 = (vec3<f32>(x_1035, x_1035, x_1035) * vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
    let x_1042 : vec4<f32> = u_xlat2;
    let x_1044 : vec3<f32> = u_xlat20;
    u_xlat35 = dot(vec3<f32>(x_1042.x, x_1042.y, x_1042.z), x_1044);
    let x_1046 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1046, 0.0f, 1.0f);
    let x_1048 : f32 = u_xlat35;
    let x_1049 : f32 = u_xlat38;
    u_xlat35 = (x_1048 * x_1049);
    let x_1051 : f32 = u_xlat35;
    let x_1053 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1051, x_1051, x_1051) * x_1053);
    let x_1055 : vec4<f32> = u_xlat8;
    let x_1057 : f32 = u_xlat39;
    let x_1060 : vec3<f32> = u_xlat12;
    let x_1061 : vec3<f32> = ((vec3<f32>(x_1055.x, x_1055.y, x_1055.z) * vec3<f32>(x_1057, x_1057, x_1057)) + x_1060);
    let x_1062 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
    let x_1064 : vec4<f32> = u_xlat8;
    let x_1066 : vec4<f32> = u_xlat8;
    u_xlat35 = dot(vec3<f32>(x_1064.x, x_1064.y, x_1064.z), vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
    let x_1069 : f32 = u_xlat35;
    u_xlat35 = max(x_1069, 1.17549435e-37f);
    let x_1071 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_1071);
    let x_1073 : f32 = u_xlat35;
    let x_1075 : vec4<f32> = u_xlat8;
    let x_1077 : vec3<f32> = (vec3<f32>(x_1073, x_1073, x_1073) * vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
    let x_1078 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
    let x_1080 : vec4<f32> = u_xlat2;
    let x_1082 : vec4<f32> = u_xlat8;
    u_xlat35 = dot(vec3<f32>(x_1080.x, x_1080.y, x_1080.z), vec3<f32>(x_1082.x, x_1082.y, x_1082.z));
    let x_1085 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1085, 0.0f, 1.0f);
    let x_1087 : vec3<f32> = u_xlat20;
    let x_1088 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_1087, vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
    let x_1091 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1091, 0.0f, 1.0f);
    let x_1093 : f32 = u_xlat35;
    let x_1094 : f32 = u_xlat35;
    u_xlat35 = (x_1093 * x_1094);
    let x_1096 : f32 = u_xlat35;
    let x_1098 : f32 = u_xlat9.x;
    u_xlat35 = ((x_1096 * x_1098) + 1.000010014f);
    let x_1101 : f32 = u_xlat38;
    let x_1102 : f32 = u_xlat38;
    u_xlat38 = (x_1101 * x_1102);
    let x_1104 : f32 = u_xlat35;
    let x_1105 : f32 = u_xlat35;
    u_xlat35 = (x_1104 * x_1105);
    let x_1107 : f32 = u_xlat38;
    u_xlat38 = max(x_1107, 0.100000001f);
    let x_1109 : f32 = u_xlat35;
    let x_1110 : f32 = u_xlat38;
    u_xlat35 = (x_1109 * x_1110);
    let x_1112 : f32 = u_xlat37;
    let x_1113 : f32 = u_xlat35;
    u_xlat35 = (x_1112 * x_1113);
    let x_1115 : f32 = u_xlat16;
    let x_1116 : f32 = u_xlat35;
    u_xlat35 = (x_1115 / x_1116);
    let x_1118 : vec4<f32> = u_xlat0;
    let x_1120 : f32 = u_xlat35;
    let x_1123 : vec3<f32> = u_xlat6;
    let x_1124 : vec3<f32> = ((vec3<f32>(x_1118.x, x_1118.y, x_1118.z) * vec3<f32>(x_1120, x_1120, x_1120)) + x_1123);
    let x_1125 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1125.w);
    let x_1127 : vec4<f32> = u_xlat8;
    let x_1129 : vec3<f32> = u_xlat10;
    let x_1131 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1127.x, x_1127.y, x_1127.z) * x_1129) + x_1131);

    continuing {
      let x_1133 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1133 + bitcast<u32>(1i));
    }
  }
  let x_1135 : vec4<f32> = u_xlat4;
  let x_1137 : vec4<f32> = u_xlat5;
  let x_1140 : vec4<f32> = u_xlat3;
  let x_1142 : vec3<f32> = ((vec3<f32>(x_1135.x, x_1135.y, x_1135.z) * vec3<f32>(x_1137.x, x_1137.x, x_1137.x)) + vec3<f32>(x_1140.x, x_1140.y, x_1140.z));
  let x_1143 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1143.w);
  let x_1145 : vec3<f32> = u_xlat7;
  let x_1146 : vec4<f32> = u_xlat0;
  let x_1148 : vec3<f32> = (x_1145 + vec3<f32>(x_1146.x, x_1146.y, x_1146.z));
  let x_1149 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);
  let x_1151 : f32 = u_xlat36;
  let x_1152 : f32 = u_xlat36;
  u_xlat33 = (x_1151 * -(x_1152));
  let x_1155 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1155);
  let x_1157 : vec4<f32> = u_xlat0;
  let x_1161 : vec4<f32> = x_44.unity_FogColor;
  let x_1164 : vec3<f32> = (vec3<f32>(x_1157.x, x_1157.y, x_1157.z) + -(vec3<f32>(x_1161.x, x_1161.y, x_1161.z)));
  let x_1165 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
  let x_1169 : f32 = u_xlat33;
  let x_1171 : vec4<f32> = u_xlat0;
  let x_1175 : vec4<f32> = x_44.unity_FogColor;
  let x_1177 : vec3<f32> = ((vec3<f32>(x_1169, x_1169, x_1169) * vec3<f32>(x_1171.x, x_1171.y, x_1171.z)) + vec3<f32>(x_1175.x, x_1175.y, x_1175.z));
  let x_1178 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
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

