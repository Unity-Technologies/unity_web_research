type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
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

struct UnityPerMaterial {
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  Color_C30C7CA3 : vec4<f32>,
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
}

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_54 : UnityPerDraw;

@group(0) @binding(4) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_132 : PGlobals;

@group(1) @binding(4) var<uniform> x_142 : UnityPerMaterial;

@group(0) @binding(5) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_232 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1010 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : f32;
  var u_xlatb11 : vec2<bool>;
  var u_xlat11 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat17 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlatb2 : bool;
  var u_xlatb13 : bool;
  var u_xlatb0 : bool;
  var x_351 : f32;
  var u_xlat13 : f32;
  var u_xlat24 : f32;
  var x_397 : f32;
  var x_469 : f32;
  var x_481 : f32;
  var x_492 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat25 : f32;
  var txVec1 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb28 : bool;
  var u_xlat28 : f32;
  var u_xlat40 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatu34 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu38 : u32;
  var u_xlati40 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati38 : i32;
  var u_xlat41 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_30 : vec3<f32> = vs_INTERP1;
  let x_31 : vec3<f32> = vs_INTERP1;
  u_xlat0 = dot(x_30, x_31);
  let x_33 : f32 = u_xlat0;
  u_xlat0 = sqrt(x_33);
  let x_35 : f32 = u_xlat0;
  u_xlat0 = (1.0f / x_35);
  let x_44 : f32 = vs_INTERP2.w;
  u_xlatb11.x = (0.0f < x_44);
  let x_59 : f32 = x_54.unity_WorldTransformParams.w;
  u_xlatb11.y = (x_59 >= 0.0f);
  let x_66 : bool = u_xlatb11.x;
  u_xlat11.x = select(-1.0f, 1.0f, x_66);
  let x_71 : bool = u_xlatb11.y;
  u_xlat11.y = select(-1.0f, 1.0f, x_71);
  let x_75 : f32 = u_xlat11.y;
  let x_77 : f32 = u_xlat11.x;
  u_xlat11.x = (x_75 * x_77);
  let x_81 : vec3<f32> = vs_INTERP1;
  let x_83 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_81.z, x_81.x, x_81.y) * vec3<f32>(x_83.y, x_83.z, x_83.x));
  let x_86 : vec3<f32> = vs_INTERP1;
  let x_88 : vec4<f32> = vs_INTERP2;
  let x_91 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_86.y, x_86.z, x_86.x) * vec3<f32>(x_88.z, x_88.x, x_88.y)) + -(x_91));
  let x_94 : vec3<f32> = u_xlat11;
  let x_96 : vec3<f32> = u_xlat1;
  u_xlat11 = (vec3<f32>(x_94.x, x_94.x, x_94.x) * x_96);
  let x_98 : f32 = u_xlat0;
  let x_100 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_103 : f32 = u_xlat0;
  let x_105 : vec4<f32> = vs_INTERP2;
  let x_107 : vec3<f32> = (vec3<f32>(x_103, x_103, x_103) * vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_108 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_111 : vec3<f32> = u_xlat11;
  let x_112 : f32 = u_xlat0;
  u_xlat3 = (x_111 * vec3<f32>(x_112, x_112, x_112));
  let x_128 : vec4<f32> = vs_INTERP3;
  let x_135 : f32 = x_132.x_GlobalMipBias.x;
  let x_136 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_128.x, x_128.y), x_135);
  u_xlat4 = x_136;
  let x_138 : vec4<f32> = u_xlat4;
  let x_145 : vec4<f32> = x_142.Color_C30C7CA3;
  u_xlat5 = (vec3<f32>(x_138.x, x_138.y, x_138.z) * vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_154 : vec4<f32> = vs_INTERP3;
  let x_157 : f32 = x_132.x_GlobalMipBias.x;
  let x_158 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_154.x, x_154.y), x_157);
  u_xlat6 = vec4<f32>(x_158.w, x_158.x, x_158.y, x_158.z);
  let x_161 : vec4<f32> = u_xlat6;
  u_xlat7 = ((vec4<f32>(x_161.y, x_161.z, x_161.w, x_161.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_168 : vec4<f32> = u_xlat7;
  let x_169 : vec4<f32> = u_xlat7;
  u_xlat0 = dot(x_168, x_169);
  let x_171 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_171);
  let x_174 : f32 = u_xlat0;
  let x_176 : vec4<f32> = u_xlat7;
  u_xlat17 = (vec3<f32>(x_174, x_174, x_174) * vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_181 : f32 = vs_INTERP4.y;
  u_xlat0 = (x_181 * 200.0f);
  let x_184 : f32 = u_xlat0;
  u_xlat0 = min(x_184, 1.0f);
  let x_186 : f32 = u_xlat0;
  let x_188 : vec4<f32> = u_xlat4;
  let x_190 : vec3<f32> = (vec3<f32>(x_186, x_186, x_186) * vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_191 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_193 : vec3<f32> = u_xlat3;
  let x_194 : vec3<f32> = u_xlat17;
  u_xlat3 = (x_193 * vec3<f32>(x_194.y, x_194.y, x_194.y));
  let x_197 : vec3<f32> = u_xlat17;
  let x_199 : vec4<f32> = u_xlat2;
  let x_202 : vec3<f32> = u_xlat3;
  let x_203 : vec3<f32> = ((vec3<f32>(x_197.x, x_197.x, x_197.x) * vec3<f32>(x_199.x, x_199.y, x_199.z)) + x_202);
  let x_204 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_206 : vec3<f32> = u_xlat17;
  let x_208 : vec3<f32> = u_xlat1;
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_206.z, x_206.z, x_206.z) * x_208) + vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_213 : vec3<f32> = u_xlat1;
  let x_214 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_213, x_214);
  let x_216 : f32 = u_xlat0;
  u_xlat0 = max(x_216, 1.17549435e-37f);
  let x_219 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_219);
  let x_221 : f32 = u_xlat0;
  let x_223 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_221, x_221, x_221) * x_223);
  let x_226 : vec3<f32> = vs_INTERP0;
  let x_235 : vec4<f32> = x_232.x_MainLightWorldToShadow[0i][1i];
  let x_237 : vec3<f32> = (vec3<f32>(x_226.y, x_226.y, x_226.y) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_241 : vec4<f32> = x_232.x_MainLightWorldToShadow[0i][0i];
  let x_243 : vec3<f32> = vs_INTERP0;
  let x_246 : vec4<f32> = u_xlat2;
  let x_248 : vec3<f32> = ((vec3<f32>(x_241.x, x_241.y, x_241.z) * vec3<f32>(x_243.x, x_243.x, x_243.x)) + vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_249 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_253 : vec4<f32> = x_232.x_MainLightWorldToShadow[0i][2i];
  let x_255 : vec3<f32> = vs_INTERP0;
  let x_258 : vec4<f32> = u_xlat2;
  let x_260 : vec3<f32> = ((vec3<f32>(x_253.x, x_253.y, x_253.z) * vec3<f32>(x_255.z, x_255.z, x_255.z)) + vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec4<f32> = u_xlat2;
  let x_266 : vec4<f32> = x_232.x_MainLightWorldToShadow[0i][3i];
  let x_268 : vec3<f32> = (vec3<f32>(x_263.x, x_263.y, x_263.z) + vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_272 : vec4<f32> = u_xlat2;
  let x_273 : vec2<f32> = vec2<f32>(x_272.x, x_272.y);
  let x_275 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_273.x, x_273.y, x_275);
  let x_287 : vec3<f32> = txVec0;
  let x_289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_287.xy, x_287.z);
  u_xlat0 = x_289;
  let x_293 : f32 = x_232.x_MainLightShadowParams.x;
  u_xlat34 = (-(x_293) + 1.0f);
  let x_296 : f32 = u_xlat0;
  let x_298 : f32 = x_232.x_MainLightShadowParams.x;
  let x_300 : f32 = u_xlat34;
  u_xlat0 = ((x_296 * x_298) + x_300);
  let x_304 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_304);
  let x_308 : f32 = u_xlat2.z;
  u_xlatb13 = (x_308 >= 1.0f);
  let x_310 : bool = u_xlatb13;
  let x_311 : bool = u_xlatb2;
  u_xlatb2 = (x_310 | x_311);
  let x_313 : bool = u_xlatb2;
  let x_314 : f32 = u_xlat0;
  u_xlat0 = select(x_314, 1.0f, x_313);
  let x_316 : vec3<f32> = u_xlat1;
  let x_318 : vec4<f32> = x_132.x_MainLightPosition;
  u_xlat1.x = dot(x_316, -(vec3<f32>(x_318.x, x_318.y, x_318.z)));
  let x_324 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_324, 0.0f, 1.0f);
  let x_327 : f32 = u_xlat0;
  let x_331 : vec4<f32> = x_132.x_MainLightColor;
  let x_333 : vec3<f32> = (vec3<f32>(x_327, x_327, x_327) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec3<f32> = u_xlat1;
  let x_338 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_336.x, x_336.x, x_336.x) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec3<f32> = u_xlat1;
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_341 * vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_347 : f32 = u_xlat4.w;
  u_xlatb0 = (x_347 >= 0.400000006f);
  let x_350 : bool = u_xlatb0;
  if (x_350) {
    let x_355 : f32 = u_xlat4.w;
    x_351 = x_355;
  } else {
    x_351 = 0.0f;
  }
  let x_357 : f32 = x_351;
  u_xlat0 = x_357;
  let x_359 : f32 = u_xlat4.w;
  u_xlat2.x = (x_359 + -0.400000006f);
  let x_365 : f32 = u_xlat4.w;
  u_xlat13 = dpdxCoarse(x_365);
  let x_369 : f32 = u_xlat4.w;
  u_xlat24 = dpdyCoarse(x_369);
  let x_371 : f32 = u_xlat24;
  let x_373 : f32 = u_xlat13;
  u_xlat13 = (abs(x_371) + abs(x_373));
  let x_376 : f32 = u_xlat13;
  u_xlat13 = max(x_376, 0.0001f);
  let x_380 : f32 = u_xlat2.x;
  let x_381 : f32 = u_xlat13;
  u_xlat2.x = (x_380 / x_381);
  let x_385 : f32 = u_xlat2.x;
  u_xlat2.x = (x_385 + 0.5f);
  let x_390 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_390, 0.0f, 1.0f);
  let x_394 : f32 = x_132.x_AlphaToMaskAvailable;
  u_xlatb13 = !((x_394 == 0.0f));
  let x_396 : bool = u_xlatb13;
  if (x_396) {
    let x_401 : f32 = u_xlat2.x;
    x_397 = x_401;
  } else {
    let x_403 : f32 = u_xlat0;
    x_397 = x_403;
  }
  let x_404 : f32 = x_397;
  u_xlat0 = x_404;
  let x_405 : f32 = u_xlat0;
  u_xlat2.x = (x_405 + -0.0001f);
  let x_410 : f32 = u_xlat2.x;
  u_xlatb2 = (x_410 < 0.0f);
  let x_412 : bool = u_xlatb2;
  if (((select(0i, 1i, x_412) * -1i) != 0i)) {
    discard;
  }
  let x_420 : vec3<f32> = u_xlat11;
  let x_421 : vec3<f32> = u_xlat17;
  u_xlat11 = (x_420 * vec3<f32>(x_421.y, x_421.y, x_421.y));
  let x_424 : vec3<f32> = u_xlat17;
  let x_426 : vec4<f32> = vs_INTERP2;
  let x_429 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_424.x, x_424.x, x_424.x) * vec3<f32>(x_426.x, x_426.y, x_426.z)) + x_429);
  let x_431 : vec3<f32> = u_xlat17;
  let x_433 : vec3<f32> = vs_INTERP1;
  let x_435 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_431.z, x_431.z, x_431.z) * x_433) + x_435);
  let x_437 : vec3<f32> = u_xlat11;
  let x_438 : vec3<f32> = u_xlat11;
  u_xlat2.x = dot(x_437, x_438);
  let x_442 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_442);
  let x_445 : vec3<f32> = u_xlat11;
  let x_446 : vec4<f32> = u_xlat2;
  u_xlat11 = (x_445 * vec3<f32>(x_446.x, x_446.x, x_446.x));
  let x_450 : f32 = x_132.unity_OrthoParams.w;
  u_xlatb2 = (x_450 == 0.0f);
  let x_452 : vec3<f32> = vs_INTERP0;
  let x_457 : vec3<f32> = x_132.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_452) + x_457);
  let x_459 : vec3<f32> = u_xlat3;
  let x_460 : vec3<f32> = u_xlat3;
  u_xlat24 = dot(x_459, x_460);
  let x_462 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_462);
  let x_464 : f32 = u_xlat24;
  let x_466 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_464, x_464, x_464) * x_466);
  let x_468 : bool = u_xlatb2;
  if (x_468) {
    let x_473 : f32 = u_xlat3.x;
    x_469 = x_473;
  } else {
    let x_477 : f32 = x_132.unity_MatrixV[0i].z;
    x_469 = x_477;
  }
  let x_478 : f32 = x_469;
  u_xlat4.x = x_478;
  let x_480 : bool = u_xlatb2;
  if (x_480) {
    let x_485 : f32 = u_xlat3.y;
    x_481 = x_485;
  } else {
    let x_488 : f32 = x_132.unity_MatrixV[1i].z;
    x_481 = x_488;
  }
  let x_489 : f32 = x_481;
  u_xlat4.y = x_489;
  let x_491 : bool = u_xlatb2;
  if (x_491) {
    let x_496 : f32 = u_xlat3.z;
    x_492 = x_496;
  } else {
    let x_499 : f32 = x_132.unity_MatrixV[2i].z;
    x_492 = x_499;
  }
  let x_500 : f32 = x_492;
  u_xlat4.z = x_500;
  let x_509 : vec2<f32> = vs_INTERP5;
  let x_511 : f32 = x_132.x_GlobalMipBias.x;
  let x_512 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_509, x_511);
  let x_513 : vec3<f32> = vec3<f32>(x_512.x, x_512.y, x_512.z);
  let x_514 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_513.x, x_514.y, x_513.y, x_513.z);
  let x_518 : vec4<f32> = x_132.x_ScaledScreenParams;
  let x_519 : vec2<f32> = vec2<f32>(x_518.x, x_518.y);
  let x_523 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_519.x, x_519.y));
  let x_524 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_523.x, x_523.y, x_524.z);
  let x_526 : vec3<f32> = u_xlat3;
  let x_528 : vec4<f32> = hlslcc_FragCoord;
  let x_530 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) * vec2<f32>(x_528.x, x_528.y));
  let x_531 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_530.x, x_530.y, x_531.z);
  let x_535 : f32 = u_xlat3.y;
  let x_538 : f32 = x_132.x_ScaleBiasRt.x;
  let x_541 : f32 = x_132.x_ScaleBiasRt.y;
  u_xlat14.x = ((x_535 * x_538) + x_541);
  let x_545 : f32 = u_xlat14.x;
  u_xlat3.z = (-(x_545) + 1.0f);
  let x_550 : f32 = u_xlat6.x;
  u_xlat6.x = x_550;
  let x_553 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_553, 0.0f, 1.0f);
  let x_556 : f32 = u_xlat0;
  u_xlat0 = min(x_556, 1.0f);
  let x_558 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_558 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_563 : f32 = u_xlat6.x;
  u_xlat14.x = (-(x_563) + 1.0f);
  let x_569 : f32 = u_xlat14.x;
  let x_571 : f32 = u_xlat14.x;
  u_xlat36 = (x_569 * x_571);
  let x_573 : f32 = u_xlat36;
  u_xlat36 = max(x_573, 0.0078125f);
  let x_577 : f32 = u_xlat36;
  let x_578 : f32 = u_xlat36;
  u_xlat37 = (x_577 * x_578);
  let x_582 : f32 = u_xlat6.x;
  u_xlat38 = (x_582 + 0.040000021f);
  let x_585 : f32 = u_xlat38;
  u_xlat38 = min(x_585, 1.0f);
  let x_587 : f32 = u_xlat36;
  u_xlat6.x = ((x_587 * 4.0f) + 2.0f);
  let x_597 : vec3<f32> = u_xlat3;
  let x_600 : f32 = x_132.x_GlobalMipBias.x;
  let x_601 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_597.x, x_597.z), x_600);
  u_xlat3.x = x_601.x;
  let x_606 : f32 = u_xlat3.x;
  u_xlat25 = (x_606 + -1.0f);
  let x_610 : f32 = x_132.x_AmbientOcclusionParam.w;
  let x_611 : f32 = u_xlat25;
  u_xlat25 = ((x_610 * x_611) + 1.0f);
  let x_615 : f32 = u_xlat3.x;
  let x_617 : f32 = vs_INTERP4.w;
  u_xlat3.x = min(x_615, x_617);
  let x_622 : vec4<f32> = vs_INTERP9;
  let x_623 : vec2<f32> = vec2<f32>(x_622.x, x_622.y);
  let x_625 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_623.x, x_623.y, x_625);
  let x_632 : vec3<f32> = txVec1;
  let x_634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_632.xy, x_632.z);
  u_xlat17.x = x_634;
  let x_637 : f32 = u_xlat17.x;
  let x_639 : f32 = x_232.x_MainLightShadowParams.x;
  let x_641 : f32 = u_xlat34;
  u_xlat34 = ((x_637 * x_639) + x_641);
  let x_645 : f32 = vs_INTERP9.z;
  u_xlatb17 = (0.0f >= x_645);
  let x_649 : f32 = vs_INTERP9.z;
  u_xlatb28 = (x_649 >= 1.0f);
  let x_651 : bool = u_xlatb28;
  let x_652 : bool = u_xlatb17;
  u_xlatb17 = (x_651 | x_652);
  let x_654 : bool = u_xlatb17;
  let x_655 : f32 = u_xlat34;
  u_xlat34 = select(x_655, 1.0f, x_654);
  let x_657 : vec3<f32> = vs_INTERP0;
  let x_659 : vec3<f32> = x_132.x_WorldSpaceCameraPos;
  u_xlat17 = (x_657 + -(x_659));
  let x_662 : vec3<f32> = u_xlat17;
  let x_663 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_662, x_663);
  let x_667 : f32 = u_xlat17.x;
  let x_669 : f32 = x_232.x_MainLightShadowParams.z;
  let x_672 : f32 = x_232.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_667 * x_669) + x_672);
  let x_676 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_676, 0.0f, 1.0f);
  let x_680 : f32 = u_xlat34;
  u_xlat28 = (-(x_680) + 1.0f);
  let x_684 : f32 = u_xlat17.x;
  let x_685 : f32 = u_xlat28;
  let x_687 : f32 = u_xlat34;
  u_xlat34 = ((x_684 * x_685) + x_687);
  let x_689 : f32 = u_xlat25;
  let x_692 : vec4<f32> = x_132.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_689, x_689, x_689) * vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec4<f32> = u_xlat4;
  let x_698 : vec3<f32> = u_xlat11;
  u_xlat7.x = dot(-(vec3<f32>(x_695.x, x_695.y, x_695.z)), x_698);
  let x_702 : f32 = u_xlat7.x;
  let x_704 : f32 = u_xlat7.x;
  u_xlat7.x = (x_702 + x_704);
  let x_707 : vec3<f32> = u_xlat11;
  let x_708 : vec4<f32> = u_xlat7;
  let x_712 : vec4<f32> = u_xlat4;
  let x_715 : vec3<f32> = ((x_707 * -(vec3<f32>(x_708.x, x_708.x, x_708.x))) + -(vec3<f32>(x_712.x, x_712.y, x_712.z)));
  let x_716 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_719 : vec3<f32> = u_xlat11;
  let x_720 : vec4<f32> = u_xlat4;
  u_xlat40 = dot(x_719, vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : f32 = u_xlat40;
  u_xlat40 = clamp(x_723, 0.0f, 1.0f);
  let x_725 : f32 = u_xlat40;
  u_xlat40 = (-(x_725) + 1.0f);
  let x_728 : f32 = u_xlat40;
  let x_729 : f32 = u_xlat40;
  u_xlat40 = (x_728 * x_729);
  let x_731 : f32 = u_xlat40;
  let x_732 : f32 = u_xlat40;
  u_xlat40 = (x_731 * x_732);
  let x_736 : f32 = u_xlat14.x;
  u_xlat8.x = ((-(x_736) * 0.699999988f) + 1.700000048f);
  let x_744 : f32 = u_xlat14.x;
  let x_746 : f32 = u_xlat8.x;
  u_xlat14.x = (x_744 * x_746);
  let x_750 : f32 = u_xlat14.x;
  u_xlat14.x = (x_750 * 6.0f);
  let x_762 : vec4<f32> = u_xlat7;
  let x_765 : f32 = u_xlat14.x;
  let x_766 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_762.x, x_762.y, x_762.z), x_765);
  u_xlat8 = x_766;
  let x_768 : f32 = u_xlat8.w;
  u_xlat14.x = (x_768 + -1.0f);
  let x_772 : f32 = x_54.unity_SpecCube0_HDR.w;
  let x_774 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_772 * x_774) + 1.0f);
  let x_779 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_779, 0.0f);
  let x_783 : f32 = u_xlat14.x;
  u_xlat14.x = log2(x_783);
  let x_787 : f32 = u_xlat14.x;
  let x_789 : f32 = x_54.unity_SpecCube0_HDR.y;
  u_xlat14.x = (x_787 * x_789);
  let x_793 : f32 = u_xlat14.x;
  u_xlat14.x = exp2(x_793);
  let x_797 : f32 = u_xlat14.x;
  let x_799 : f32 = x_54.unity_SpecCube0_HDR.x;
  u_xlat14.x = (x_797 * x_799);
  let x_802 : vec4<f32> = u_xlat8;
  let x_804 : vec3<f32> = u_xlat14;
  let x_806 : vec3<f32> = (vec3<f32>(x_802.x, x_802.y, x_802.z) * vec3<f32>(x_804.x, x_804.x, x_804.x));
  let x_807 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : f32 = u_xlat36;
  let x_811 : f32 = u_xlat36;
  let x_815 : vec2<f32> = ((vec2<f32>(x_809, x_809) * vec2<f32>(x_811, x_811)) + vec2<f32>(-1.0f, 1.0f));
  let x_816 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_815.x, x_816.y, x_815.y);
  let x_819 : f32 = u_xlat14.z;
  u_xlat36 = (1.0f / x_819);
  let x_821 : f32 = u_xlat38;
  u_xlat38 = (x_821 + -0.039999999f);
  let x_824 : f32 = u_xlat40;
  let x_825 : f32 = u_xlat38;
  u_xlat38 = ((x_824 * x_825) + 0.039999999f);
  let x_829 : f32 = u_xlat36;
  let x_830 : f32 = u_xlat38;
  u_xlat36 = (x_829 * x_830);
  let x_832 : f32 = u_xlat36;
  let x_834 : vec4<f32> = u_xlat7;
  let x_836 : vec3<f32> = (vec3<f32>(x_832, x_832, x_832) * vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_839 : vec4<f32> = u_xlat2;
  let x_841 : vec3<f32> = u_xlat5;
  let x_843 : vec4<f32> = u_xlat7;
  let x_845 : vec3<f32> = ((vec3<f32>(x_839.x, x_839.z, x_839.w) * x_841) + vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_845.x, x_846.y, x_845.y, x_845.z);
  let x_848 : f32 = u_xlat34;
  let x_850 : f32 = x_54.unity_LightData.z;
  u_xlat34 = (x_848 * x_850);
  let x_852 : vec3<f32> = u_xlat11;
  let x_854 : vec4<f32> = x_132.x_MainLightPosition;
  u_xlat36 = dot(x_852, vec3<f32>(x_854.x, x_854.y, x_854.z));
  let x_857 : f32 = u_xlat36;
  u_xlat36 = clamp(x_857, 0.0f, 1.0f);
  let x_859 : f32 = u_xlat34;
  let x_860 : f32 = u_xlat36;
  u_xlat34 = (x_859 * x_860);
  let x_862 : f32 = u_xlat34;
  let x_864 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_862, x_862, x_862) * x_864);
  let x_866 : vec4<f32> = u_xlat4;
  let x_869 : vec4<f32> = x_132.x_MainLightPosition;
  let x_871 : vec3<f32> = (vec3<f32>(x_866.x, x_866.y, x_866.z) + vec3<f32>(x_869.x, x_869.y, x_869.z));
  let x_872 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec4<f32> = u_xlat7;
  let x_876 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_874.x, x_874.y, x_874.z), vec3<f32>(x_876.x, x_876.y, x_876.z));
  let x_879 : f32 = u_xlat34;
  u_xlat34 = max(x_879, 1.17549435e-37f);
  let x_881 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_881);
  let x_883 : f32 = u_xlat34;
  let x_885 : vec4<f32> = u_xlat7;
  let x_887 : vec3<f32> = (vec3<f32>(x_883, x_883, x_883) * vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec3<f32> = u_xlat11;
  let x_891 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(x_890, vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_894 : f32 = u_xlat34;
  u_xlat34 = clamp(x_894, 0.0f, 1.0f);
  let x_897 : vec4<f32> = x_132.x_MainLightPosition;
  let x_899 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_897.x, x_897.y, x_897.z), vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : f32 = u_xlat36;
  u_xlat36 = clamp(x_902, 0.0f, 1.0f);
  let x_904 : f32 = u_xlat34;
  let x_905 : f32 = u_xlat34;
  u_xlat34 = (x_904 * x_905);
  let x_907 : f32 = u_xlat34;
  let x_909 : f32 = u_xlat14.x;
  u_xlat34 = ((x_907 * x_909) + 1.000010014f);
  let x_913 : f32 = u_xlat36;
  let x_914 : f32 = u_xlat36;
  u_xlat36 = (x_913 * x_914);
  let x_916 : f32 = u_xlat34;
  let x_917 : f32 = u_xlat34;
  u_xlat34 = (x_916 * x_917);
  let x_919 : f32 = u_xlat36;
  u_xlat36 = max(x_919, 0.100000001f);
  let x_922 : f32 = u_xlat34;
  let x_923 : f32 = u_xlat36;
  u_xlat34 = (x_922 * x_923);
  let x_926 : f32 = u_xlat6.x;
  let x_927 : f32 = u_xlat34;
  u_xlat34 = (x_926 * x_927);
  let x_929 : f32 = u_xlat37;
  let x_930 : f32 = u_xlat34;
  u_xlat34 = (x_929 / x_930);
  let x_932 : f32 = u_xlat34;
  let x_936 : vec3<f32> = u_xlat5;
  let x_937 : vec3<f32> = ((vec3<f32>(x_932, x_932, x_932) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_936);
  let x_938 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : vec3<f32> = u_xlat17;
  let x_941 : vec4<f32> = u_xlat7;
  u_xlat17 = (x_940 * vec3<f32>(x_941.x, x_941.y, x_941.z));
  let x_946 : f32 = x_132.x_AdditionalLightsCount.x;
  let x_948 : f32 = x_54.unity_LightData.y;
  u_xlat34 = min(x_946, x_948);
  let x_952 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_952));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_964 : u32 = u_xlatu_loop_1;
    let x_965 : u32 = u_xlatu34;
    if ((x_964 < x_965)) {
    } else {
      break;
    }
    let x_968 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_968 >> 2u);
    let x_972 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_972 & 3u));
    let x_975 : u32 = u_xlatu38;
    let x_978 : vec4<f32> = x_54.unity_LightIndices[bitcast<i32>(x_975)];
    let x_988 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_993 : vec4<u32> = indexable[x_988];
    u_xlat38 = dot(x_978, bitcast<vec4<f32>>(x_993));
    let x_997 : f32 = u_xlat38;
    u_xlati38 = i32(x_997);
    let x_999 : vec3<f32> = vs_INTERP0;
    let x_1011 : i32 = u_xlati38;
    let x_1013 : vec4<f32> = x_1010.x_AdditionalLightsPosition[x_1011];
    let x_1016 : i32 = u_xlati38;
    let x_1018 : vec4<f32> = x_1010.x_AdditionalLightsPosition[x_1016];
    let x_1020 : vec3<f32> = ((-(x_999) * vec3<f32>(x_1013.w, x_1013.w, x_1013.w)) + vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
    let x_1021 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
    let x_1023 : vec4<f32> = u_xlat8;
    let x_1025 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1023.x, x_1023.y, x_1023.z), vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
    let x_1028 : f32 = u_xlat40;
    u_xlat40 = max(x_1028, 6.10351562e-05f);
    let x_1032 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1032);
    let x_1035 : f32 = u_xlat41;
    let x_1037 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1035, x_1035, x_1035) * vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
    let x_1041 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1041);
    let x_1043 : f32 = u_xlat40;
    let x_1044 : i32 = u_xlati38;
    let x_1046 : f32 = x_1010.x_AdditionalLightsAttenuation[x_1044].x;
    u_xlat40 = (x_1043 * x_1046);
    let x_1048 : f32 = u_xlat40;
    let x_1050 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1048) * x_1050) + 1.0f);
    let x_1053 : f32 = u_xlat40;
    u_xlat40 = max(x_1053, 0.0f);
    let x_1055 : f32 = u_xlat40;
    let x_1056 : f32 = u_xlat40;
    u_xlat40 = (x_1055 * x_1056);
    let x_1058 : f32 = u_xlat40;
    let x_1059 : f32 = u_xlat42;
    u_xlat40 = (x_1058 * x_1059);
    let x_1061 : i32 = u_xlati38;
    let x_1063 : vec4<f32> = x_1010.x_AdditionalLightsSpotDir[x_1061];
    let x_1065 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1063.x, x_1063.y, x_1063.z), x_1065);
    let x_1067 : f32 = u_xlat42;
    let x_1068 : i32 = u_xlati38;
    let x_1070 : f32 = x_1010.x_AdditionalLightsAttenuation[x_1068].z;
    let x_1072 : i32 = u_xlati38;
    let x_1074 : f32 = x_1010.x_AdditionalLightsAttenuation[x_1072].w;
    u_xlat42 = ((x_1067 * x_1070) + x_1074);
    let x_1076 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1076, 0.0f, 1.0f);
    let x_1078 : f32 = u_xlat42;
    let x_1079 : f32 = u_xlat42;
    u_xlat42 = (x_1078 * x_1079);
    let x_1081 : f32 = u_xlat40;
    let x_1082 : f32 = u_xlat42;
    u_xlat40 = (x_1081 * x_1082);
    let x_1085 : f32 = u_xlat25;
    let x_1087 : i32 = u_xlati38;
    let x_1089 : vec4<f32> = x_1010.x_AdditionalLightsColor[x_1087];
    u_xlat10 = (vec3<f32>(x_1085, x_1085, x_1085) * vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
    let x_1092 : vec3<f32> = u_xlat11;
    let x_1093 : vec3<f32> = u_xlat9;
    u_xlat38 = dot(x_1092, x_1093);
    let x_1095 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1095, 0.0f, 1.0f);
    let x_1097 : f32 = u_xlat38;
    let x_1098 : f32 = u_xlat40;
    u_xlat38 = (x_1097 * x_1098);
    let x_1100 : f32 = u_xlat38;
    let x_1102 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1100, x_1100, x_1100) * x_1102);
    let x_1104 : vec4<f32> = u_xlat8;
    let x_1106 : f32 = u_xlat41;
    let x_1109 : vec4<f32> = u_xlat4;
    let x_1111 : vec3<f32> = ((vec3<f32>(x_1104.x, x_1104.y, x_1104.z) * vec3<f32>(x_1106, x_1106, x_1106)) + vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
    let x_1112 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
    let x_1114 : vec4<f32> = u_xlat8;
    let x_1116 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1114.x, x_1114.y, x_1114.z), vec3<f32>(x_1116.x, x_1116.y, x_1116.z));
    let x_1119 : f32 = u_xlat38;
    u_xlat38 = max(x_1119, 1.17549435e-37f);
    let x_1121 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1121);
    let x_1123 : f32 = u_xlat38;
    let x_1125 : vec4<f32> = u_xlat8;
    let x_1127 : vec3<f32> = (vec3<f32>(x_1123, x_1123, x_1123) * vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
    let x_1128 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
    let x_1130 : vec3<f32> = u_xlat11;
    let x_1131 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_1130, vec3<f32>(x_1131.x, x_1131.y, x_1131.z));
    let x_1134 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1134, 0.0f, 1.0f);
    let x_1136 : vec3<f32> = u_xlat9;
    let x_1137 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1136, vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
    let x_1140 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1140, 0.0f, 1.0f);
    let x_1142 : f32 = u_xlat38;
    let x_1143 : f32 = u_xlat38;
    u_xlat38 = (x_1142 * x_1143);
    let x_1145 : f32 = u_xlat38;
    let x_1147 : f32 = u_xlat14.x;
    u_xlat38 = ((x_1145 * x_1147) + 1.000010014f);
    let x_1150 : f32 = u_xlat40;
    let x_1151 : f32 = u_xlat40;
    u_xlat40 = (x_1150 * x_1151);
    let x_1153 : f32 = u_xlat38;
    let x_1154 : f32 = u_xlat38;
    u_xlat38 = (x_1153 * x_1154);
    let x_1156 : f32 = u_xlat40;
    u_xlat40 = max(x_1156, 0.100000001f);
    let x_1158 : f32 = u_xlat38;
    let x_1159 : f32 = u_xlat40;
    u_xlat38 = (x_1158 * x_1159);
    let x_1162 : f32 = u_xlat6.x;
    let x_1163 : f32 = u_xlat38;
    u_xlat38 = (x_1162 * x_1163);
    let x_1165 : f32 = u_xlat37;
    let x_1166 : f32 = u_xlat38;
    u_xlat38 = (x_1165 / x_1166);
    let x_1168 : f32 = u_xlat38;
    let x_1171 : vec3<f32> = u_xlat5;
    let x_1172 : vec3<f32> = ((vec3<f32>(x_1168, x_1168, x_1168) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1171);
    let x_1173 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1172.x, x_1172.y, x_1172.z, x_1173.w);
    let x_1175 : vec4<f32> = u_xlat8;
    let x_1177 : vec3<f32> = u_xlat10;
    let x_1179 : vec4<f32> = u_xlat7;
    let x_1181 : vec3<f32> = ((vec3<f32>(x_1175.x, x_1175.y, x_1175.z) * x_1177) + vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
    let x_1182 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);

    continuing {
      let x_1184 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1184 + bitcast<u32>(1i));
    }
  }
  let x_1186 : vec4<f32> = u_xlat2;
  let x_1188 : vec3<f32> = u_xlat3;
  let x_1191 : vec3<f32> = u_xlat17;
  u_xlat11 = ((vec3<f32>(x_1186.x, x_1186.z, x_1186.w) * vec3<f32>(x_1188.x, x_1188.x, x_1188.x)) + x_1191);
  let x_1193 : vec4<f32> = u_xlat7;
  let x_1195 : vec3<f32> = u_xlat11;
  u_xlat11 = (vec3<f32>(x_1193.x, x_1193.y, x_1193.z) + x_1195);
  let x_1199 : vec4<f32> = vs_INTERP4;
  let x_1201 : vec3<f32> = u_xlat1;
  let x_1203 : vec3<f32> = u_xlat11;
  let x_1204 : vec3<f32> = ((vec3<f32>(x_1199.w, x_1199.w, x_1199.w) * x_1201) + x_1203);
  let x_1205 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
  let x_1207 : bool = u_xlatb13;
  let x_1208 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1208, x_1207);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(5) vs_INTERP5_param : vec2<f32>, @location(6) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0);
}

