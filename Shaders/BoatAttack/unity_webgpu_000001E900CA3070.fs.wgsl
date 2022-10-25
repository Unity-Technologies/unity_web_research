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
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
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

@group(1) @binding(1) var<uniform> x_1050 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  var u_xlatu0 : u32;
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
  let x_525 : f32 = x_132.x_ProjectionParams.y;
  u_xlat3.x = (-(x_521) + -(x_525));
  let x_530 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_530, 0.0f);
  let x_534 : f32 = u_xlat3.x;
  let x_537 : f32 = x_132.unity_FogParams.x;
  u_xlat3.x = (x_534 * x_537);
  let x_548 : vec2<f32> = vs_INTERP5;
  let x_550 : f32 = x_132.x_GlobalMipBias.x;
  let x_551 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_548, x_550);
  u_xlat14 = vec3<f32>(x_551.x, x_551.y, x_551.z);
  let x_555 : vec4<f32> = x_132.x_ScaledScreenParams;
  let x_556 : vec2<f32> = vec2<f32>(x_555.x, x_555.y);
  let x_560 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_556.x, x_556.y));
  let x_561 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : vec4<f32> = hlslcc_FragCoord;
  let x_567 : vec2<f32> = (vec2<f32>(x_563.x, x_563.y) * vec2<f32>(x_565.x, x_565.y));
  let x_568 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_568.w);
  let x_572 : f32 = u_xlat4.y;
  let x_575 : f32 = x_132.x_ScaleBiasRt.x;
  let x_578 : f32 = x_132.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_572 * x_575) + x_578);
  let x_582 : f32 = u_xlat15.x;
  u_xlat4.z = (-(x_582) + 1.0f);
  let x_587 : f32 = u_xlat6.x;
  u_xlat6.x = x_587;
  let x_590 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_590, 0.0f, 1.0f);
  let x_593 : f32 = u_xlat0;
  u_xlat0 = min(x_593, 1.0f);
  let x_595 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_595 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_600 : f32 = u_xlat6.x;
  u_xlat15.x = (-(x_600) + 1.0f);
  let x_606 : f32 = u_xlat15.x;
  let x_608 : f32 = u_xlat15.x;
  u_xlat37 = (x_606 * x_608);
  let x_610 : f32 = u_xlat37;
  u_xlat37 = max(x_610, 0.0078125f);
  let x_614 : f32 = u_xlat37;
  let x_615 : f32 = u_xlat37;
  u_xlat38 = (x_614 * x_615);
  let x_618 : f32 = u_xlat6.x;
  u_xlat6.x = (x_618 + 0.040000021f);
  let x_623 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_623, 1.0f);
  let x_626 : f32 = u_xlat37;
  u_xlat17.x = ((x_626 * 4.0f) + 2.0f);
  let x_636 : vec4<f32> = u_xlat4;
  let x_639 : f32 = x_132.x_GlobalMipBias.x;
  let x_640 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_636.x, x_636.z), x_639);
  u_xlat4.x = x_640.x;
  let x_645 : f32 = u_xlat4.x;
  u_xlat26 = (x_645 + -1.0f);
  let x_649 : f32 = x_132.x_AmbientOcclusionParam.w;
  let x_650 : f32 = u_xlat26;
  u_xlat26 = ((x_649 * x_650) + 1.0f);
  let x_654 : f32 = u_xlat4.x;
  let x_656 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_654, x_656);
  let x_661 : vec4<f32> = vs_INTERP9;
  let x_662 : vec2<f32> = vec2<f32>(x_661.x, x_661.y);
  let x_664 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_662.x, x_662.y, x_664);
  let x_672 : vec3<f32> = txVec1;
  let x_674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_672.xy, x_672.z);
  u_xlat28 = x_674;
  let x_675 : f32 = u_xlat28;
  let x_677 : f32 = x_232.x_MainLightShadowParams.x;
  let x_679 : f32 = u_xlat34;
  u_xlat34 = ((x_675 * x_677) + x_679);
  let x_683 : f32 = vs_INTERP9.z;
  u_xlatb28 = (0.0f >= x_683);
  let x_687 : f32 = vs_INTERP9.z;
  u_xlatb39 = (x_687 >= 1.0f);
  let x_689 : bool = u_xlatb39;
  let x_690 : bool = u_xlatb28;
  u_xlatb28 = (x_689 | x_690);
  let x_692 : bool = u_xlatb28;
  let x_693 : f32 = u_xlat34;
  u_xlat34 = select(x_693, 1.0f, x_692);
  let x_695 : vec3<f32> = vs_INTERP0;
  let x_697 : vec3<f32> = x_132.x_WorldSpaceCameraPos;
  let x_699 : vec3<f32> = (x_695 + -(x_697));
  let x_700 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec4<f32> = u_xlat7;
  let x_704 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_702.x, x_702.y, x_702.z), vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_707 : f32 = u_xlat28;
  let x_709 : f32 = x_232.x_MainLightShadowParams.z;
  let x_712 : f32 = x_232.x_MainLightShadowParams.w;
  u_xlat28 = ((x_707 * x_709) + x_712);
  let x_714 : f32 = u_xlat28;
  u_xlat28 = clamp(x_714, 0.0f, 1.0f);
  let x_717 : f32 = u_xlat34;
  u_xlat39 = (-(x_717) + 1.0f);
  let x_720 : f32 = u_xlat28;
  let x_721 : f32 = u_xlat39;
  let x_723 : f32 = u_xlat34;
  u_xlat34 = ((x_720 * x_721) + x_723);
  let x_725 : f32 = u_xlat26;
  let x_728 : vec4<f32> = x_132.x_MainLightColor;
  let x_730 : vec3<f32> = (vec3<f32>(x_725, x_725, x_725) * vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_731 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_733 : vec4<f32> = u_xlat2;
  let x_736 : vec3<f32> = u_xlat11;
  u_xlat28 = dot(-(vec3<f32>(x_733.x, x_733.z, x_733.w)), x_736);
  let x_738 : f32 = u_xlat28;
  let x_739 : f32 = u_xlat28;
  u_xlat28 = (x_738 + x_739);
  let x_742 : vec3<f32> = u_xlat11;
  let x_743 : f32 = u_xlat28;
  let x_747 : vec4<f32> = u_xlat2;
  let x_750 : vec3<f32> = ((x_742 * -(vec3<f32>(x_743, x_743, x_743))) + -(vec3<f32>(x_747.x, x_747.z, x_747.w)));
  let x_751 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
  let x_753 : vec3<f32> = u_xlat11;
  let x_754 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(x_753, vec3<f32>(x_754.x, x_754.z, x_754.w));
  let x_757 : f32 = u_xlat28;
  u_xlat28 = clamp(x_757, 0.0f, 1.0f);
  let x_759 : f32 = u_xlat28;
  u_xlat28 = (-(x_759) + 1.0f);
  let x_762 : f32 = u_xlat28;
  let x_763 : f32 = u_xlat28;
  u_xlat28 = (x_762 * x_763);
  let x_765 : f32 = u_xlat28;
  let x_766 : f32 = u_xlat28;
  u_xlat28 = (x_765 * x_766);
  let x_769 : f32 = u_xlat15.x;
  u_xlat39 = ((-(x_769) * 0.699999988f) + 1.700000048f);
  let x_776 : f32 = u_xlat15.x;
  let x_777 : f32 = u_xlat39;
  u_xlat15.x = (x_776 * x_777);
  let x_781 : f32 = u_xlat15.x;
  u_xlat15.x = (x_781 * 6.0f);
  let x_793 : vec4<f32> = u_xlat8;
  let x_796 : f32 = u_xlat15.x;
  let x_797 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_793.x, x_793.y, x_793.z), x_796);
  u_xlat8 = x_797;
  let x_799 : f32 = u_xlat8.w;
  u_xlat15.x = (x_799 + -1.0f);
  let x_803 : f32 = x_54.unity_SpecCube0_HDR.w;
  let x_805 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_803 * x_805) + 1.0f);
  let x_810 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_810, 0.0f);
  let x_814 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_814);
  let x_818 : f32 = u_xlat15.x;
  let x_820 : f32 = x_54.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_818 * x_820);
  let x_824 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_824);
  let x_828 : f32 = u_xlat15.x;
  let x_830 : f32 = x_54.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_828 * x_830);
  let x_833 : vec4<f32> = u_xlat8;
  let x_835 : vec3<f32> = u_xlat15;
  let x_837 : vec3<f32> = (vec3<f32>(x_833.x, x_833.y, x_833.z) * vec3<f32>(x_835.x, x_835.x, x_835.x));
  let x_838 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : f32 = u_xlat37;
  let x_842 : f32 = u_xlat37;
  let x_846 : vec2<f32> = ((vec2<f32>(x_840, x_840) * vec2<f32>(x_842, x_842)) + vec2<f32>(-1.0f, 1.0f));
  let x_847 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_846.x, x_847.y, x_846.y);
  let x_850 : f32 = u_xlat15.z;
  u_xlat37 = (1.0f / x_850);
  let x_853 : f32 = u_xlat6.x;
  u_xlat6.x = (x_853 + -0.039999999f);
  let x_857 : f32 = u_xlat28;
  let x_859 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_857 * x_859) + 0.039999999f);
  let x_864 : f32 = u_xlat37;
  let x_866 : f32 = u_xlat6.x;
  u_xlat37 = (x_864 * x_866);
  let x_868 : f32 = u_xlat37;
  let x_870 : vec4<f32> = u_xlat8;
  let x_872 : vec3<f32> = (vec3<f32>(x_868, x_868, x_868) * vec3<f32>(x_870.x, x_870.y, x_870.z));
  let x_873 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_872.x, x_873.y, x_872.y, x_872.z);
  let x_875 : vec3<f32> = u_xlat14;
  let x_876 : vec3<f32> = u_xlat5;
  let x_878 : vec4<f32> = u_xlat6;
  u_xlat14 = ((x_875 * x_876) + vec3<f32>(x_878.x, x_878.z, x_878.w));
  let x_881 : f32 = u_xlat34;
  let x_883 : f32 = x_54.unity_LightData.z;
  u_xlat34 = (x_881 * x_883);
  let x_885 : vec3<f32> = u_xlat11;
  let x_887 : vec4<f32> = x_132.x_MainLightPosition;
  u_xlat37 = dot(x_885, vec3<f32>(x_887.x, x_887.y, x_887.z));
  let x_890 : f32 = u_xlat37;
  u_xlat37 = clamp(x_890, 0.0f, 1.0f);
  let x_892 : f32 = u_xlat34;
  let x_893 : f32 = u_xlat37;
  u_xlat34 = (x_892 * x_893);
  let x_895 : f32 = u_xlat34;
  let x_897 : vec4<f32> = u_xlat7;
  let x_899 : vec3<f32> = (vec3<f32>(x_895, x_895, x_895) * vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_899.x, x_900.y, x_899.y, x_899.z);
  let x_902 : vec4<f32> = u_xlat2;
  let x_905 : vec4<f32> = x_132.x_MainLightPosition;
  let x_907 : vec3<f32> = (vec3<f32>(x_902.x, x_902.z, x_902.w) + vec3<f32>(x_905.x, x_905.y, x_905.z));
  let x_908 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_910 : vec4<f32> = u_xlat7;
  let x_912 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_910.x, x_910.y, x_910.z), vec3<f32>(x_912.x, x_912.y, x_912.z));
  let x_915 : f32 = u_xlat34;
  u_xlat34 = max(x_915, 1.17549435e-37f);
  let x_917 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_917);
  let x_919 : f32 = u_xlat34;
  let x_921 : vec4<f32> = u_xlat7;
  let x_923 : vec3<f32> = (vec3<f32>(x_919, x_919, x_919) * vec3<f32>(x_921.x, x_921.y, x_921.z));
  let x_924 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_926 : vec3<f32> = u_xlat11;
  let x_927 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(x_926, vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_930 : f32 = u_xlat34;
  u_xlat34 = clamp(x_930, 0.0f, 1.0f);
  let x_933 : vec4<f32> = x_132.x_MainLightPosition;
  let x_935 : vec4<f32> = u_xlat7;
  u_xlat37 = dot(vec3<f32>(x_933.x, x_933.y, x_933.z), vec3<f32>(x_935.x, x_935.y, x_935.z));
  let x_938 : f32 = u_xlat37;
  u_xlat37 = clamp(x_938, 0.0f, 1.0f);
  let x_940 : f32 = u_xlat34;
  let x_941 : f32 = u_xlat34;
  u_xlat34 = (x_940 * x_941);
  let x_943 : f32 = u_xlat34;
  let x_945 : f32 = u_xlat15.x;
  u_xlat34 = ((x_943 * x_945) + 1.000010014f);
  let x_949 : f32 = u_xlat37;
  let x_950 : f32 = u_xlat37;
  u_xlat37 = (x_949 * x_950);
  let x_952 : f32 = u_xlat34;
  let x_953 : f32 = u_xlat34;
  u_xlat34 = (x_952 * x_953);
  let x_955 : f32 = u_xlat37;
  u_xlat37 = max(x_955, 0.100000001f);
  let x_958 : f32 = u_xlat34;
  let x_959 : f32 = u_xlat37;
  u_xlat34 = (x_958 * x_959);
  let x_962 : f32 = u_xlat17.x;
  let x_963 : f32 = u_xlat34;
  u_xlat34 = (x_962 * x_963);
  let x_965 : f32 = u_xlat38;
  let x_966 : f32 = u_xlat34;
  u_xlat34 = (x_965 / x_966);
  let x_968 : f32 = u_xlat34;
  let x_972 : vec3<f32> = u_xlat5;
  let x_973 : vec3<f32> = ((vec3<f32>(x_968, x_968, x_968) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_972);
  let x_974 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : vec4<f32> = u_xlat6;
  let x_978 : vec4<f32> = u_xlat7;
  let x_980 : vec3<f32> = (vec3<f32>(x_976.x, x_976.z, x_976.w) * vec3<f32>(x_978.x, x_978.y, x_978.z));
  let x_981 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_980.x, x_981.y, x_980.y, x_980.z);
  let x_985 : f32 = x_132.x_AdditionalLightsCount.x;
  let x_987 : f32 = x_54.unity_LightData.y;
  u_xlat34 = min(x_985, x_987);
  let x_991 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_991));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1003 : u32 = u_xlatu_loop_1;
    let x_1004 : u32 = u_xlatu34;
    if ((x_1003 < x_1004)) {
    } else {
      break;
    }
    let x_1007 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1007 >> 2u);
    let x_1011 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1011 & 3u));
    let x_1015 : u32 = u_xlatu40;
    let x_1018 : vec4<f32> = x_54.unity_LightIndices[bitcast<i32>(x_1015)];
    let x_1028 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1033 : vec4<u32> = indexable[x_1028];
    u_xlat40 = dot(x_1018, bitcast<vec4<f32>>(x_1033));
    let x_1037 : f32 = u_xlat40;
    u_xlati40 = i32(x_1037);
    let x_1039 : vec3<f32> = vs_INTERP0;
    let x_1051 : i32 = u_xlati40;
    let x_1053 : vec4<f32> = x_1050.x_AdditionalLightsPosition[x_1051];
    let x_1056 : i32 = u_xlati40;
    let x_1058 : vec4<f32> = x_1050.x_AdditionalLightsPosition[x_1056];
    let x_1060 : vec3<f32> = ((-(x_1039) * vec3<f32>(x_1053.w, x_1053.w, x_1053.w)) + vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
    let x_1061 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
    let x_1064 : vec4<f32> = u_xlat8;
    let x_1066 : vec4<f32> = u_xlat8;
    u_xlat41 = dot(vec3<f32>(x_1064.x, x_1064.y, x_1064.z), vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
    let x_1069 : f32 = u_xlat41;
    u_xlat41 = max(x_1069, 6.10351562e-05f);
    let x_1073 : f32 = u_xlat41;
    u_xlat9 = inverseSqrt(x_1073);
    let x_1076 : vec4<f32> = u_xlat8;
    let x_1078 : f32 = u_xlat9;
    u_xlat20 = (vec3<f32>(x_1076.x, x_1076.y, x_1076.z) * vec3<f32>(x_1078, x_1078, x_1078));
    let x_1082 : f32 = u_xlat41;
    u_xlat10.x = (1.0f / x_1082);
    let x_1085 : f32 = u_xlat41;
    let x_1086 : i32 = u_xlati40;
    let x_1088 : f32 = x_1050.x_AdditionalLightsAttenuation[x_1086].x;
    u_xlat41 = (x_1085 * x_1088);
    let x_1090 : f32 = u_xlat41;
    let x_1092 : f32 = u_xlat41;
    u_xlat41 = ((-(x_1090) * x_1092) + 1.0f);
    let x_1095 : f32 = u_xlat41;
    u_xlat41 = max(x_1095, 0.0f);
    let x_1097 : f32 = u_xlat41;
    let x_1098 : f32 = u_xlat41;
    u_xlat41 = (x_1097 * x_1098);
    let x_1100 : f32 = u_xlat41;
    let x_1102 : f32 = u_xlat10.x;
    u_xlat41 = (x_1100 * x_1102);
    let x_1104 : i32 = u_xlati40;
    let x_1106 : vec4<f32> = x_1050.x_AdditionalLightsSpotDir[x_1104];
    let x_1108 : vec3<f32> = u_xlat20;
    u_xlat10.x = dot(vec3<f32>(x_1106.x, x_1106.y, x_1106.z), x_1108);
    let x_1112 : f32 = u_xlat10.x;
    let x_1113 : i32 = u_xlati40;
    let x_1115 : f32 = x_1050.x_AdditionalLightsAttenuation[x_1113].z;
    let x_1117 : i32 = u_xlati40;
    let x_1119 : f32 = x_1050.x_AdditionalLightsAttenuation[x_1117].w;
    u_xlat10.x = ((x_1112 * x_1115) + x_1119);
    let x_1123 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1123, 0.0f, 1.0f);
    let x_1127 : f32 = u_xlat10.x;
    let x_1129 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1127 * x_1129);
    let x_1132 : f32 = u_xlat41;
    let x_1134 : f32 = u_xlat10.x;
    u_xlat41 = (x_1132 * x_1134);
    let x_1136 : f32 = u_xlat26;
    let x_1138 : i32 = u_xlati40;
    let x_1140 : vec4<f32> = x_1050.x_AdditionalLightsColor[x_1138];
    u_xlat10 = (vec3<f32>(x_1136, x_1136, x_1136) * vec3<f32>(x_1140.x, x_1140.y, x_1140.z));
    let x_1143 : vec3<f32> = u_xlat11;
    let x_1144 : vec3<f32> = u_xlat20;
    u_xlat40 = dot(x_1143, x_1144);
    let x_1146 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1146, 0.0f, 1.0f);
    let x_1148 : f32 = u_xlat40;
    let x_1149 : f32 = u_xlat41;
    u_xlat40 = (x_1148 * x_1149);
    let x_1151 : f32 = u_xlat40;
    let x_1153 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1151, x_1151, x_1151) * x_1153);
    let x_1155 : vec4<f32> = u_xlat8;
    let x_1157 : f32 = u_xlat9;
    let x_1160 : vec4<f32> = u_xlat2;
    let x_1162 : vec3<f32> = ((vec3<f32>(x_1155.x, x_1155.y, x_1155.z) * vec3<f32>(x_1157, x_1157, x_1157)) + vec3<f32>(x_1160.x, x_1160.z, x_1160.w));
    let x_1163 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1163.w);
    let x_1165 : vec4<f32> = u_xlat8;
    let x_1167 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1165.x, x_1165.y, x_1165.z), vec3<f32>(x_1167.x, x_1167.y, x_1167.z));
    let x_1170 : f32 = u_xlat40;
    u_xlat40 = max(x_1170, 1.17549435e-37f);
    let x_1172 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1172);
    let x_1174 : f32 = u_xlat40;
    let x_1176 : vec4<f32> = u_xlat8;
    let x_1178 : vec3<f32> = (vec3<f32>(x_1174, x_1174, x_1174) * vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
    let x_1179 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
    let x_1181 : vec3<f32> = u_xlat11;
    let x_1182 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1181, vec3<f32>(x_1182.x, x_1182.y, x_1182.z));
    let x_1185 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1185, 0.0f, 1.0f);
    let x_1187 : vec3<f32> = u_xlat20;
    let x_1188 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_1187, vec3<f32>(x_1188.x, x_1188.y, x_1188.z));
    let x_1193 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1193, 0.0f, 1.0f);
    let x_1196 : f32 = u_xlat40;
    let x_1197 : f32 = u_xlat40;
    u_xlat40 = (x_1196 * x_1197);
    let x_1199 : f32 = u_xlat40;
    let x_1201 : f32 = u_xlat15.x;
    u_xlat40 = ((x_1199 * x_1201) + 1.000010014f);
    let x_1205 : f32 = u_xlat8.x;
    let x_1207 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1205 * x_1207);
    let x_1210 : f32 = u_xlat40;
    let x_1211 : f32 = u_xlat40;
    u_xlat40 = (x_1210 * x_1211);
    let x_1214 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1214, 0.100000001f);
    let x_1217 : f32 = u_xlat40;
    let x_1219 : f32 = u_xlat8.x;
    u_xlat40 = (x_1217 * x_1219);
    let x_1222 : f32 = u_xlat17.x;
    let x_1223 : f32 = u_xlat40;
    u_xlat40 = (x_1222 * x_1223);
    let x_1225 : f32 = u_xlat38;
    let x_1226 : f32 = u_xlat40;
    u_xlat40 = (x_1225 / x_1226);
    let x_1228 : f32 = u_xlat40;
    let x_1231 : vec3<f32> = u_xlat5;
    let x_1232 : vec3<f32> = ((vec3<f32>(x_1228, x_1228, x_1228) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1231);
    let x_1233 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
    let x_1235 : vec4<f32> = u_xlat8;
    let x_1237 : vec3<f32> = u_xlat10;
    let x_1239 : vec4<f32> = u_xlat7;
    let x_1241 : vec3<f32> = ((vec3<f32>(x_1235.x, x_1235.y, x_1235.z) * x_1237) + vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
    let x_1242 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);

    continuing {
      let x_1244 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1244 + bitcast<u32>(1i));
    }
  }
  let x_1246 : vec3<f32> = u_xlat14;
  let x_1247 : vec4<f32> = u_xlat4;
  let x_1250 : vec4<f32> = u_xlat6;
  u_xlat11 = ((x_1246 * vec3<f32>(x_1247.x, x_1247.x, x_1247.x)) + vec3<f32>(x_1250.x, x_1250.z, x_1250.w));
  let x_1253 : vec4<f32> = u_xlat7;
  let x_1255 : vec3<f32> = u_xlat11;
  u_xlat11 = (vec3<f32>(x_1253.x, x_1253.y, x_1253.z) + x_1255);
  let x_1257 : vec4<f32> = vs_INTERP4;
  let x_1259 : vec3<f32> = u_xlat1;
  let x_1261 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_1257.w, x_1257.w, x_1257.w) * x_1259) + x_1261);
  let x_1264 : f32 = u_xlat3.x;
  let x_1266 : f32 = u_xlat3.x;
  u_xlat1.x = (x_1264 * -(x_1266));
  let x_1271 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1271);
  let x_1274 : vec3<f32> = u_xlat11;
  let x_1277 : vec4<f32> = x_132.unity_FogColor;
  u_xlat11 = (x_1274 + -(vec3<f32>(x_1277.x, x_1277.y, x_1277.z)));
  let x_1283 : vec3<f32> = u_xlat1;
  let x_1285 : vec3<f32> = u_xlat11;
  let x_1288 : vec4<f32> = x_132.unity_FogColor;
  let x_1290 : vec3<f32> = ((vec3<f32>(x_1283.x, x_1283.x, x_1283.x) * x_1285) + vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1291 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1291.w);
  let x_1293 : bool = u_xlatb13;
  let x_1294 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1294, x_1293);
  let x_1302 : u32 = x_132.x_RenderingLayerMaxInt;
  let x_1304 : f32 = x_54.unity_RenderingLayer.x;
  u_xlatu0 = (x_1302 & bitcast<u32>(x_1304));
  let x_1307 : u32 = u_xlatu0;
  u_xlat0 = f32(x_1307);
  let x_1310 : f32 = u_xlat0;
  let x_1312 : f32 = x_132.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1310 * x_1312);
  let x_1316 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1316, 0.0f, 1.0f);
  let x_1320 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1320.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

