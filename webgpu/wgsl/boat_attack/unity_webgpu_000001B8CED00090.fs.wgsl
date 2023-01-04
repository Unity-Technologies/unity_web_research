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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(3) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_159 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_640 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_866 : AdditionalLights;

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
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat13 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat33 : f32;
  var u_xlat16 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb13 : bool;
  var u_xlatb24 : bool;
  var x_508 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat24 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu27 : u32;
  var u_xlati38 : i32;
  var u_xlat27 : vec2<f32>;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati27 : i32;
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
  let x_154 : vec3<f32> = vs_TEXCOORD7;
  let x_162 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres0;
  let x_165 : vec3<f32> = (x_154 + -(vec3<f32>(x_162.x, x_162.y, x_162.z)));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec3<f32> = vs_TEXCOORD7;
  let x_171 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres1;
  let x_174 : vec3<f32> = (x_169 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = vs_TEXCOORD7;
  let x_181 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_178 + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_186 : vec3<f32> = vs_TEXCOORD7;
  let x_189 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_186 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat2;
  let x_195 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_193.x, x_193.y, x_193.z), vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_199 : vec4<f32> = u_xlat4;
  let x_201 : vec4<f32> = u_xlat4;
  u_xlat2.y = dot(vec3<f32>(x_199.x, x_199.y, x_199.z), vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_205 : vec3<f32> = u_xlat5;
  let x_206 : vec3<f32> = u_xlat5;
  u_xlat2.z = dot(x_205, x_206);
  let x_209 : vec3<f32> = u_xlat6;
  let x_210 : vec3<f32> = u_xlat6;
  u_xlat2.w = dot(x_209, x_210);
  let x_216 : vec4<f32> = u_xlat2;
  let x_219 : vec4<f32> = x_159.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_216 < x_219);
  let x_222 : bool = u_xlatb2.x;
  u_xlat4.x = select(0.0f, 1.0f, x_222);
  let x_226 : bool = u_xlatb2.y;
  u_xlat4.y = select(0.0f, 1.0f, x_226);
  let x_230 : bool = u_xlatb2.z;
  u_xlat4.z = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb2.w;
  u_xlat4.w = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_238);
  let x_244 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_244);
  let x_248 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_248);
  let x_251 : vec4<f32> = u_xlat2;
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec3<f32> = (vec3<f32>(x_251.x, x_251.y, x_251.z) + vec3<f32>(x_253.y, x_253.z, x_253.w));
  let x_256 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat2;
  let x_261 : vec3<f32> = max(vec3<f32>(x_258.x, x_258.y, x_258.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_262 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_262.x, x_261.x, x_261.y, x_261.z);
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(x_264, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_272 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_272) + 4.0f);
  let x_279 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_279);
  let x_283 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_283) << bitcast<u32>(2i));
  let x_287 : vec3<f32> = vs_TEXCOORD7;
  let x_289 : i32 = u_xlati2;
  let x_292 : i32 = u_xlati2;
  let x_296 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_289 + 1i) / 4i)][((x_292 + 1i) % 4i)];
  u_xlat13 = (vec3<f32>(x_287.y, x_287.y, x_287.y) * vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : i32 = u_xlati2;
  let x_301 : i32 = u_xlati2;
  let x_304 : vec4<f32> = x_159.x_MainLightWorldToShadow[(x_299 / 4i)][(x_301 % 4i)];
  let x_306 : vec3<f32> = vs_TEXCOORD7;
  let x_309 : vec3<f32> = u_xlat13;
  u_xlat13 = ((vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_306.x, x_306.x, x_306.x)) + x_309);
  let x_311 : i32 = u_xlati2;
  let x_314 : i32 = u_xlati2;
  let x_318 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_311 + 2i) / 4i)][((x_314 + 2i) % 4i)];
  let x_320 : vec3<f32> = vs_TEXCOORD7;
  let x_323 : vec3<f32> = u_xlat13;
  u_xlat13 = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_320.z, x_320.z, x_320.z)) + x_323);
  let x_325 : vec3<f32> = u_xlat13;
  let x_326 : i32 = u_xlati2;
  let x_329 : i32 = u_xlati2;
  let x_333 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_326 + 3i) / 4i)][((x_329 + 3i) % 4i)];
  let x_335 : vec3<f32> = (x_325 + vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_343 : vec4<f32> = vs_TEXCOORD0;
  let x_346 : f32 = x_44.x_GlobalMipBias.x;
  let x_347 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_343.z, x_343.w), x_346);
  let x_348 : vec3<f32> = vec3<f32>(x_347.x, x_347.y, x_347.z);
  let x_349 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_353 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_354 : vec2<f32> = vec2<f32>(x_353.x, x_353.y);
  let x_358 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_354.x, x_354.y));
  let x_359 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_358.x, x_358.y, x_359.z);
  let x_361 : vec3<f32> = u_xlat5;
  let x_363 : vec4<f32> = hlslcc_FragCoord;
  let x_365 : vec2<f32> = (vec2<f32>(x_361.x, x_361.y) * vec2<f32>(x_363.x, x_363.y));
  let x_366 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_365.x, x_365.y, x_366.z);
  let x_370 : f32 = u_xlat5.y;
  let x_373 : f32 = x_44.x_ScaleBiasRt.x;
  let x_376 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat35 = ((x_370 * x_373) + x_376);
  let x_378 : f32 = u_xlat35;
  u_xlat5.z = (-(x_378) + 1.0f);
  let x_382 : f32 = u_xlat1;
  u_xlat35 = ((-(x_382) * 0.959999979f) + 0.959999979f);
  let x_388 : f32 = u_xlat35;
  u_xlat36 = (-(x_388) + 1.0f);
  let x_391 : vec4<f32> = u_xlat0;
  let x_393 : f32 = u_xlat35;
  u_xlat6 = (vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(x_393, x_393, x_393));
  let x_396 : vec4<f32> = u_xlat0;
  let x_400 : vec3<f32> = (vec3<f32>(x_396.x, x_396.y, x_396.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_401 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : f32 = u_xlat1;
  let x_405 : vec4<f32> = u_xlat0;
  let x_410 : vec3<f32> = ((vec3<f32>(x_403, x_403, x_403) * vec3<f32>(x_405.x, x_405.y, x_405.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_411 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_414 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_414) + 1.0f);
  let x_417 : f32 = u_xlat1;
  let x_418 : f32 = u_xlat1;
  u_xlat35 = (x_417 * x_418);
  let x_420 : f32 = u_xlat35;
  u_xlat35 = max(x_420, 0.0078125f);
  let x_424 : f32 = u_xlat35;
  let x_425 : f32 = u_xlat35;
  u_xlat37 = (x_424 * x_425);
  let x_429 : f32 = u_xlat0.w;
  let x_430 : f32 = u_xlat36;
  u_xlat33 = (x_429 + x_430);
  let x_432 : f32 = u_xlat33;
  u_xlat33 = clamp(x_432, 0.0f, 1.0f);
  let x_434 : f32 = u_xlat35;
  u_xlat36 = ((x_434 * 4.0f) + 2.0f);
  let x_442 : vec3<f32> = u_xlat5;
  let x_445 : f32 = x_44.x_GlobalMipBias.x;
  let x_446 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_442.x, x_442.z), x_445);
  u_xlat5.x = x_446.x;
  let x_451 : f32 = u_xlat5.x;
  u_xlat16 = (x_451 + -1.0f);
  let x_454 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_455 : f32 = u_xlat16;
  u_xlat16 = ((x_454 * x_455) + 1.0f);
  let x_459 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_459, 1.0f);
  let x_463 : vec4<f32> = u_xlat2;
  let x_464 : vec2<f32> = vec2<f32>(x_463.x, x_463.y);
  let x_466 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_464.x, x_464.y, x_466);
  let x_478 : vec3<f32> = txVec0;
  let x_480 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_478.xy, x_478.z);
  u_xlat2.x = x_480;
  let x_483 : f32 = x_159.x_MainLightShadowParams.x;
  u_xlat13.x = (-(x_483) + 1.0f);
  let x_488 : f32 = u_xlat2.x;
  let x_490 : f32 = x_159.x_MainLightShadowParams.x;
  let x_493 : f32 = u_xlat13.x;
  u_xlat2.x = ((x_488 * x_490) + x_493);
  let x_498 : f32 = u_xlat2.z;
  u_xlatb13 = (0.0f >= x_498);
  let x_502 : f32 = u_xlat2.z;
  u_xlatb24 = (x_502 >= 1.0f);
  let x_504 : bool = u_xlatb24;
  let x_505 : bool = u_xlatb13;
  u_xlatb13 = (x_504 | x_505);
  let x_507 : bool = u_xlatb13;
  if (x_507) {
    x_508 = 1.0f;
  } else {
    let x_513 : f32 = u_xlat2.x;
    x_508 = x_513;
  }
  let x_514 : f32 = x_508;
  u_xlat2.x = x_514;
  let x_517 : vec3<f32> = vs_TEXCOORD7;
  let x_519 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat7 = (x_517 + -(x_519));
  let x_522 : vec3<f32> = u_xlat7;
  let x_523 : vec3<f32> = u_xlat7;
  u_xlat13.x = dot(x_522, x_523);
  let x_527 : f32 = u_xlat13.x;
  let x_529 : f32 = x_159.x_MainLightShadowParams.z;
  let x_532 : f32 = x_159.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_527 * x_529) + x_532);
  let x_536 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_536, 0.0f, 1.0f);
  let x_542 : f32 = u_xlat2.x;
  u_xlat24.x = (-(x_542) + 1.0f);
  let x_547 : f32 = u_xlat13.x;
  let x_549 : f32 = u_xlat24.x;
  let x_552 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_547 * x_549) + x_552);
  let x_555 : f32 = u_xlat16;
  let x_558 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_555, x_555, x_555) * vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec3<f32> = u_xlat3;
  let x_563 : vec3<f32> = u_xlat12;
  u_xlat13.x = dot(-(x_561), x_563);
  let x_567 : f32 = u_xlat13.x;
  let x_569 : f32 = u_xlat13.x;
  u_xlat13.x = (x_567 + x_569);
  let x_573 : vec3<f32> = u_xlat12;
  let x_574 : vec3<f32> = u_xlat13;
  let x_578 : vec3<f32> = u_xlat3;
  let x_580 : vec3<f32> = ((x_573 * -(vec3<f32>(x_574.x, x_574.x, x_574.x))) + -(x_578));
  let x_581 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec3<f32> = u_xlat12;
  let x_584 : vec3<f32> = u_xlat3;
  u_xlat13.x = dot(x_583, x_584);
  let x_588 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_588, 0.0f, 1.0f);
  let x_592 : f32 = u_xlat13.x;
  u_xlat13.x = (-(x_592) + 1.0f);
  let x_597 : f32 = u_xlat13.x;
  let x_599 : f32 = u_xlat13.x;
  u_xlat13.x = (x_597 * x_599);
  let x_603 : f32 = u_xlat13.x;
  let x_605 : f32 = u_xlat13.x;
  u_xlat13.x = (x_603 * x_605);
  let x_608 : f32 = u_xlat1;
  u_xlat24.x = ((-(x_608) * 0.699999988f) + 1.700000048f);
  let x_615 : f32 = u_xlat1;
  let x_617 : f32 = u_xlat24.x;
  u_xlat1 = (x_615 * x_617);
  let x_619 : f32 = u_xlat1;
  u_xlat1 = (x_619 * 6.0f);
  let x_630 : vec4<f32> = u_xlat8;
  let x_632 : f32 = u_xlat1;
  let x_633 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_630.x, x_630.y, x_630.z), x_632);
  u_xlat8 = x_633;
  let x_635 : f32 = u_xlat8.w;
  u_xlat1 = (x_635 + -1.0f);
  let x_642 : f32 = x_640.unity_SpecCube0_HDR.w;
  let x_643 : f32 = u_xlat1;
  u_xlat1 = ((x_642 * x_643) + 1.0f);
  let x_646 : f32 = u_xlat1;
  u_xlat1 = max(x_646, 0.0f);
  let x_648 : f32 = u_xlat1;
  u_xlat1 = log2(x_648);
  let x_650 : f32 = u_xlat1;
  let x_652 : f32 = x_640.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_650 * x_652);
  let x_654 : f32 = u_xlat1;
  u_xlat1 = exp2(x_654);
  let x_656 : f32 = u_xlat1;
  let x_658 : f32 = x_640.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_656 * x_658);
  let x_660 : vec4<f32> = u_xlat8;
  let x_662 : f32 = u_xlat1;
  let x_664 : vec3<f32> = (vec3<f32>(x_660.x, x_660.y, x_660.z) * vec3<f32>(x_662, x_662, x_662));
  let x_665 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
  let x_667 : f32 = u_xlat35;
  let x_669 : f32 = u_xlat35;
  u_xlat24 = ((vec2<f32>(x_667, x_667) * vec2<f32>(x_669, x_669)) + vec2<f32>(-1.0f, 1.0f));
  let x_675 : f32 = u_xlat24.y;
  u_xlat1 = (1.0f / x_675);
  let x_678 : vec4<f32> = u_xlat0;
  let x_681 : f32 = u_xlat33;
  u_xlat9 = (-(vec3<f32>(x_678.x, x_678.y, x_678.z)) + vec3<f32>(x_681, x_681, x_681));
  let x_684 : vec3<f32> = u_xlat13;
  let x_686 : vec3<f32> = u_xlat9;
  let x_688 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_684.x, x_684.x, x_684.x) * x_686) + vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : f32 = u_xlat1;
  let x_693 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_691, x_691, x_691) * x_693);
  let x_695 : vec4<f32> = u_xlat8;
  let x_697 : vec3<f32> = u_xlat9;
  let x_698 : vec3<f32> = (vec3<f32>(x_695.x, x_695.y, x_695.z) * x_697);
  let x_699 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat4;
  let x_703 : vec3<f32> = u_xlat6;
  let x_705 : vec4<f32> = u_xlat8;
  let x_707 : vec3<f32> = ((vec3<f32>(x_701.x, x_701.y, x_701.z) * x_703) + vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_711 : f32 = u_xlat2.x;
  let x_713 : f32 = x_640.unity_LightData.z;
  u_xlat33 = (x_711 * x_713);
  let x_715 : vec3<f32> = u_xlat12;
  let x_717 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_715, vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_720 : f32 = u_xlat1;
  u_xlat1 = clamp(x_720, 0.0f, 1.0f);
  let x_722 : f32 = u_xlat33;
  let x_723 : f32 = u_xlat1;
  u_xlat33 = (x_722 * x_723);
  let x_725 : f32 = u_xlat33;
  let x_727 : vec3<f32> = u_xlat7;
  let x_728 : vec3<f32> = (vec3<f32>(x_725, x_725, x_725) * x_727);
  let x_729 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_728.x, x_728.y, x_729.z, x_728.z);
  let x_731 : vec3<f32> = u_xlat3;
  let x_733 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_731 + vec3<f32>(x_733.x, x_733.y, x_733.z));
  let x_736 : vec3<f32> = u_xlat7;
  let x_737 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_736, x_737);
  let x_739 : f32 = u_xlat33;
  u_xlat33 = max(x_739, 1.17549435e-37f);
  let x_742 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_742);
  let x_744 : f32 = u_xlat33;
  let x_746 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_744, x_744, x_744) * x_746);
  let x_748 : vec3<f32> = u_xlat12;
  let x_749 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_748, x_749);
  let x_751 : f32 = u_xlat33;
  u_xlat33 = clamp(x_751, 0.0f, 1.0f);
  let x_754 : vec4<f32> = x_44.x_MainLightPosition;
  let x_756 : vec3<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_754.x, x_754.y, x_754.z), x_756);
  let x_758 : f32 = u_xlat1;
  u_xlat1 = clamp(x_758, 0.0f, 1.0f);
  let x_760 : f32 = u_xlat33;
  let x_761 : f32 = u_xlat33;
  u_xlat33 = (x_760 * x_761);
  let x_763 : f32 = u_xlat33;
  let x_765 : f32 = u_xlat24.x;
  u_xlat33 = ((x_763 * x_765) + 1.000010014f);
  let x_769 : f32 = u_xlat1;
  let x_770 : f32 = u_xlat1;
  u_xlat1 = (x_769 * x_770);
  let x_772 : f32 = u_xlat33;
  let x_773 : f32 = u_xlat33;
  u_xlat33 = (x_772 * x_773);
  let x_775 : f32 = u_xlat1;
  u_xlat1 = max(x_775, 0.100000001f);
  let x_778 : f32 = u_xlat33;
  let x_779 : f32 = u_xlat1;
  u_xlat33 = (x_778 * x_779);
  let x_781 : f32 = u_xlat36;
  let x_782 : f32 = u_xlat33;
  u_xlat33 = (x_781 * x_782);
  let x_784 : f32 = u_xlat37;
  let x_785 : f32 = u_xlat33;
  u_xlat33 = (x_784 / x_785);
  let x_787 : vec4<f32> = u_xlat0;
  let x_789 : f32 = u_xlat33;
  let x_792 : vec3<f32> = u_xlat6;
  u_xlat7 = ((vec3<f32>(x_787.x, x_787.y, x_787.z) * vec3<f32>(x_789, x_789, x_789)) + x_792);
  let x_794 : vec4<f32> = u_xlat2;
  let x_796 : vec3<f32> = u_xlat7;
  let x_797 : vec3<f32> = (vec3<f32>(x_794.x, x_794.y, x_794.w) * x_796);
  let x_798 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_797.x, x_797.y, x_798.z, x_797.z);
  let x_801 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_803 : f32 = x_640.unity_LightData.y;
  u_xlat33 = min(x_801, x_803);
  let x_806 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_806));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_818 : u32 = u_xlatu_loop_1;
    let x_819 : u32 = u_xlatu33;
    if ((x_818 < x_819)) {
    } else {
      break;
    }
    let x_822 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_822 >> 2u);
    let x_825 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_825 & 3u));
    let x_829 : u32 = u_xlatu27;
    let x_832 : vec4<f32> = x_640.unity_LightIndices[bitcast<i32>(x_829)];
    let x_842 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_847 : vec4<u32> = indexable[x_842];
    u_xlat27.x = dot(x_832, bitcast<vec4<f32>>(x_847));
    let x_853 : f32 = u_xlat27.x;
    u_xlati27 = i32(x_853);
    let x_855 : vec3<f32> = vs_TEXCOORD7;
    let x_867 : i32 = u_xlati27;
    let x_869 : vec4<f32> = x_866.x_AdditionalLightsPosition[x_867];
    let x_872 : i32 = u_xlati27;
    let x_874 : vec4<f32> = x_866.x_AdditionalLightsPosition[x_872];
    let x_876 : vec3<f32> = ((-(x_855) * vec3<f32>(x_869.w, x_869.w, x_869.w)) + vec3<f32>(x_874.x, x_874.y, x_874.z));
    let x_877 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
    let x_880 : vec4<f32> = u_xlat8;
    let x_882 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_880.x, x_880.y, x_880.z), vec3<f32>(x_882.x, x_882.y, x_882.z));
    let x_885 : f32 = u_xlat38;
    u_xlat38 = max(x_885, 6.10351562e-05f);
    let x_889 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_889);
    let x_891 : f32 = u_xlat39;
    let x_893 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_891, x_891, x_891) * vec3<f32>(x_893.x, x_893.y, x_893.z));
    let x_897 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_897);
    let x_899 : f32 = u_xlat38;
    let x_900 : i32 = u_xlati27;
    let x_902 : f32 = x_866.x_AdditionalLightsAttenuation[x_900].x;
    u_xlat38 = (x_899 * x_902);
    let x_904 : f32 = u_xlat38;
    let x_906 : f32 = u_xlat38;
    u_xlat38 = ((-(x_904) * x_906) + 1.0f);
    let x_909 : f32 = u_xlat38;
    u_xlat38 = max(x_909, 0.0f);
    let x_911 : f32 = u_xlat38;
    let x_912 : f32 = u_xlat38;
    u_xlat38 = (x_911 * x_912);
    let x_914 : f32 = u_xlat38;
    let x_915 : f32 = u_xlat40;
    u_xlat38 = (x_914 * x_915);
    let x_917 : i32 = u_xlati27;
    let x_919 : vec4<f32> = x_866.x_AdditionalLightsSpotDir[x_917];
    let x_921 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_919.x, x_919.y, x_919.z), x_921);
    let x_923 : f32 = u_xlat40;
    let x_924 : i32 = u_xlati27;
    let x_926 : f32 = x_866.x_AdditionalLightsAttenuation[x_924].z;
    let x_928 : i32 = u_xlati27;
    let x_930 : f32 = x_866.x_AdditionalLightsAttenuation[x_928].w;
    u_xlat40 = ((x_923 * x_926) + x_930);
    let x_932 : f32 = u_xlat40;
    u_xlat40 = clamp(x_932, 0.0f, 1.0f);
    let x_934 : f32 = u_xlat40;
    let x_935 : f32 = u_xlat40;
    u_xlat40 = (x_934 * x_935);
    let x_937 : f32 = u_xlat38;
    let x_938 : f32 = u_xlat40;
    u_xlat38 = (x_937 * x_938);
    let x_941 : f32 = u_xlat16;
    let x_943 : i32 = u_xlati27;
    let x_945 : vec4<f32> = x_866.x_AdditionalLightsColor[x_943];
    u_xlat10 = (vec3<f32>(x_941, x_941, x_941) * vec3<f32>(x_945.x, x_945.y, x_945.z));
    let x_948 : vec3<f32> = u_xlat12;
    let x_949 : vec3<f32> = u_xlat9;
    u_xlat27.x = dot(x_948, x_949);
    let x_953 : f32 = u_xlat27.x;
    u_xlat27.x = clamp(x_953, 0.0f, 1.0f);
    let x_957 : f32 = u_xlat27.x;
    let x_958 : f32 = u_xlat38;
    u_xlat27.x = (x_957 * x_958);
    let x_961 : vec2<f32> = u_xlat27;
    let x_963 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_961.x, x_961.x, x_961.x) * x_963);
    let x_965 : vec4<f32> = u_xlat8;
    let x_967 : f32 = u_xlat39;
    let x_970 : vec3<f32> = u_xlat3;
    let x_971 : vec3<f32> = ((vec3<f32>(x_965.x, x_965.y, x_965.z) * vec3<f32>(x_967, x_967, x_967)) + x_970);
    let x_972 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
    let x_974 : vec4<f32> = u_xlat8;
    let x_976 : vec4<f32> = u_xlat8;
    u_xlat27.x = dot(vec3<f32>(x_974.x, x_974.y, x_974.z), vec3<f32>(x_976.x, x_976.y, x_976.z));
    let x_981 : f32 = u_xlat27.x;
    u_xlat27.x = max(x_981, 1.17549435e-37f);
    let x_985 : f32 = u_xlat27.x;
    u_xlat27.x = inverseSqrt(x_985);
    let x_988 : vec2<f32> = u_xlat27;
    let x_990 : vec4<f32> = u_xlat8;
    let x_992 : vec3<f32> = (vec3<f32>(x_988.x, x_988.x, x_988.x) * vec3<f32>(x_990.x, x_990.y, x_990.z));
    let x_993 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
    let x_995 : vec3<f32> = u_xlat12;
    let x_996 : vec4<f32> = u_xlat8;
    u_xlat27.x = dot(x_995, vec3<f32>(x_996.x, x_996.y, x_996.z));
    let x_1001 : f32 = u_xlat27.x;
    u_xlat27.x = clamp(x_1001, 0.0f, 1.0f);
    let x_1004 : vec3<f32> = u_xlat9;
    let x_1005 : vec4<f32> = u_xlat8;
    u_xlat27.y = dot(x_1004, vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
    let x_1010 : f32 = u_xlat27.y;
    u_xlat27.y = clamp(x_1010, 0.0f, 1.0f);
    let x_1013 : vec2<f32> = u_xlat27;
    let x_1014 : vec2<f32> = u_xlat27;
    u_xlat27 = (x_1013 * x_1014);
    let x_1017 : f32 = u_xlat27.x;
    let x_1019 : f32 = u_xlat24.x;
    u_xlat27.x = ((x_1017 * x_1019) + 1.000010014f);
    let x_1024 : f32 = u_xlat27.x;
    let x_1026 : f32 = u_xlat27.x;
    u_xlat27.x = (x_1024 * x_1026);
    let x_1030 : f32 = u_xlat27.y;
    u_xlat38 = max(x_1030, 0.100000001f);
    let x_1032 : f32 = u_xlat38;
    let x_1034 : f32 = u_xlat27.x;
    u_xlat27.x = (x_1032 * x_1034);
    let x_1037 : f32 = u_xlat36;
    let x_1039 : f32 = u_xlat27.x;
    u_xlat27.x = (x_1037 * x_1039);
    let x_1042 : f32 = u_xlat37;
    let x_1044 : f32 = u_xlat27.x;
    u_xlat27.x = (x_1042 / x_1044);
    let x_1047 : vec4<f32> = u_xlat0;
    let x_1049 : vec2<f32> = u_xlat27;
    let x_1052 : vec3<f32> = u_xlat6;
    let x_1053 : vec3<f32> = ((vec3<f32>(x_1047.x, x_1047.y, x_1047.z) * vec3<f32>(x_1049.x, x_1049.x, x_1049.x)) + x_1052);
    let x_1054 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
    let x_1056 : vec4<f32> = u_xlat8;
    let x_1058 : vec3<f32> = u_xlat10;
    let x_1060 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1056.x, x_1056.y, x_1056.z) * x_1058) + x_1060);

    continuing {
      let x_1062 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1062 + bitcast<u32>(1i));
    }
  }
  let x_1064 : vec4<f32> = u_xlat4;
  let x_1066 : vec3<f32> = u_xlat5;
  let x_1069 : vec4<f32> = u_xlat2;
  let x_1071 : vec3<f32> = ((vec3<f32>(x_1064.x, x_1064.y, x_1064.z) * vec3<f32>(x_1066.x, x_1066.x, x_1066.x)) + vec3<f32>(x_1069.x, x_1069.y, x_1069.w));
  let x_1072 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
  let x_1076 : vec3<f32> = u_xlat7;
  let x_1077 : vec4<f32> = u_xlat0;
  let x_1079 : vec3<f32> = (x_1076 + vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
  let x_1080 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
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

