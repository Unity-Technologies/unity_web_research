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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_352 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_475 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_709 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb12 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec3<f32>;
  var x_103 : f32;
  var x_117 : f32;
  var x_129 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat33 : f32;
  var u_xlat26 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlatb38 : bool;
  var u_xlatb6 : bool;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat39 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati37 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati35 : i32;
  var u_xlat9 : vec3<f32>;
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
  let x_102 : bool = u_xlatb12;
  if (x_102) {
    let x_107 : f32 = u_xlat2.x;
    x_103 = x_107;
  } else {
    let x_113 : f32 = x_44.unity_MatrixV[0i].z;
    x_103 = x_113;
  }
  let x_114 : f32 = x_103;
  u_xlat3.x = x_114;
  let x_116 : bool = u_xlatb12;
  if (x_116) {
    let x_122 : f32 = u_xlat2.y;
    x_117 = x_122;
  } else {
    let x_125 : f32 = x_44.unity_MatrixV[1i].z;
    x_117 = x_125;
  }
  let x_126 : f32 = x_117;
  u_xlat3.y = x_126;
  let x_128 : bool = u_xlatb12;
  if (x_128) {
    let x_133 : f32 = u_xlat2.z;
    x_129 = x_133;
  } else {
    let x_137 : f32 = x_44.unity_MatrixV[2i].z;
    x_129 = x_137;
  }
  let x_138 : f32 = x_129;
  u_xlat3.z = x_138;
  let x_142 : vec3<f32> = vs_TEXCOORD3;
  let x_143 : vec3<f32> = vs_TEXCOORD3;
  u_xlat12.x = dot(x_142, x_143);
  let x_147 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_147);
  let x_150 : vec3<f32> = u_xlat12;
  let x_152 : vec3<f32> = vs_TEXCOORD3;
  u_xlat12 = (vec3<f32>(x_150.x, x_150.x, x_150.x) * x_152);
  let x_159 : vec4<f32> = vs_TEXCOORD0;
  let x_162 : f32 = x_44.x_GlobalMipBias.x;
  let x_163 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_159.z, x_159.w), x_162);
  u_xlat2 = x_163;
  let x_169 : vec4<f32> = vs_TEXCOORD0;
  let x_172 : f32 = x_44.x_GlobalMipBias.x;
  let x_173 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_169.z, x_169.w), x_172);
  u_xlat4 = vec3<f32>(x_173.x, x_173.y, x_173.z);
  let x_175 : vec4<f32> = u_xlat2;
  let x_179 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_182 : vec3<f32> = u_xlat12;
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_182, vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_188 : f32 = u_xlat2.x;
  u_xlat2.x = (x_188 + 0.5f);
  let x_192 : vec4<f32> = u_xlat2;
  let x_194 : vec3<f32> = u_xlat4;
  let x_195 : vec3<f32> = (vec3<f32>(x_192.x, x_192.x, x_192.x) * x_194);
  let x_196 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_200 : f32 = u_xlat2.w;
  u_xlat35 = max(x_200, 0.0001f);
  let x_203 : vec4<f32> = u_xlat2;
  let x_205 : f32 = u_xlat35;
  let x_207 : vec3<f32> = (vec3<f32>(x_203.x, x_203.y, x_203.z) / vec3<f32>(x_205, x_205, x_205));
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_213 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_214 : vec2<f32> = vec2<f32>(x_213.x, x_213.y);
  let x_218 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_214.x, x_214.y));
  let x_219 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_218.x, x_218.y, x_219.z);
  let x_221 : vec3<f32> = u_xlat4;
  let x_223 : vec4<f32> = hlslcc_FragCoord;
  let x_225 : vec2<f32> = (vec2<f32>(x_221.x, x_221.y) * vec2<f32>(x_223.x, x_223.y));
  let x_226 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_225.x, x_225.y, x_226.z);
  let x_229 : f32 = u_xlat4.y;
  let x_232 : f32 = x_44.x_ScaleBiasRt.x;
  let x_235 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat35 = ((x_229 * x_232) + x_235);
  let x_237 : f32 = u_xlat35;
  u_xlat4.z = (-(x_237) + 1.0f);
  let x_241 : f32 = u_xlat1;
  u_xlat35 = ((-(x_241) * 0.959999979f) + 0.959999979f);
  let x_247 : f32 = u_xlat35;
  u_xlat36 = (-(x_247) + 1.0f);
  let x_251 : vec4<f32> = u_xlat0;
  let x_253 : f32 = u_xlat35;
  u_xlat5 = (vec3<f32>(x_251.x, x_251.y, x_251.z) * vec3<f32>(x_253, x_253, x_253));
  let x_256 : vec4<f32> = u_xlat0;
  let x_260 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_261 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : f32 = u_xlat1;
  let x_265 : vec4<f32> = u_xlat0;
  let x_270 : vec3<f32> = ((vec3<f32>(x_263, x_263, x_263) * vec3<f32>(x_265.x, x_265.y, x_265.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_274 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_274) + 1.0f);
  let x_277 : f32 = u_xlat1;
  let x_278 : f32 = u_xlat1;
  u_xlat35 = (x_277 * x_278);
  let x_280 : f32 = u_xlat35;
  u_xlat35 = max(x_280, 0.0078125f);
  let x_284 : f32 = u_xlat35;
  let x_285 : f32 = u_xlat35;
  u_xlat15 = (x_284 * x_285);
  let x_289 : f32 = u_xlat0.w;
  let x_290 : f32 = u_xlat36;
  u_xlat33 = (x_289 + x_290);
  let x_292 : f32 = u_xlat33;
  u_xlat33 = clamp(x_292, 0.0f, 1.0f);
  let x_294 : f32 = u_xlat35;
  u_xlat36 = ((x_294 * 4.0f) + 2.0f);
  let x_304 : vec3<f32> = u_xlat4;
  let x_307 : f32 = x_44.x_GlobalMipBias.x;
  let x_308 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_304.x, x_304.z), x_307);
  u_xlat4.x = x_308.x;
  let x_313 : f32 = u_xlat4.x;
  u_xlat26 = (x_313 + -1.0f);
  let x_318 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_319 : f32 = u_xlat26;
  u_xlat26 = ((x_318 * x_319) + 1.0f);
  let x_323 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_323, 1.0f);
  let x_328 : vec4<f32> = vs_TEXCOORD8;
  let x_329 : vec2<f32> = vec2<f32>(x_328.x, x_328.y);
  let x_331 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_329.x, x_329.y, x_331);
  let x_344 : vec3<f32> = txVec0;
  let x_346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_344.xy, x_344.z);
  u_xlat37 = x_346;
  let x_354 : f32 = x_352.x_MainLightShadowParams.x;
  u_xlat38 = (-(x_354) + 1.0f);
  let x_357 : f32 = u_xlat37;
  let x_359 : f32 = x_352.x_MainLightShadowParams.x;
  let x_361 : f32 = u_xlat38;
  u_xlat37 = ((x_357 * x_359) + x_361);
  let x_365 : f32 = vs_TEXCOORD8.z;
  u_xlatb38 = (0.0f >= x_365);
  let x_369 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_369 >= 1.0f);
  let x_371 : bool = u_xlatb38;
  let x_372 : bool = u_xlatb6;
  u_xlatb38 = (x_371 | x_372);
  let x_374 : bool = u_xlatb38;
  let x_375 : f32 = u_xlat37;
  u_xlat37 = select(x_375, 1.0f, x_374);
  let x_378 : vec3<f32> = vs_TEXCOORD7;
  let x_380 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat6 = (x_378 + -(x_380));
  let x_383 : vec3<f32> = u_xlat6;
  let x_384 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(x_383, x_384);
  let x_386 : f32 = u_xlat38;
  let x_388 : f32 = x_352.x_MainLightShadowParams.z;
  let x_391 : f32 = x_352.x_MainLightShadowParams.w;
  u_xlat38 = ((x_386 * x_388) + x_391);
  let x_393 : f32 = u_xlat38;
  u_xlat38 = clamp(x_393, 0.0f, 1.0f);
  let x_395 : f32 = u_xlat37;
  u_xlat6.x = (-(x_395) + 1.0f);
  let x_399 : f32 = u_xlat38;
  let x_401 : f32 = u_xlat6.x;
  let x_403 : f32 = u_xlat37;
  u_xlat37 = ((x_399 * x_401) + x_403);
  let x_405 : f32 = u_xlat26;
  let x_409 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_405, x_405, x_405) * vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec3<f32> = u_xlat3;
  let x_414 : vec3<f32> = u_xlat12;
  u_xlat38 = dot(-(x_412), x_414);
  let x_416 : f32 = u_xlat38;
  let x_417 : f32 = u_xlat38;
  u_xlat38 = (x_416 + x_417);
  let x_420 : vec3<f32> = u_xlat12;
  let x_421 : f32 = u_xlat38;
  let x_425 : vec3<f32> = u_xlat3;
  let x_427 : vec3<f32> = ((x_420 * -(vec3<f32>(x_421, x_421, x_421))) + -(x_425));
  let x_428 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec3<f32> = u_xlat12;
  let x_431 : vec3<f32> = u_xlat3;
  u_xlat38 = dot(x_430, x_431);
  let x_433 : f32 = u_xlat38;
  u_xlat38 = clamp(x_433, 0.0f, 1.0f);
  let x_435 : f32 = u_xlat38;
  u_xlat38 = (-(x_435) + 1.0f);
  let x_438 : f32 = u_xlat38;
  let x_439 : f32 = u_xlat38;
  u_xlat38 = (x_438 * x_439);
  let x_441 : f32 = u_xlat38;
  let x_442 : f32 = u_xlat38;
  u_xlat38 = (x_441 * x_442);
  let x_445 : f32 = u_xlat1;
  u_xlat39 = ((-(x_445) * 0.699999988f) + 1.700000048f);
  let x_451 : f32 = u_xlat1;
  let x_452 : f32 = u_xlat39;
  u_xlat1 = (x_451 * x_452);
  let x_454 : f32 = u_xlat1;
  u_xlat1 = (x_454 * 6.0f);
  let x_465 : vec4<f32> = u_xlat7;
  let x_467 : f32 = u_xlat1;
  let x_468 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_465.x, x_465.y, x_465.z), x_467);
  u_xlat7 = x_468;
  let x_470 : f32 = u_xlat7.w;
  u_xlat1 = (x_470 + -1.0f);
  let x_477 : f32 = x_475.unity_SpecCube0_HDR.w;
  let x_478 : f32 = u_xlat1;
  u_xlat1 = ((x_477 * x_478) + 1.0f);
  let x_481 : f32 = u_xlat1;
  u_xlat1 = max(x_481, 0.0f);
  let x_483 : f32 = u_xlat1;
  u_xlat1 = log2(x_483);
  let x_485 : f32 = u_xlat1;
  let x_487 : f32 = x_475.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_485 * x_487);
  let x_489 : f32 = u_xlat1;
  u_xlat1 = exp2(x_489);
  let x_491 : f32 = u_xlat1;
  let x_493 : f32 = x_475.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_491 * x_493);
  let x_495 : vec4<f32> = u_xlat7;
  let x_497 : f32 = u_xlat1;
  let x_499 : vec3<f32> = (vec3<f32>(x_495.x, x_495.y, x_495.z) * vec3<f32>(x_497, x_497, x_497));
  let x_500 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_504 : f32 = u_xlat35;
  let x_506 : f32 = u_xlat35;
  u_xlat8 = ((vec2<f32>(x_504, x_504) * vec2<f32>(x_506, x_506)) + vec2<f32>(-1.0f, 1.0f));
  let x_512 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_512);
  let x_515 : vec4<f32> = u_xlat0;
  let x_518 : f32 = u_xlat33;
  u_xlat19 = (-(vec3<f32>(x_515.x, x_515.y, x_515.z)) + vec3<f32>(x_518, x_518, x_518));
  let x_521 : f32 = u_xlat38;
  let x_523 : vec3<f32> = u_xlat19;
  let x_525 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_521, x_521, x_521) * x_523) + vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_528 : f32 = u_xlat1;
  let x_530 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_528, x_528, x_528) * x_530);
  let x_532 : vec4<f32> = u_xlat7;
  let x_534 : vec3<f32> = u_xlat19;
  let x_535 : vec3<f32> = (vec3<f32>(x_532.x, x_532.y, x_532.z) * x_534);
  let x_536 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat2;
  let x_540 : vec3<f32> = u_xlat5;
  let x_542 : vec4<f32> = u_xlat7;
  let x_544 : vec3<f32> = ((vec3<f32>(x_538.x, x_538.y, x_538.z) * x_540) + vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : f32 = u_xlat37;
  let x_550 : f32 = x_475.unity_LightData.z;
  u_xlat33 = (x_547 * x_550);
  let x_552 : vec3<f32> = u_xlat12;
  let x_554 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_552, vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_557 : f32 = u_xlat1;
  u_xlat1 = clamp(x_557, 0.0f, 1.0f);
  let x_559 : f32 = u_xlat33;
  let x_560 : f32 = u_xlat1;
  u_xlat33 = (x_559 * x_560);
  let x_562 : f32 = u_xlat33;
  let x_564 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_562, x_562, x_562) * x_564);
  let x_566 : vec3<f32> = u_xlat3;
  let x_568 : vec4<f32> = x_44.x_MainLightPosition;
  let x_570 : vec3<f32> = (x_566 + vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat7;
  let x_575 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_573.x, x_573.y, x_573.z), vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_578 : f32 = u_xlat33;
  u_xlat33 = max(x_578, 1.17549435e-37f);
  let x_581 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_581);
  let x_583 : f32 = u_xlat33;
  let x_585 : vec4<f32> = u_xlat7;
  let x_587 : vec3<f32> = (vec3<f32>(x_583, x_583, x_583) * vec3<f32>(x_585.x, x_585.y, x_585.z));
  let x_588 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  let x_590 : vec3<f32> = u_xlat12;
  let x_591 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(x_590, vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : f32 = u_xlat33;
  u_xlat33 = clamp(x_594, 0.0f, 1.0f);
  let x_597 : vec4<f32> = x_44.x_MainLightPosition;
  let x_599 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_597.x, x_597.y, x_597.z), vec3<f32>(x_599.x, x_599.y, x_599.z));
  let x_602 : f32 = u_xlat1;
  u_xlat1 = clamp(x_602, 0.0f, 1.0f);
  let x_604 : f32 = u_xlat33;
  let x_605 : f32 = u_xlat33;
  u_xlat33 = (x_604 * x_605);
  let x_607 : f32 = u_xlat33;
  let x_609 : f32 = u_xlat8.x;
  u_xlat33 = ((x_607 * x_609) + 1.000010014f);
  let x_613 : f32 = u_xlat1;
  let x_614 : f32 = u_xlat1;
  u_xlat1 = (x_613 * x_614);
  let x_616 : f32 = u_xlat33;
  let x_617 : f32 = u_xlat33;
  u_xlat33 = (x_616 * x_617);
  let x_619 : f32 = u_xlat1;
  u_xlat1 = max(x_619, 0.100000001f);
  let x_622 : f32 = u_xlat33;
  let x_623 : f32 = u_xlat1;
  u_xlat33 = (x_622 * x_623);
  let x_625 : f32 = u_xlat36;
  let x_626 : f32 = u_xlat33;
  u_xlat33 = (x_625 * x_626);
  let x_628 : f32 = u_xlat15;
  let x_629 : f32 = u_xlat33;
  u_xlat33 = (x_628 / x_629);
  let x_631 : vec4<f32> = u_xlat0;
  let x_633 : f32 = u_xlat33;
  let x_636 : vec3<f32> = u_xlat5;
  let x_637 : vec3<f32> = ((vec3<f32>(x_631.x, x_631.y, x_631.z) * vec3<f32>(x_633, x_633, x_633)) + x_636);
  let x_638 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_640 : vec3<f32> = u_xlat6;
  let x_641 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_640 * vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_645 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_647 : f32 = x_475.unity_LightData.y;
  u_xlat33 = min(x_645, x_647);
  let x_651 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_651));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_663 : u32 = u_xlatu_loop_1;
    let x_664 : u32 = u_xlatu33;
    if ((x_663 < x_664)) {
    } else {
      break;
    }
    let x_667 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_667 >> 2u);
    let x_671 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_671 & 3u));
    let x_674 : u32 = u_xlatu35;
    let x_677 : vec4<f32> = x_475.unity_LightIndices[bitcast<i32>(x_674)];
    let x_687 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_692 : vec4<u32> = indexable[x_687];
    u_xlat35 = dot(x_677, bitcast<vec4<f32>>(x_692));
    let x_696 : f32 = u_xlat35;
    u_xlati35 = i32(x_696);
    let x_698 : vec3<f32> = vs_TEXCOORD7;
    let x_710 : i32 = u_xlati35;
    let x_712 : vec4<f32> = x_709.x_AdditionalLightsPosition[x_710];
    let x_715 : i32 = u_xlati35;
    let x_717 : vec4<f32> = x_709.x_AdditionalLightsPosition[x_715];
    u_xlat19 = ((-(x_698) * vec3<f32>(x_712.w, x_712.w, x_712.w)) + vec3<f32>(x_717.x, x_717.y, x_717.z));
    let x_720 : vec3<f32> = u_xlat19;
    let x_721 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_720, x_721);
    let x_723 : f32 = u_xlat37;
    u_xlat37 = max(x_723, 6.10351562e-05f);
    let x_726 : f32 = u_xlat37;
    u_xlat38 = inverseSqrt(x_726);
    let x_729 : f32 = u_xlat38;
    let x_731 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_729, x_729, x_729) * x_731);
    let x_733 : f32 = u_xlat37;
    u_xlat39 = (1.0f / x_733);
    let x_735 : f32 = u_xlat37;
    let x_736 : i32 = u_xlati35;
    let x_738 : f32 = x_709.x_AdditionalLightsAttenuation[x_736].x;
    u_xlat37 = (x_735 * x_738);
    let x_740 : f32 = u_xlat37;
    let x_742 : f32 = u_xlat37;
    u_xlat37 = ((-(x_740) * x_742) + 1.0f);
    let x_745 : f32 = u_xlat37;
    u_xlat37 = max(x_745, 0.0f);
    let x_747 : f32 = u_xlat37;
    let x_748 : f32 = u_xlat37;
    u_xlat37 = (x_747 * x_748);
    let x_750 : f32 = u_xlat37;
    let x_751 : f32 = u_xlat39;
    u_xlat37 = (x_750 * x_751);
    let x_753 : i32 = u_xlati35;
    let x_755 : vec4<f32> = x_709.x_AdditionalLightsSpotDir[x_753];
    let x_757 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_755.x, x_755.y, x_755.z), x_757);
    let x_759 : f32 = u_xlat39;
    let x_760 : i32 = u_xlati35;
    let x_762 : f32 = x_709.x_AdditionalLightsAttenuation[x_760].z;
    let x_764 : i32 = u_xlati35;
    let x_766 : f32 = x_709.x_AdditionalLightsAttenuation[x_764].w;
    u_xlat39 = ((x_759 * x_762) + x_766);
    let x_768 : f32 = u_xlat39;
    u_xlat39 = clamp(x_768, 0.0f, 1.0f);
    let x_770 : f32 = u_xlat39;
    let x_771 : f32 = u_xlat39;
    u_xlat39 = (x_770 * x_771);
    let x_773 : f32 = u_xlat37;
    let x_774 : f32 = u_xlat39;
    u_xlat37 = (x_773 * x_774);
    let x_777 : f32 = u_xlat26;
    let x_779 : i32 = u_xlati35;
    let x_781 : vec4<f32> = x_709.x_AdditionalLightsColor[x_779];
    u_xlat10 = (vec3<f32>(x_777, x_777, x_777) * vec3<f32>(x_781.x, x_781.y, x_781.z));
    let x_784 : vec3<f32> = u_xlat12;
    let x_785 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_784, x_785);
    let x_787 : f32 = u_xlat35;
    u_xlat35 = clamp(x_787, 0.0f, 1.0f);
    let x_789 : f32 = u_xlat35;
    let x_790 : f32 = u_xlat37;
    u_xlat35 = (x_789 * x_790);
    let x_792 : f32 = u_xlat35;
    let x_794 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_792, x_792, x_792) * x_794);
    let x_796 : vec3<f32> = u_xlat19;
    let x_797 : f32 = u_xlat38;
    let x_800 : vec3<f32> = u_xlat3;
    u_xlat19 = ((x_796 * vec3<f32>(x_797, x_797, x_797)) + x_800);
    let x_802 : vec3<f32> = u_xlat19;
    let x_803 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(x_802, x_803);
    let x_805 : f32 = u_xlat35;
    u_xlat35 = max(x_805, 1.17549435e-37f);
    let x_807 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_807);
    let x_809 : f32 = u_xlat35;
    let x_811 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_809, x_809, x_809) * x_811);
    let x_813 : vec3<f32> = u_xlat12;
    let x_814 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(x_813, x_814);
    let x_816 : f32 = u_xlat35;
    u_xlat35 = clamp(x_816, 0.0f, 1.0f);
    let x_818 : vec3<f32> = u_xlat9;
    let x_819 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_818, x_819);
    let x_821 : f32 = u_xlat37;
    u_xlat37 = clamp(x_821, 0.0f, 1.0f);
    let x_823 : f32 = u_xlat35;
    let x_824 : f32 = u_xlat35;
    u_xlat35 = (x_823 * x_824);
    let x_826 : f32 = u_xlat35;
    let x_828 : f32 = u_xlat8.x;
    u_xlat35 = ((x_826 * x_828) + 1.000010014f);
    let x_831 : f32 = u_xlat37;
    let x_832 : f32 = u_xlat37;
    u_xlat37 = (x_831 * x_832);
    let x_834 : f32 = u_xlat35;
    let x_835 : f32 = u_xlat35;
    u_xlat35 = (x_834 * x_835);
    let x_837 : f32 = u_xlat37;
    u_xlat37 = max(x_837, 0.100000001f);
    let x_839 : f32 = u_xlat35;
    let x_840 : f32 = u_xlat37;
    u_xlat35 = (x_839 * x_840);
    let x_842 : f32 = u_xlat36;
    let x_843 : f32 = u_xlat35;
    u_xlat35 = (x_842 * x_843);
    let x_845 : f32 = u_xlat15;
    let x_846 : f32 = u_xlat35;
    u_xlat35 = (x_845 / x_846);
    let x_848 : vec4<f32> = u_xlat0;
    let x_850 : f32 = u_xlat35;
    let x_853 : vec3<f32> = u_xlat5;
    u_xlat19 = ((vec3<f32>(x_848.x, x_848.y, x_848.z) * vec3<f32>(x_850, x_850, x_850)) + x_853);
    let x_855 : vec3<f32> = u_xlat19;
    let x_856 : vec3<f32> = u_xlat10;
    let x_858 : vec4<f32> = u_xlat7;
    let x_860 : vec3<f32> = ((x_855 * x_856) + vec3<f32>(x_858.x, x_858.y, x_858.z));
    let x_861 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);

    continuing {
      let x_863 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_863 + bitcast<u32>(1i));
    }
  }
  let x_865 : vec4<f32> = u_xlat2;
  let x_867 : vec3<f32> = u_xlat4;
  let x_870 : vec3<f32> = u_xlat6;
  let x_871 : vec3<f32> = ((vec3<f32>(x_865.x, x_865.y, x_865.z) * vec3<f32>(x_867.x, x_867.x, x_867.x)) + x_870);
  let x_872 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_876 : vec4<f32> = u_xlat7;
  let x_878 : vec4<f32> = u_xlat0;
  let x_880 : vec3<f32> = (vec3<f32>(x_876.x, x_876.y, x_876.z) + vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_881 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

