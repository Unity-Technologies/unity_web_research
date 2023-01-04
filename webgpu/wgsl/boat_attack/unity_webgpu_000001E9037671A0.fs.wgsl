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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(1) @binding(1) var<uniform> x_1049 : AdditionalLights;

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
  var x_480 : vec3<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat26 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlatb28 : bool;
  var u_xlatb39 : bool;
  var u_xlat39 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatu34 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati8 : i32;
  var u_xlat40 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati40 : i32;
  var u_xlat41 : f32;
  var u_xlat9 : f32;
  var u_xlat20 : vec3<f32>;
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
  let x_451 : f32 = x_132.unity_OrthoParams.w;
  u_xlatb2 = (x_451 == 0.0f);
  let x_453 : vec3<f32> = vs_INTERP0;
  let x_458 : vec3<f32> = x_132.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_453) + x_458);
  let x_460 : vec3<f32> = u_xlat3;
  let x_461 : vec3<f32> = u_xlat3;
  u_xlat24 = dot(x_460, x_461);
  let x_463 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_463);
  let x_465 : f32 = u_xlat24;
  let x_467 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_465, x_465, x_465) * x_467);
  let x_471 : f32 = x_132.unity_MatrixV[0i].z;
  u_xlat4.x = x_471;
  let x_474 : f32 = x_132.unity_MatrixV[1i].z;
  u_xlat4.y = x_474;
  let x_477 : f32 = x_132.unity_MatrixV[2i].z;
  u_xlat4.z = x_477;
  let x_479 : bool = u_xlatb2;
  if (x_479) {
    let x_483 : vec3<f32> = u_xlat3;
    x_480 = x_483;
  } else {
    let x_485 : vec4<f32> = u_xlat4;
    x_480 = vec3<f32>(x_485.x, x_485.y, x_485.z);
  }
  let x_487 : vec3<f32> = x_480;
  let x_488 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_487.x, x_488.y, x_487.y, x_487.z);
  let x_491 : f32 = vs_INTERP0.y;
  let x_493 : f32 = x_132.unity_MatrixV[1i].z;
  u_xlat3.x = (x_491 * x_493);
  let x_497 : f32 = x_132.unity_MatrixV[0i].z;
  let x_499 : f32 = vs_INTERP0.x;
  let x_502 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_497 * x_499) + x_502);
  let x_506 : f32 = x_132.unity_MatrixV[2i].z;
  let x_508 : f32 = vs_INTERP0.z;
  let x_511 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_506 * x_508) + x_511);
  let x_515 : f32 = u_xlat3.x;
  let x_517 : f32 = x_132.unity_MatrixV[3i].z;
  u_xlat3.x = (x_515 + x_517);
  let x_521 : f32 = u_xlat3.x;
  let x_524 : f32 = x_132.x_ProjectionParams.y;
  u_xlat3.x = (-(x_521) + -(x_524));
  let x_529 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_529, 0.0f);
  let x_533 : f32 = u_xlat3.x;
  let x_536 : f32 = x_132.unity_FogParams.x;
  u_xlat3.x = (x_533 * x_536);
  let x_547 : vec2<f32> = vs_INTERP5;
  let x_549 : f32 = x_132.x_GlobalMipBias.x;
  let x_550 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_547, x_549);
  u_xlat14 = vec3<f32>(x_550.x, x_550.y, x_550.z);
  let x_554 : vec4<f32> = x_132.x_ScaledScreenParams;
  let x_555 : vec2<f32> = vec2<f32>(x_554.x, x_554.y);
  let x_559 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_555.x, x_555.y));
  let x_560 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
  let x_562 : vec4<f32> = u_xlat4;
  let x_564 : vec4<f32> = hlslcc_FragCoord;
  let x_566 : vec2<f32> = (vec2<f32>(x_562.x, x_562.y) * vec2<f32>(x_564.x, x_564.y));
  let x_567 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_566.x, x_566.y, x_567.z, x_567.w);
  let x_571 : f32 = u_xlat4.y;
  let x_574 : f32 = x_132.x_ScaleBiasRt.x;
  let x_577 : f32 = x_132.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_571 * x_574) + x_577);
  let x_581 : f32 = u_xlat15.x;
  u_xlat4.z = (-(x_581) + 1.0f);
  let x_586 : f32 = u_xlat6.x;
  u_xlat6.x = x_586;
  let x_589 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_589, 0.0f, 1.0f);
  let x_592 : f32 = u_xlat0;
  u_xlat0 = min(x_592, 1.0f);
  let x_594 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_594 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_599 : f32 = u_xlat6.x;
  u_xlat15.x = (-(x_599) + 1.0f);
  let x_605 : f32 = u_xlat15.x;
  let x_607 : f32 = u_xlat15.x;
  u_xlat37 = (x_605 * x_607);
  let x_609 : f32 = u_xlat37;
  u_xlat37 = max(x_609, 0.0078125f);
  let x_613 : f32 = u_xlat37;
  let x_614 : f32 = u_xlat37;
  u_xlat38 = (x_613 * x_614);
  let x_617 : f32 = u_xlat6.x;
  u_xlat6.x = (x_617 + 0.040000021f);
  let x_622 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_622, 1.0f);
  let x_625 : f32 = u_xlat37;
  u_xlat17.x = ((x_625 * 4.0f) + 2.0f);
  let x_635 : vec4<f32> = u_xlat4;
  let x_638 : f32 = x_132.x_GlobalMipBias.x;
  let x_639 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_635.x, x_635.z), x_638);
  u_xlat4.x = x_639.x;
  let x_644 : f32 = u_xlat4.x;
  u_xlat26 = (x_644 + -1.0f);
  let x_648 : f32 = x_132.x_AmbientOcclusionParam.w;
  let x_649 : f32 = u_xlat26;
  u_xlat26 = ((x_648 * x_649) + 1.0f);
  let x_653 : f32 = u_xlat4.x;
  let x_655 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_653, x_655);
  let x_660 : vec4<f32> = vs_INTERP9;
  let x_661 : vec2<f32> = vec2<f32>(x_660.x, x_660.y);
  let x_663 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_661.x, x_661.y, x_663);
  let x_671 : vec3<f32> = txVec1;
  let x_673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_671.xy, x_671.z);
  u_xlat28 = x_673;
  let x_674 : f32 = u_xlat28;
  let x_676 : f32 = x_232.x_MainLightShadowParams.x;
  let x_678 : f32 = u_xlat34;
  u_xlat34 = ((x_674 * x_676) + x_678);
  let x_682 : f32 = vs_INTERP9.z;
  u_xlatb28 = (0.0f >= x_682);
  let x_686 : f32 = vs_INTERP9.z;
  u_xlatb39 = (x_686 >= 1.0f);
  let x_688 : bool = u_xlatb39;
  let x_689 : bool = u_xlatb28;
  u_xlatb28 = (x_688 | x_689);
  let x_691 : bool = u_xlatb28;
  let x_692 : f32 = u_xlat34;
  u_xlat34 = select(x_692, 1.0f, x_691);
  let x_694 : vec3<f32> = vs_INTERP0;
  let x_696 : vec3<f32> = x_132.x_WorldSpaceCameraPos;
  let x_698 : vec3<f32> = (x_694 + -(x_696));
  let x_699 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat7;
  let x_703 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_701.x, x_701.y, x_701.z), vec3<f32>(x_703.x, x_703.y, x_703.z));
  let x_706 : f32 = u_xlat28;
  let x_708 : f32 = x_232.x_MainLightShadowParams.z;
  let x_711 : f32 = x_232.x_MainLightShadowParams.w;
  u_xlat28 = ((x_706 * x_708) + x_711);
  let x_713 : f32 = u_xlat28;
  u_xlat28 = clamp(x_713, 0.0f, 1.0f);
  let x_716 : f32 = u_xlat34;
  u_xlat39 = (-(x_716) + 1.0f);
  let x_719 : f32 = u_xlat28;
  let x_720 : f32 = u_xlat39;
  let x_722 : f32 = u_xlat34;
  u_xlat34 = ((x_719 * x_720) + x_722);
  let x_724 : f32 = u_xlat26;
  let x_727 : vec4<f32> = x_132.x_MainLightColor;
  let x_729 : vec3<f32> = (vec3<f32>(x_724, x_724, x_724) * vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_730 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_732 : vec4<f32> = u_xlat2;
  let x_735 : vec3<f32> = u_xlat11;
  u_xlat28 = dot(-(vec3<f32>(x_732.x, x_732.z, x_732.w)), x_735);
  let x_737 : f32 = u_xlat28;
  let x_738 : f32 = u_xlat28;
  u_xlat28 = (x_737 + x_738);
  let x_741 : vec3<f32> = u_xlat11;
  let x_742 : f32 = u_xlat28;
  let x_746 : vec4<f32> = u_xlat2;
  let x_749 : vec3<f32> = ((x_741 * -(vec3<f32>(x_742, x_742, x_742))) + -(vec3<f32>(x_746.x, x_746.z, x_746.w)));
  let x_750 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_752 : vec3<f32> = u_xlat11;
  let x_753 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(x_752, vec3<f32>(x_753.x, x_753.z, x_753.w));
  let x_756 : f32 = u_xlat28;
  u_xlat28 = clamp(x_756, 0.0f, 1.0f);
  let x_758 : f32 = u_xlat28;
  u_xlat28 = (-(x_758) + 1.0f);
  let x_761 : f32 = u_xlat28;
  let x_762 : f32 = u_xlat28;
  u_xlat28 = (x_761 * x_762);
  let x_764 : f32 = u_xlat28;
  let x_765 : f32 = u_xlat28;
  u_xlat28 = (x_764 * x_765);
  let x_768 : f32 = u_xlat15.x;
  u_xlat39 = ((-(x_768) * 0.699999988f) + 1.700000048f);
  let x_775 : f32 = u_xlat15.x;
  let x_776 : f32 = u_xlat39;
  u_xlat15.x = (x_775 * x_776);
  let x_780 : f32 = u_xlat15.x;
  u_xlat15.x = (x_780 * 6.0f);
  let x_792 : vec4<f32> = u_xlat8;
  let x_795 : f32 = u_xlat15.x;
  let x_796 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_792.x, x_792.y, x_792.z), x_795);
  u_xlat8 = x_796;
  let x_798 : f32 = u_xlat8.w;
  u_xlat15.x = (x_798 + -1.0f);
  let x_802 : f32 = x_54.unity_SpecCube0_HDR.w;
  let x_804 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_802 * x_804) + 1.0f);
  let x_809 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_809, 0.0f);
  let x_813 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_813);
  let x_817 : f32 = u_xlat15.x;
  let x_819 : f32 = x_54.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_817 * x_819);
  let x_823 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_823);
  let x_827 : f32 = u_xlat15.x;
  let x_829 : f32 = x_54.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_827 * x_829);
  let x_832 : vec4<f32> = u_xlat8;
  let x_834 : vec3<f32> = u_xlat15;
  let x_836 : vec3<f32> = (vec3<f32>(x_832.x, x_832.y, x_832.z) * vec3<f32>(x_834.x, x_834.x, x_834.x));
  let x_837 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_839 : f32 = u_xlat37;
  let x_841 : f32 = u_xlat37;
  let x_845 : vec2<f32> = ((vec2<f32>(x_839, x_839) * vec2<f32>(x_841, x_841)) + vec2<f32>(-1.0f, 1.0f));
  let x_846 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_845.x, x_846.y, x_845.y);
  let x_849 : f32 = u_xlat15.z;
  u_xlat37 = (1.0f / x_849);
  let x_852 : f32 = u_xlat6.x;
  u_xlat6.x = (x_852 + -0.039999999f);
  let x_856 : f32 = u_xlat28;
  let x_858 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_856 * x_858) + 0.039999999f);
  let x_863 : f32 = u_xlat37;
  let x_865 : f32 = u_xlat6.x;
  u_xlat37 = (x_863 * x_865);
  let x_867 : f32 = u_xlat37;
  let x_869 : vec4<f32> = u_xlat8;
  let x_871 : vec3<f32> = (vec3<f32>(x_867, x_867, x_867) * vec3<f32>(x_869.x, x_869.y, x_869.z));
  let x_872 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_871.x, x_872.y, x_871.y, x_871.z);
  let x_874 : vec3<f32> = u_xlat14;
  let x_875 : vec3<f32> = u_xlat5;
  let x_877 : vec4<f32> = u_xlat6;
  u_xlat14 = ((x_874 * x_875) + vec3<f32>(x_877.x, x_877.z, x_877.w));
  let x_880 : f32 = u_xlat34;
  let x_882 : f32 = x_54.unity_LightData.z;
  u_xlat34 = (x_880 * x_882);
  let x_884 : vec3<f32> = u_xlat11;
  let x_886 : vec4<f32> = x_132.x_MainLightPosition;
  u_xlat37 = dot(x_884, vec3<f32>(x_886.x, x_886.y, x_886.z));
  let x_889 : f32 = u_xlat37;
  u_xlat37 = clamp(x_889, 0.0f, 1.0f);
  let x_891 : f32 = u_xlat34;
  let x_892 : f32 = u_xlat37;
  u_xlat34 = (x_891 * x_892);
  let x_894 : f32 = u_xlat34;
  let x_896 : vec4<f32> = u_xlat7;
  let x_898 : vec3<f32> = (vec3<f32>(x_894, x_894, x_894) * vec3<f32>(x_896.x, x_896.y, x_896.z));
  let x_899 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_898.x, x_899.y, x_898.y, x_898.z);
  let x_901 : vec4<f32> = u_xlat2;
  let x_904 : vec4<f32> = x_132.x_MainLightPosition;
  let x_906 : vec3<f32> = (vec3<f32>(x_901.x, x_901.z, x_901.w) + vec3<f32>(x_904.x, x_904.y, x_904.z));
  let x_907 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
  let x_909 : vec4<f32> = u_xlat7;
  let x_911 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_909.x, x_909.y, x_909.z), vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_914 : f32 = u_xlat34;
  u_xlat34 = max(x_914, 1.17549435e-37f);
  let x_916 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_916);
  let x_918 : f32 = u_xlat34;
  let x_920 : vec4<f32> = u_xlat7;
  let x_922 : vec3<f32> = (vec3<f32>(x_918, x_918, x_918) * vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_923 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_922.x, x_922.y, x_922.z, x_923.w);
  let x_925 : vec3<f32> = u_xlat11;
  let x_926 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(x_925, vec3<f32>(x_926.x, x_926.y, x_926.z));
  let x_929 : f32 = u_xlat34;
  u_xlat34 = clamp(x_929, 0.0f, 1.0f);
  let x_932 : vec4<f32> = x_132.x_MainLightPosition;
  let x_934 : vec4<f32> = u_xlat7;
  u_xlat37 = dot(vec3<f32>(x_932.x, x_932.y, x_932.z), vec3<f32>(x_934.x, x_934.y, x_934.z));
  let x_937 : f32 = u_xlat37;
  u_xlat37 = clamp(x_937, 0.0f, 1.0f);
  let x_939 : f32 = u_xlat34;
  let x_940 : f32 = u_xlat34;
  u_xlat34 = (x_939 * x_940);
  let x_942 : f32 = u_xlat34;
  let x_944 : f32 = u_xlat15.x;
  u_xlat34 = ((x_942 * x_944) + 1.000010014f);
  let x_948 : f32 = u_xlat37;
  let x_949 : f32 = u_xlat37;
  u_xlat37 = (x_948 * x_949);
  let x_951 : f32 = u_xlat34;
  let x_952 : f32 = u_xlat34;
  u_xlat34 = (x_951 * x_952);
  let x_954 : f32 = u_xlat37;
  u_xlat37 = max(x_954, 0.100000001f);
  let x_957 : f32 = u_xlat34;
  let x_958 : f32 = u_xlat37;
  u_xlat34 = (x_957 * x_958);
  let x_961 : f32 = u_xlat17.x;
  let x_962 : f32 = u_xlat34;
  u_xlat34 = (x_961 * x_962);
  let x_964 : f32 = u_xlat38;
  let x_965 : f32 = u_xlat34;
  u_xlat34 = (x_964 / x_965);
  let x_967 : f32 = u_xlat34;
  let x_971 : vec3<f32> = u_xlat5;
  let x_972 : vec3<f32> = ((vec3<f32>(x_967, x_967, x_967) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_971);
  let x_973 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
  let x_975 : vec4<f32> = u_xlat6;
  let x_977 : vec4<f32> = u_xlat7;
  let x_979 : vec3<f32> = (vec3<f32>(x_975.x, x_975.z, x_975.w) * vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_979.x, x_980.y, x_979.y, x_979.z);
  let x_984 : f32 = x_132.x_AdditionalLightsCount.x;
  let x_986 : f32 = x_54.unity_LightData.y;
  u_xlat34 = min(x_984, x_986);
  let x_990 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_990));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1002 : u32 = u_xlatu_loop_1;
    let x_1003 : u32 = u_xlatu34;
    if ((x_1002 < x_1003)) {
    } else {
      break;
    }
    let x_1006 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1006 >> 2u);
    let x_1010 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1010 & 3u));
    let x_1014 : u32 = u_xlatu40;
    let x_1017 : vec4<f32> = x_54.unity_LightIndices[bitcast<i32>(x_1014)];
    let x_1027 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1032 : vec4<u32> = indexable[x_1027];
    u_xlat40 = dot(x_1017, bitcast<vec4<f32>>(x_1032));
    let x_1036 : f32 = u_xlat40;
    u_xlati40 = i32(x_1036);
    let x_1038 : vec3<f32> = vs_INTERP0;
    let x_1050 : i32 = u_xlati40;
    let x_1052 : vec4<f32> = x_1049.x_AdditionalLightsPosition[x_1050];
    let x_1055 : i32 = u_xlati40;
    let x_1057 : vec4<f32> = x_1049.x_AdditionalLightsPosition[x_1055];
    let x_1059 : vec3<f32> = ((-(x_1038) * vec3<f32>(x_1052.w, x_1052.w, x_1052.w)) + vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
    let x_1060 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
    let x_1063 : vec4<f32> = u_xlat8;
    let x_1065 : vec4<f32> = u_xlat8;
    u_xlat41 = dot(vec3<f32>(x_1063.x, x_1063.y, x_1063.z), vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
    let x_1068 : f32 = u_xlat41;
    u_xlat41 = max(x_1068, 6.10351562e-05f);
    let x_1072 : f32 = u_xlat41;
    u_xlat9 = inverseSqrt(x_1072);
    let x_1075 : vec4<f32> = u_xlat8;
    let x_1077 : f32 = u_xlat9;
    u_xlat20 = (vec3<f32>(x_1075.x, x_1075.y, x_1075.z) * vec3<f32>(x_1077, x_1077, x_1077));
    let x_1081 : f32 = u_xlat41;
    u_xlat10.x = (1.0f / x_1081);
    let x_1084 : f32 = u_xlat41;
    let x_1085 : i32 = u_xlati40;
    let x_1087 : f32 = x_1049.x_AdditionalLightsAttenuation[x_1085].x;
    u_xlat41 = (x_1084 * x_1087);
    let x_1089 : f32 = u_xlat41;
    let x_1091 : f32 = u_xlat41;
    u_xlat41 = ((-(x_1089) * x_1091) + 1.0f);
    let x_1094 : f32 = u_xlat41;
    u_xlat41 = max(x_1094, 0.0f);
    let x_1096 : f32 = u_xlat41;
    let x_1097 : f32 = u_xlat41;
    u_xlat41 = (x_1096 * x_1097);
    let x_1099 : f32 = u_xlat41;
    let x_1101 : f32 = u_xlat10.x;
    u_xlat41 = (x_1099 * x_1101);
    let x_1103 : i32 = u_xlati40;
    let x_1105 : vec4<f32> = x_1049.x_AdditionalLightsSpotDir[x_1103];
    let x_1107 : vec3<f32> = u_xlat20;
    u_xlat10.x = dot(vec3<f32>(x_1105.x, x_1105.y, x_1105.z), x_1107);
    let x_1111 : f32 = u_xlat10.x;
    let x_1112 : i32 = u_xlati40;
    let x_1114 : f32 = x_1049.x_AdditionalLightsAttenuation[x_1112].z;
    let x_1116 : i32 = u_xlati40;
    let x_1118 : f32 = x_1049.x_AdditionalLightsAttenuation[x_1116].w;
    u_xlat10.x = ((x_1111 * x_1114) + x_1118);
    let x_1122 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1122, 0.0f, 1.0f);
    let x_1126 : f32 = u_xlat10.x;
    let x_1128 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1126 * x_1128);
    let x_1131 : f32 = u_xlat41;
    let x_1133 : f32 = u_xlat10.x;
    u_xlat41 = (x_1131 * x_1133);
    let x_1135 : f32 = u_xlat26;
    let x_1137 : i32 = u_xlati40;
    let x_1139 : vec4<f32> = x_1049.x_AdditionalLightsColor[x_1137];
    u_xlat10 = (vec3<f32>(x_1135, x_1135, x_1135) * vec3<f32>(x_1139.x, x_1139.y, x_1139.z));
    let x_1142 : vec3<f32> = u_xlat11;
    let x_1143 : vec3<f32> = u_xlat20;
    u_xlat40 = dot(x_1142, x_1143);
    let x_1145 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1145, 0.0f, 1.0f);
    let x_1147 : f32 = u_xlat40;
    let x_1148 : f32 = u_xlat41;
    u_xlat40 = (x_1147 * x_1148);
    let x_1150 : f32 = u_xlat40;
    let x_1152 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1150, x_1150, x_1150) * x_1152);
    let x_1154 : vec4<f32> = u_xlat8;
    let x_1156 : f32 = u_xlat9;
    let x_1159 : vec4<f32> = u_xlat2;
    let x_1161 : vec3<f32> = ((vec3<f32>(x_1154.x, x_1154.y, x_1154.z) * vec3<f32>(x_1156, x_1156, x_1156)) + vec3<f32>(x_1159.x, x_1159.z, x_1159.w));
    let x_1162 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
    let x_1164 : vec4<f32> = u_xlat8;
    let x_1166 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1164.x, x_1164.y, x_1164.z), vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
    let x_1169 : f32 = u_xlat40;
    u_xlat40 = max(x_1169, 1.17549435e-37f);
    let x_1171 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1171);
    let x_1173 : f32 = u_xlat40;
    let x_1175 : vec4<f32> = u_xlat8;
    let x_1177 : vec3<f32> = (vec3<f32>(x_1173, x_1173, x_1173) * vec3<f32>(x_1175.x, x_1175.y, x_1175.z));
    let x_1178 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
    let x_1180 : vec3<f32> = u_xlat11;
    let x_1181 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1180, vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
    let x_1184 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1184, 0.0f, 1.0f);
    let x_1186 : vec3<f32> = u_xlat20;
    let x_1187 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_1186, vec3<f32>(x_1187.x, x_1187.y, x_1187.z));
    let x_1192 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1192, 0.0f, 1.0f);
    let x_1195 : f32 = u_xlat40;
    let x_1196 : f32 = u_xlat40;
    u_xlat40 = (x_1195 * x_1196);
    let x_1198 : f32 = u_xlat40;
    let x_1200 : f32 = u_xlat15.x;
    u_xlat40 = ((x_1198 * x_1200) + 1.000010014f);
    let x_1204 : f32 = u_xlat8.x;
    let x_1206 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1204 * x_1206);
    let x_1209 : f32 = u_xlat40;
    let x_1210 : f32 = u_xlat40;
    u_xlat40 = (x_1209 * x_1210);
    let x_1213 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1213, 0.100000001f);
    let x_1216 : f32 = u_xlat40;
    let x_1218 : f32 = u_xlat8.x;
    u_xlat40 = (x_1216 * x_1218);
    let x_1221 : f32 = u_xlat17.x;
    let x_1222 : f32 = u_xlat40;
    u_xlat40 = (x_1221 * x_1222);
    let x_1224 : f32 = u_xlat38;
    let x_1225 : f32 = u_xlat40;
    u_xlat40 = (x_1224 / x_1225);
    let x_1227 : f32 = u_xlat40;
    let x_1230 : vec3<f32> = u_xlat5;
    let x_1231 : vec3<f32> = ((vec3<f32>(x_1227, x_1227, x_1227) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1230);
    let x_1232 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1231.x, x_1231.y, x_1231.z, x_1232.w);
    let x_1234 : vec4<f32> = u_xlat8;
    let x_1236 : vec3<f32> = u_xlat10;
    let x_1238 : vec4<f32> = u_xlat7;
    let x_1240 : vec3<f32> = ((vec3<f32>(x_1234.x, x_1234.y, x_1234.z) * x_1236) + vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
    let x_1241 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);

    continuing {
      let x_1243 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1243 + bitcast<u32>(1i));
    }
  }
  let x_1245 : vec3<f32> = u_xlat14;
  let x_1246 : vec4<f32> = u_xlat4;
  let x_1249 : vec4<f32> = u_xlat6;
  u_xlat11 = ((x_1245 * vec3<f32>(x_1246.x, x_1246.x, x_1246.x)) + vec3<f32>(x_1249.x, x_1249.z, x_1249.w));
  let x_1252 : vec4<f32> = u_xlat7;
  let x_1254 : vec3<f32> = u_xlat11;
  u_xlat11 = (vec3<f32>(x_1252.x, x_1252.y, x_1252.z) + x_1254);
  let x_1256 : vec4<f32> = vs_INTERP4;
  let x_1258 : vec3<f32> = u_xlat1;
  let x_1260 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_1256.w, x_1256.w, x_1256.w) * x_1258) + x_1260);
  let x_1263 : f32 = u_xlat3.x;
  let x_1265 : f32 = u_xlat3.x;
  u_xlat1.x = (x_1263 * -(x_1265));
  let x_1270 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1270);
  let x_1273 : vec3<f32> = u_xlat11;
  let x_1276 : vec4<f32> = x_132.unity_FogColor;
  u_xlat11 = (x_1273 + -(vec3<f32>(x_1276.x, x_1276.y, x_1276.z)));
  let x_1282 : vec3<f32> = u_xlat1;
  let x_1284 : vec3<f32> = u_xlat11;
  let x_1287 : vec4<f32> = x_132.unity_FogColor;
  let x_1289 : vec3<f32> = ((vec3<f32>(x_1282.x, x_1282.x, x_1282.x) * x_1284) + vec3<f32>(x_1287.x, x_1287.y, x_1287.z));
  let x_1290 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
  let x_1292 : bool = u_xlatb13;
  let x_1293 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1293, x_1292);
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

