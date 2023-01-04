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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_132 : PGlobals;

@group(1) @binding(4) var<uniform> x_142 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_232 : MainLightShadows;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1086 : AdditionalLights;

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
  let x_547 : vec2<f32> = vs_INTERP5;
  let x_549 : f32 = x_132.x_GlobalMipBias.x;
  let x_550 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_547, x_549);
  u_xlat4 = x_550;
  let x_556 : vec2<f32> = vs_INTERP5;
  let x_558 : f32 = x_132.x_GlobalMipBias.x;
  let x_559 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_556, x_558);
  u_xlat14 = vec3<f32>(x_559.x, x_559.y, x_559.z);
  let x_561 : vec4<f32> = u_xlat4;
  let x_565 : vec3<f32> = (vec3<f32>(x_561.x, x_561.y, x_561.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_566 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_568 : vec3<f32> = u_xlat11;
  let x_569 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(x_568, vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_574 : f32 = u_xlat4.x;
  u_xlat4.x = (x_574 + 0.5f);
  let x_577 : vec3<f32> = u_xlat14;
  let x_578 : vec4<f32> = u_xlat4;
  u_xlat14 = (x_577 * vec3<f32>(x_578.x, x_578.x, x_578.x));
  let x_582 : f32 = u_xlat4.w;
  u_xlat4.x = max(x_582, 0.0001f);
  let x_585 : vec3<f32> = u_xlat14;
  let x_586 : vec4<f32> = u_xlat4;
  u_xlat14 = (x_585 / vec3<f32>(x_586.x, x_586.x, x_586.x));
  let x_591 : vec4<f32> = x_132.x_ScaledScreenParams;
  let x_592 : vec2<f32> = vec2<f32>(x_591.x, x_591.y);
  let x_596 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_592.x, x_592.y));
  let x_597 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_596.x, x_596.y, x_597.z, x_597.w);
  let x_599 : vec4<f32> = u_xlat4;
  let x_601 : vec4<f32> = hlslcc_FragCoord;
  let x_603 : vec2<f32> = (vec2<f32>(x_599.x, x_599.y) * vec2<f32>(x_601.x, x_601.y));
  let x_604 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
  let x_608 : f32 = u_xlat4.y;
  let x_611 : f32 = x_132.x_ScaleBiasRt.x;
  let x_614 : f32 = x_132.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_608 * x_611) + x_614);
  let x_618 : f32 = u_xlat15.x;
  u_xlat4.z = (-(x_618) + 1.0f);
  let x_623 : f32 = u_xlat6.x;
  u_xlat6.x = x_623;
  let x_626 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_626, 0.0f, 1.0f);
  let x_629 : f32 = u_xlat0;
  u_xlat0 = min(x_629, 1.0f);
  let x_631 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_631 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_636 : f32 = u_xlat6.x;
  u_xlat15.x = (-(x_636) + 1.0f);
  let x_642 : f32 = u_xlat15.x;
  let x_644 : f32 = u_xlat15.x;
  u_xlat37 = (x_642 * x_644);
  let x_646 : f32 = u_xlat37;
  u_xlat37 = max(x_646, 0.0078125f);
  let x_650 : f32 = u_xlat37;
  let x_651 : f32 = u_xlat37;
  u_xlat38 = (x_650 * x_651);
  let x_654 : f32 = u_xlat6.x;
  u_xlat6.x = (x_654 + 0.040000021f);
  let x_659 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_659, 1.0f);
  let x_662 : f32 = u_xlat37;
  u_xlat17.x = ((x_662 * 4.0f) + 2.0f);
  let x_672 : vec4<f32> = u_xlat4;
  let x_675 : f32 = x_132.x_GlobalMipBias.x;
  let x_676 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_672.x, x_672.z), x_675);
  u_xlat4.x = x_676.x;
  let x_681 : f32 = u_xlat4.x;
  u_xlat26 = (x_681 + -1.0f);
  let x_685 : f32 = x_132.x_AmbientOcclusionParam.w;
  let x_686 : f32 = u_xlat26;
  u_xlat26 = ((x_685 * x_686) + 1.0f);
  let x_690 : f32 = u_xlat4.x;
  let x_692 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_690, x_692);
  let x_697 : vec4<f32> = vs_INTERP9;
  let x_698 : vec2<f32> = vec2<f32>(x_697.x, x_697.y);
  let x_700 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_698.x, x_698.y, x_700);
  let x_708 : vec3<f32> = txVec1;
  let x_710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_708.xy, x_708.z);
  u_xlat28 = x_710;
  let x_711 : f32 = u_xlat28;
  let x_713 : f32 = x_232.x_MainLightShadowParams.x;
  let x_715 : f32 = u_xlat34;
  u_xlat34 = ((x_711 * x_713) + x_715);
  let x_719 : f32 = vs_INTERP9.z;
  u_xlatb28 = (0.0f >= x_719);
  let x_723 : f32 = vs_INTERP9.z;
  u_xlatb39 = (x_723 >= 1.0f);
  let x_725 : bool = u_xlatb39;
  let x_726 : bool = u_xlatb28;
  u_xlatb28 = (x_725 | x_726);
  let x_728 : bool = u_xlatb28;
  let x_729 : f32 = u_xlat34;
  u_xlat34 = select(x_729, 1.0f, x_728);
  let x_731 : vec3<f32> = vs_INTERP0;
  let x_733 : vec3<f32> = x_132.x_WorldSpaceCameraPos;
  let x_735 : vec3<f32> = (x_731 + -(x_733));
  let x_736 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_738 : vec4<f32> = u_xlat7;
  let x_740 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_738.x, x_738.y, x_738.z), vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : f32 = u_xlat28;
  let x_745 : f32 = x_232.x_MainLightShadowParams.z;
  let x_748 : f32 = x_232.x_MainLightShadowParams.w;
  u_xlat28 = ((x_743 * x_745) + x_748);
  let x_750 : f32 = u_xlat28;
  u_xlat28 = clamp(x_750, 0.0f, 1.0f);
  let x_753 : f32 = u_xlat34;
  u_xlat39 = (-(x_753) + 1.0f);
  let x_756 : f32 = u_xlat28;
  let x_757 : f32 = u_xlat39;
  let x_759 : f32 = u_xlat34;
  u_xlat34 = ((x_756 * x_757) + x_759);
  let x_761 : f32 = u_xlat26;
  let x_764 : vec4<f32> = x_132.x_MainLightColor;
  let x_766 : vec3<f32> = (vec3<f32>(x_761, x_761, x_761) * vec3<f32>(x_764.x, x_764.y, x_764.z));
  let x_767 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_769 : vec4<f32> = u_xlat2;
  let x_772 : vec3<f32> = u_xlat11;
  u_xlat28 = dot(-(vec3<f32>(x_769.x, x_769.z, x_769.w)), x_772);
  let x_774 : f32 = u_xlat28;
  let x_775 : f32 = u_xlat28;
  u_xlat28 = (x_774 + x_775);
  let x_778 : vec3<f32> = u_xlat11;
  let x_779 : f32 = u_xlat28;
  let x_783 : vec4<f32> = u_xlat2;
  let x_786 : vec3<f32> = ((x_778 * -(vec3<f32>(x_779, x_779, x_779))) + -(vec3<f32>(x_783.x, x_783.z, x_783.w)));
  let x_787 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
  let x_789 : vec3<f32> = u_xlat11;
  let x_790 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(x_789, vec3<f32>(x_790.x, x_790.z, x_790.w));
  let x_793 : f32 = u_xlat28;
  u_xlat28 = clamp(x_793, 0.0f, 1.0f);
  let x_795 : f32 = u_xlat28;
  u_xlat28 = (-(x_795) + 1.0f);
  let x_798 : f32 = u_xlat28;
  let x_799 : f32 = u_xlat28;
  u_xlat28 = (x_798 * x_799);
  let x_801 : f32 = u_xlat28;
  let x_802 : f32 = u_xlat28;
  u_xlat28 = (x_801 * x_802);
  let x_805 : f32 = u_xlat15.x;
  u_xlat39 = ((-(x_805) * 0.699999988f) + 1.700000048f);
  let x_812 : f32 = u_xlat15.x;
  let x_813 : f32 = u_xlat39;
  u_xlat15.x = (x_812 * x_813);
  let x_817 : f32 = u_xlat15.x;
  u_xlat15.x = (x_817 * 6.0f);
  let x_829 : vec4<f32> = u_xlat8;
  let x_832 : f32 = u_xlat15.x;
  let x_833 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_829.x, x_829.y, x_829.z), x_832);
  u_xlat8 = x_833;
  let x_835 : f32 = u_xlat8.w;
  u_xlat15.x = (x_835 + -1.0f);
  let x_839 : f32 = x_54.unity_SpecCube0_HDR.w;
  let x_841 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_839 * x_841) + 1.0f);
  let x_846 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_846, 0.0f);
  let x_850 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_850);
  let x_854 : f32 = u_xlat15.x;
  let x_856 : f32 = x_54.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_854 * x_856);
  let x_860 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_860);
  let x_864 : f32 = u_xlat15.x;
  let x_866 : f32 = x_54.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_864 * x_866);
  let x_869 : vec4<f32> = u_xlat8;
  let x_871 : vec3<f32> = u_xlat15;
  let x_873 : vec3<f32> = (vec3<f32>(x_869.x, x_869.y, x_869.z) * vec3<f32>(x_871.x, x_871.x, x_871.x));
  let x_874 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : f32 = u_xlat37;
  let x_878 : f32 = u_xlat37;
  let x_882 : vec2<f32> = ((vec2<f32>(x_876, x_876) * vec2<f32>(x_878, x_878)) + vec2<f32>(-1.0f, 1.0f));
  let x_883 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_882.x, x_883.y, x_882.y);
  let x_886 : f32 = u_xlat15.z;
  u_xlat37 = (1.0f / x_886);
  let x_889 : f32 = u_xlat6.x;
  u_xlat6.x = (x_889 + -0.039999999f);
  let x_893 : f32 = u_xlat28;
  let x_895 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_893 * x_895) + 0.039999999f);
  let x_900 : f32 = u_xlat37;
  let x_902 : f32 = u_xlat6.x;
  u_xlat37 = (x_900 * x_902);
  let x_904 : f32 = u_xlat37;
  let x_906 : vec4<f32> = u_xlat8;
  let x_908 : vec3<f32> = (vec3<f32>(x_904, x_904, x_904) * vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_909 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_908.x, x_909.y, x_908.y, x_908.z);
  let x_911 : vec3<f32> = u_xlat14;
  let x_912 : vec3<f32> = u_xlat5;
  let x_914 : vec4<f32> = u_xlat6;
  u_xlat14 = ((x_911 * x_912) + vec3<f32>(x_914.x, x_914.z, x_914.w));
  let x_917 : f32 = u_xlat34;
  let x_919 : f32 = x_54.unity_LightData.z;
  u_xlat34 = (x_917 * x_919);
  let x_921 : vec3<f32> = u_xlat11;
  let x_923 : vec4<f32> = x_132.x_MainLightPosition;
  u_xlat37 = dot(x_921, vec3<f32>(x_923.x, x_923.y, x_923.z));
  let x_926 : f32 = u_xlat37;
  u_xlat37 = clamp(x_926, 0.0f, 1.0f);
  let x_928 : f32 = u_xlat34;
  let x_929 : f32 = u_xlat37;
  u_xlat34 = (x_928 * x_929);
  let x_931 : f32 = u_xlat34;
  let x_933 : vec4<f32> = u_xlat7;
  let x_935 : vec3<f32> = (vec3<f32>(x_931, x_931, x_931) * vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_935.x, x_936.y, x_935.y, x_935.z);
  let x_938 : vec4<f32> = u_xlat2;
  let x_941 : vec4<f32> = x_132.x_MainLightPosition;
  let x_943 : vec3<f32> = (vec3<f32>(x_938.x, x_938.z, x_938.w) + vec3<f32>(x_941.x, x_941.y, x_941.z));
  let x_944 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : vec4<f32> = u_xlat7;
  let x_948 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_946.x, x_946.y, x_946.z), vec3<f32>(x_948.x, x_948.y, x_948.z));
  let x_951 : f32 = u_xlat34;
  u_xlat34 = max(x_951, 1.17549435e-37f);
  let x_953 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_953);
  let x_955 : f32 = u_xlat34;
  let x_957 : vec4<f32> = u_xlat7;
  let x_959 : vec3<f32> = (vec3<f32>(x_955, x_955, x_955) * vec3<f32>(x_957.x, x_957.y, x_957.z));
  let x_960 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  let x_962 : vec3<f32> = u_xlat11;
  let x_963 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(x_962, vec3<f32>(x_963.x, x_963.y, x_963.z));
  let x_966 : f32 = u_xlat34;
  u_xlat34 = clamp(x_966, 0.0f, 1.0f);
  let x_969 : vec4<f32> = x_132.x_MainLightPosition;
  let x_971 : vec4<f32> = u_xlat7;
  u_xlat37 = dot(vec3<f32>(x_969.x, x_969.y, x_969.z), vec3<f32>(x_971.x, x_971.y, x_971.z));
  let x_974 : f32 = u_xlat37;
  u_xlat37 = clamp(x_974, 0.0f, 1.0f);
  let x_976 : f32 = u_xlat34;
  let x_977 : f32 = u_xlat34;
  u_xlat34 = (x_976 * x_977);
  let x_979 : f32 = u_xlat34;
  let x_981 : f32 = u_xlat15.x;
  u_xlat34 = ((x_979 * x_981) + 1.000010014f);
  let x_985 : f32 = u_xlat37;
  let x_986 : f32 = u_xlat37;
  u_xlat37 = (x_985 * x_986);
  let x_988 : f32 = u_xlat34;
  let x_989 : f32 = u_xlat34;
  u_xlat34 = (x_988 * x_989);
  let x_991 : f32 = u_xlat37;
  u_xlat37 = max(x_991, 0.100000001f);
  let x_994 : f32 = u_xlat34;
  let x_995 : f32 = u_xlat37;
  u_xlat34 = (x_994 * x_995);
  let x_998 : f32 = u_xlat17.x;
  let x_999 : f32 = u_xlat34;
  u_xlat34 = (x_998 * x_999);
  let x_1001 : f32 = u_xlat38;
  let x_1002 : f32 = u_xlat34;
  u_xlat34 = (x_1001 / x_1002);
  let x_1004 : f32 = u_xlat34;
  let x_1008 : vec3<f32> = u_xlat5;
  let x_1009 : vec3<f32> = ((vec3<f32>(x_1004, x_1004, x_1004) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1008);
  let x_1010 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1010.w);
  let x_1012 : vec4<f32> = u_xlat6;
  let x_1014 : vec4<f32> = u_xlat7;
  let x_1016 : vec3<f32> = (vec3<f32>(x_1012.x, x_1012.z, x_1012.w) * vec3<f32>(x_1014.x, x_1014.y, x_1014.z));
  let x_1017 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1016.x, x_1017.y, x_1016.y, x_1016.z);
  let x_1021 : f32 = x_132.x_AdditionalLightsCount.x;
  let x_1023 : f32 = x_54.unity_LightData.y;
  u_xlat34 = min(x_1021, x_1023);
  let x_1027 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_1027));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1039 : u32 = u_xlatu_loop_1;
    let x_1040 : u32 = u_xlatu34;
    if ((x_1039 < x_1040)) {
    } else {
      break;
    }
    let x_1043 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1043 >> 2u);
    let x_1047 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1047 & 3u));
    let x_1051 : u32 = u_xlatu40;
    let x_1054 : vec4<f32> = x_54.unity_LightIndices[bitcast<i32>(x_1051)];
    let x_1064 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1069 : vec4<u32> = indexable[x_1064];
    u_xlat40 = dot(x_1054, bitcast<vec4<f32>>(x_1069));
    let x_1073 : f32 = u_xlat40;
    u_xlati40 = i32(x_1073);
    let x_1075 : vec3<f32> = vs_INTERP0;
    let x_1087 : i32 = u_xlati40;
    let x_1089 : vec4<f32> = x_1086.x_AdditionalLightsPosition[x_1087];
    let x_1092 : i32 = u_xlati40;
    let x_1094 : vec4<f32> = x_1086.x_AdditionalLightsPosition[x_1092];
    let x_1096 : vec3<f32> = ((-(x_1075) * vec3<f32>(x_1089.w, x_1089.w, x_1089.w)) + vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
    let x_1097 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1097.w);
    let x_1100 : vec4<f32> = u_xlat8;
    let x_1102 : vec4<f32> = u_xlat8;
    u_xlat41 = dot(vec3<f32>(x_1100.x, x_1100.y, x_1100.z), vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
    let x_1105 : f32 = u_xlat41;
    u_xlat41 = max(x_1105, 6.10351562e-05f);
    let x_1109 : f32 = u_xlat41;
    u_xlat9 = inverseSqrt(x_1109);
    let x_1112 : vec4<f32> = u_xlat8;
    let x_1114 : f32 = u_xlat9;
    u_xlat20 = (vec3<f32>(x_1112.x, x_1112.y, x_1112.z) * vec3<f32>(x_1114, x_1114, x_1114));
    let x_1118 : f32 = u_xlat41;
    u_xlat10.x = (1.0f / x_1118);
    let x_1121 : f32 = u_xlat41;
    let x_1122 : i32 = u_xlati40;
    let x_1124 : f32 = x_1086.x_AdditionalLightsAttenuation[x_1122].x;
    u_xlat41 = (x_1121 * x_1124);
    let x_1126 : f32 = u_xlat41;
    let x_1128 : f32 = u_xlat41;
    u_xlat41 = ((-(x_1126) * x_1128) + 1.0f);
    let x_1131 : f32 = u_xlat41;
    u_xlat41 = max(x_1131, 0.0f);
    let x_1133 : f32 = u_xlat41;
    let x_1134 : f32 = u_xlat41;
    u_xlat41 = (x_1133 * x_1134);
    let x_1136 : f32 = u_xlat41;
    let x_1138 : f32 = u_xlat10.x;
    u_xlat41 = (x_1136 * x_1138);
    let x_1140 : i32 = u_xlati40;
    let x_1142 : vec4<f32> = x_1086.x_AdditionalLightsSpotDir[x_1140];
    let x_1144 : vec3<f32> = u_xlat20;
    u_xlat10.x = dot(vec3<f32>(x_1142.x, x_1142.y, x_1142.z), x_1144);
    let x_1148 : f32 = u_xlat10.x;
    let x_1149 : i32 = u_xlati40;
    let x_1151 : f32 = x_1086.x_AdditionalLightsAttenuation[x_1149].z;
    let x_1153 : i32 = u_xlati40;
    let x_1155 : f32 = x_1086.x_AdditionalLightsAttenuation[x_1153].w;
    u_xlat10.x = ((x_1148 * x_1151) + x_1155);
    let x_1159 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1159, 0.0f, 1.0f);
    let x_1163 : f32 = u_xlat10.x;
    let x_1165 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1163 * x_1165);
    let x_1168 : f32 = u_xlat41;
    let x_1170 : f32 = u_xlat10.x;
    u_xlat41 = (x_1168 * x_1170);
    let x_1172 : f32 = u_xlat26;
    let x_1174 : i32 = u_xlati40;
    let x_1176 : vec4<f32> = x_1086.x_AdditionalLightsColor[x_1174];
    u_xlat10 = (vec3<f32>(x_1172, x_1172, x_1172) * vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
    let x_1179 : vec3<f32> = u_xlat11;
    let x_1180 : vec3<f32> = u_xlat20;
    u_xlat40 = dot(x_1179, x_1180);
    let x_1182 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1182, 0.0f, 1.0f);
    let x_1184 : f32 = u_xlat40;
    let x_1185 : f32 = u_xlat41;
    u_xlat40 = (x_1184 * x_1185);
    let x_1187 : f32 = u_xlat40;
    let x_1189 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1187, x_1187, x_1187) * x_1189);
    let x_1191 : vec4<f32> = u_xlat8;
    let x_1193 : f32 = u_xlat9;
    let x_1196 : vec4<f32> = u_xlat2;
    let x_1198 : vec3<f32> = ((vec3<f32>(x_1191.x, x_1191.y, x_1191.z) * vec3<f32>(x_1193, x_1193, x_1193)) + vec3<f32>(x_1196.x, x_1196.z, x_1196.w));
    let x_1199 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
    let x_1201 : vec4<f32> = u_xlat8;
    let x_1203 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1201.x, x_1201.y, x_1201.z), vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
    let x_1206 : f32 = u_xlat40;
    u_xlat40 = max(x_1206, 1.17549435e-37f);
    let x_1208 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1208);
    let x_1210 : f32 = u_xlat40;
    let x_1212 : vec4<f32> = u_xlat8;
    let x_1214 : vec3<f32> = (vec3<f32>(x_1210, x_1210, x_1210) * vec3<f32>(x_1212.x, x_1212.y, x_1212.z));
    let x_1215 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
    let x_1217 : vec3<f32> = u_xlat11;
    let x_1218 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1217, vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
    let x_1221 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1221, 0.0f, 1.0f);
    let x_1223 : vec3<f32> = u_xlat20;
    let x_1224 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_1223, vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
    let x_1229 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1229, 0.0f, 1.0f);
    let x_1232 : f32 = u_xlat40;
    let x_1233 : f32 = u_xlat40;
    u_xlat40 = (x_1232 * x_1233);
    let x_1235 : f32 = u_xlat40;
    let x_1237 : f32 = u_xlat15.x;
    u_xlat40 = ((x_1235 * x_1237) + 1.000010014f);
    let x_1241 : f32 = u_xlat8.x;
    let x_1243 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1241 * x_1243);
    let x_1246 : f32 = u_xlat40;
    let x_1247 : f32 = u_xlat40;
    u_xlat40 = (x_1246 * x_1247);
    let x_1250 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1250, 0.100000001f);
    let x_1253 : f32 = u_xlat40;
    let x_1255 : f32 = u_xlat8.x;
    u_xlat40 = (x_1253 * x_1255);
    let x_1258 : f32 = u_xlat17.x;
    let x_1259 : f32 = u_xlat40;
    u_xlat40 = (x_1258 * x_1259);
    let x_1261 : f32 = u_xlat38;
    let x_1262 : f32 = u_xlat40;
    u_xlat40 = (x_1261 / x_1262);
    let x_1264 : f32 = u_xlat40;
    let x_1267 : vec3<f32> = u_xlat5;
    let x_1268 : vec3<f32> = ((vec3<f32>(x_1264, x_1264, x_1264) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1267);
    let x_1269 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1269.w);
    let x_1271 : vec4<f32> = u_xlat8;
    let x_1273 : vec3<f32> = u_xlat10;
    let x_1275 : vec4<f32> = u_xlat7;
    let x_1277 : vec3<f32> = ((vec3<f32>(x_1271.x, x_1271.y, x_1271.z) * x_1273) + vec3<f32>(x_1275.x, x_1275.y, x_1275.z));
    let x_1278 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);

    continuing {
      let x_1280 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1280 + bitcast<u32>(1i));
    }
  }
  let x_1282 : vec3<f32> = u_xlat14;
  let x_1283 : vec4<f32> = u_xlat4;
  let x_1286 : vec4<f32> = u_xlat6;
  u_xlat11 = ((x_1282 * vec3<f32>(x_1283.x, x_1283.x, x_1283.x)) + vec3<f32>(x_1286.x, x_1286.z, x_1286.w));
  let x_1289 : vec4<f32> = u_xlat7;
  let x_1291 : vec3<f32> = u_xlat11;
  u_xlat11 = (vec3<f32>(x_1289.x, x_1289.y, x_1289.z) + x_1291);
  let x_1293 : vec4<f32> = vs_INTERP4;
  let x_1295 : vec3<f32> = u_xlat1;
  let x_1297 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_1293.w, x_1293.w, x_1293.w) * x_1295) + x_1297);
  let x_1300 : f32 = u_xlat3.x;
  let x_1302 : f32 = u_xlat3.x;
  u_xlat1.x = (x_1300 * -(x_1302));
  let x_1307 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1307);
  let x_1310 : vec3<f32> = u_xlat11;
  let x_1313 : vec4<f32> = x_132.unity_FogColor;
  u_xlat11 = (x_1310 + -(vec3<f32>(x_1313.x, x_1313.y, x_1313.z)));
  let x_1319 : vec3<f32> = u_xlat1;
  let x_1321 : vec3<f32> = u_xlat11;
  let x_1324 : vec4<f32> = x_132.unity_FogColor;
  let x_1326 : vec3<f32> = ((vec3<f32>(x_1319.x, x_1319.x, x_1319.x) * x_1321) + vec3<f32>(x_1324.x, x_1324.y, x_1324.z));
  let x_1327 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
  let x_1329 : bool = u_xlatb13;
  let x_1330 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1330, x_1329);
  let x_1338 : u32 = x_132.x_RenderingLayerMaxInt;
  let x_1340 : f32 = x_54.unity_RenderingLayer.x;
  u_xlatu0 = (x_1338 & bitcast<u32>(x_1340));
  let x_1343 : u32 = u_xlatu0;
  u_xlat0 = f32(x_1343);
  let x_1346 : f32 = u_xlat0;
  let x_1348 : f32 = x_132.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1346 * x_1348);
  let x_1352 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1352, 0.0f, 1.0f);
  let x_1356 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1356.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

