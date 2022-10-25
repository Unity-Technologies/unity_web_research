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

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_134 : PGlobals;

@group(1) @binding(4) var<uniform> x_144 : UnityPerMaterial;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_238 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1129 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : f32;
  var u_xlatb12 : vec2<bool>;
  var u_xlat12 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat18 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlatb2 : bool;
  var u_xlatb14 : bool;
  var u_xlatb0 : bool;
  var x_357 : f32;
  var u_xlat14 : f32;
  var u_xlat26 : vec2<f32>;
  var x_406 : f32;
  var u_xlat24 : f32;
  var x_501 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat38 : f32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlatb30 : bool;
  var u_xlatb42 : bool;
  var u_xlat42 : f32;
  var u_xlatu37 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati30 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati40 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat11 : vec3<f32>;
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
  u_xlatb12.x = (0.0f < x_44);
  let x_59 : f32 = x_54.unity_WorldTransformParams.w;
  u_xlatb12.y = (x_59 >= 0.0f);
  let x_66 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_66);
  let x_71 : bool = u_xlatb12.y;
  u_xlat12.y = select(-1.0f, 1.0f, x_71);
  let x_75 : f32 = u_xlat12.y;
  let x_77 : f32 = u_xlat12.x;
  u_xlat12.x = (x_75 * x_77);
  let x_81 : vec3<f32> = vs_INTERP1;
  let x_83 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_81.z, x_81.x, x_81.y) * vec3<f32>(x_83.y, x_83.z, x_83.x));
  let x_86 : vec3<f32> = vs_INTERP1;
  let x_88 : vec4<f32> = vs_INTERP2;
  let x_91 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_86.y, x_86.z, x_86.x) * vec3<f32>(x_88.z, x_88.x, x_88.y)) + -(x_91));
  let x_94 : vec3<f32> = u_xlat12;
  let x_96 : vec3<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_94.x, x_94.x, x_94.x) * x_96);
  let x_98 : f32 = u_xlat0;
  let x_100 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_103 : f32 = u_xlat0;
  let x_105 : vec4<f32> = vs_INTERP2;
  let x_107 : vec3<f32> = (vec3<f32>(x_103, x_103, x_103) * vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_108 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_111 : vec3<f32> = u_xlat12;
  let x_112 : f32 = u_xlat0;
  let x_114 : vec3<f32> = (x_111 * vec3<f32>(x_112, x_112, x_112));
  let x_115 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_130 : vec4<f32> = vs_INTERP3;
  let x_137 : f32 = x_134.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_130.x, x_130.y), x_137);
  u_xlat4 = x_138;
  let x_140 : vec4<f32> = u_xlat4;
  let x_147 : vec4<f32> = x_144.Color_C30C7CA3;
  u_xlat5 = (vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_156 : vec4<f32> = vs_INTERP3;
  let x_159 : f32 = x_134.x_GlobalMipBias.x;
  let x_160 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_156.x, x_156.y), x_159);
  u_xlat6 = vec4<f32>(x_160.w, x_160.x, x_160.y, x_160.z);
  let x_163 : vec4<f32> = u_xlat6;
  u_xlat7 = ((vec4<f32>(x_163.y, x_163.z, x_163.w, x_163.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_170 : vec4<f32> = u_xlat7;
  let x_171 : vec4<f32> = u_xlat7;
  u_xlat0 = dot(x_170, x_171);
  let x_173 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_173);
  let x_176 : f32 = u_xlat0;
  let x_178 : vec4<f32> = u_xlat7;
  u_xlat18 = (vec3<f32>(x_176, x_176, x_176) * vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_183 : f32 = vs_INTERP4.y;
  u_xlat0 = (x_183 * 200.0f);
  let x_186 : f32 = u_xlat0;
  u_xlat0 = min(x_186, 1.0f);
  let x_188 : f32 = u_xlat0;
  let x_190 : vec4<f32> = u_xlat4;
  let x_192 : vec3<f32> = (vec3<f32>(x_188, x_188, x_188) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec4<f32> = u_xlat3;
  let x_197 : vec3<f32> = u_xlat18;
  let x_199 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_197.y, x_197.y, x_197.y));
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec3<f32> = u_xlat18;
  let x_204 : vec4<f32> = u_xlat2;
  let x_207 : vec4<f32> = u_xlat3;
  let x_209 : vec3<f32> = ((vec3<f32>(x_202.x, x_202.x, x_202.x) * vec3<f32>(x_204.x, x_204.y, x_204.z)) + vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec3<f32> = u_xlat18;
  let x_214 : vec3<f32> = u_xlat1;
  let x_216 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_212.z, x_212.z, x_212.z) * x_214) + vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec3<f32> = u_xlat1;
  let x_220 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_219, x_220);
  let x_222 : f32 = u_xlat0;
  u_xlat0 = max(x_222, 1.17549435e-37f);
  let x_225 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_225);
  let x_227 : f32 = u_xlat0;
  let x_229 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_227, x_227, x_227) * x_229);
  let x_232 : vec3<f32> = vs_INTERP0;
  let x_241 : vec4<f32> = x_238.x_MainLightWorldToShadow[0i][1i];
  let x_243 : vec3<f32> = (vec3<f32>(x_232.y, x_232.y, x_232.y) * vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_244 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_247 : vec4<f32> = x_238.x_MainLightWorldToShadow[0i][0i];
  let x_249 : vec3<f32> = vs_INTERP0;
  let x_252 : vec4<f32> = u_xlat2;
  let x_254 : vec3<f32> = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.x, x_249.x, x_249.x)) + vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_259 : vec4<f32> = x_238.x_MainLightWorldToShadow[0i][2i];
  let x_261 : vec3<f32> = vs_INTERP0;
  let x_264 : vec4<f32> = u_xlat2;
  let x_266 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261.z, x_261.z, x_261.z)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat2;
  let x_272 : vec4<f32> = x_238.x_MainLightWorldToShadow[0i][3i];
  let x_274 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) + vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_278 : vec4<f32> = u_xlat2;
  let x_279 : vec2<f32> = vec2<f32>(x_278.x, x_278.y);
  let x_281 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_279.x, x_279.y, x_281);
  let x_293 : vec3<f32> = txVec0;
  let x_295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_293.xy, x_293.z);
  u_xlat0 = x_295;
  let x_299 : f32 = x_238.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_299) + 1.0f);
  let x_302 : f32 = u_xlat0;
  let x_304 : f32 = x_238.x_MainLightShadowParams.x;
  let x_306 : f32 = u_xlat37;
  u_xlat0 = ((x_302 * x_304) + x_306);
  let x_310 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_310);
  let x_314 : f32 = u_xlat2.z;
  u_xlatb14 = (x_314 >= 1.0f);
  let x_316 : bool = u_xlatb14;
  let x_317 : bool = u_xlatb2;
  u_xlatb2 = (x_316 | x_317);
  let x_319 : bool = u_xlatb2;
  let x_320 : f32 = u_xlat0;
  u_xlat0 = select(x_320, 1.0f, x_319);
  let x_322 : vec3<f32> = u_xlat1;
  let x_324 : vec4<f32> = x_134.x_MainLightPosition;
  u_xlat1.x = dot(x_322, -(vec3<f32>(x_324.x, x_324.y, x_324.z)));
  let x_330 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_330, 0.0f, 1.0f);
  let x_333 : f32 = u_xlat0;
  let x_337 : vec4<f32> = x_134.x_MainLightColor;
  let x_339 : vec3<f32> = (vec3<f32>(x_333, x_333, x_333) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec3<f32> = u_xlat1;
  let x_344 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_342.x, x_342.x, x_342.x) * vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec3<f32> = u_xlat1;
  let x_348 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_347 * vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_353 : f32 = u_xlat4.w;
  u_xlatb0 = (x_353 >= 0.400000006f);
  let x_356 : bool = u_xlatb0;
  if (x_356) {
    let x_361 : f32 = u_xlat4.w;
    x_357 = x_361;
  } else {
    x_357 = 0.0f;
  }
  let x_363 : f32 = x_357;
  u_xlat0 = x_363;
  let x_365 : f32 = u_xlat4.w;
  u_xlat2.x = (x_365 + -0.400000006f);
  let x_371 : f32 = u_xlat4.w;
  u_xlat14 = dpdxCoarse(x_371);
  let x_376 : f32 = u_xlat4.w;
  u_xlat26.x = dpdyCoarse(x_376);
  let x_380 : f32 = u_xlat26.x;
  let x_382 : f32 = u_xlat14;
  u_xlat14 = (abs(x_380) + abs(x_382));
  let x_385 : f32 = u_xlat14;
  u_xlat14 = max(x_385, 0.0001f);
  let x_389 : f32 = u_xlat2.x;
  let x_390 : f32 = u_xlat14;
  u_xlat2.x = (x_389 / x_390);
  let x_394 : f32 = u_xlat2.x;
  u_xlat2.x = (x_394 + 0.5f);
  let x_399 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_399, 0.0f, 1.0f);
  let x_403 : f32 = x_134.x_AlphaToMaskAvailable;
  u_xlatb14 = !((x_403 == 0.0f));
  let x_405 : bool = u_xlatb14;
  if (x_405) {
    let x_410 : f32 = u_xlat2.x;
    x_406 = x_410;
  } else {
    let x_412 : f32 = u_xlat0;
    x_406 = x_412;
  }
  let x_413 : f32 = x_406;
  u_xlat0 = x_413;
  let x_414 : f32 = u_xlat0;
  u_xlat2.x = (x_414 + -0.0001f);
  let x_419 : f32 = u_xlat2.x;
  u_xlatb2 = (x_419 < 0.0f);
  let x_421 : bool = u_xlatb2;
  if (((select(0i, 1i, x_421) * -1i) != 0i)) {
    discard;
  }
  let x_429 : vec3<f32> = u_xlat12;
  let x_430 : vec3<f32> = u_xlat18;
  u_xlat12 = (x_429 * vec3<f32>(x_430.y, x_430.y, x_430.y));
  let x_433 : vec3<f32> = u_xlat18;
  let x_435 : vec4<f32> = vs_INTERP2;
  let x_438 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_433.x, x_433.x, x_433.x) * vec3<f32>(x_435.x, x_435.y, x_435.z)) + x_438);
  let x_440 : vec3<f32> = u_xlat18;
  let x_442 : vec3<f32> = vs_INTERP1;
  let x_444 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_440.z, x_440.z, x_440.z) * x_442) + x_444);
  let x_446 : vec3<f32> = u_xlat12;
  let x_447 : vec3<f32> = u_xlat12;
  u_xlat2.x = dot(x_446, x_447);
  let x_451 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_451);
  let x_454 : vec3<f32> = u_xlat12;
  let x_455 : vec4<f32> = u_xlat2;
  let x_457 : vec3<f32> = (x_454 * vec3<f32>(x_455.x, x_455.x, x_455.x));
  let x_458 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_462 : f32 = x_134.unity_OrthoParams.w;
  u_xlatb12.x = (x_462 == 0.0f);
  let x_465 : vec3<f32> = vs_INTERP0;
  let x_470 : vec3<f32> = x_134.x_WorldSpaceCameraPos;
  let x_471 : vec3<f32> = (-(x_465) + x_470);
  let x_472 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_471.x, x_472.y, x_471.y, x_471.z);
  let x_475 : vec4<f32> = u_xlat2;
  let x_477 : vec4<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_475.x, x_475.z, x_475.w), vec3<f32>(x_477.x, x_477.z, x_477.w));
  let x_480 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_480);
  let x_482 : f32 = u_xlat24;
  let x_484 : vec4<f32> = u_xlat2;
  let x_486 : vec3<f32> = (vec3<f32>(x_482, x_482, x_482) * vec3<f32>(x_484.x, x_484.z, x_484.w));
  let x_487 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_486.x, x_487.y, x_486.y, x_486.z);
  let x_491 : f32 = x_134.unity_MatrixV[0i].z;
  u_xlat4.x = x_491;
  let x_494 : f32 = x_134.unity_MatrixV[1i].z;
  u_xlat4.y = x_494;
  let x_497 : f32 = x_134.unity_MatrixV[2i].z;
  u_xlat4.z = x_497;
  let x_500 : bool = u_xlatb12.x;
  if (x_500) {
    let x_504 : vec4<f32> = u_xlat2;
    x_501 = vec3<f32>(x_504.x, x_504.z, x_504.w);
  } else {
    let x_507 : vec4<f32> = u_xlat4;
    x_501 = vec3<f32>(x_507.x, x_507.y, x_507.z);
  }
  let x_509 : vec3<f32> = x_501;
  u_xlat12 = x_509;
  let x_511 : f32 = vs_INTERP0.y;
  let x_513 : f32 = x_134.unity_MatrixV[1i].z;
  u_xlat2.x = (x_511 * x_513);
  let x_517 : f32 = x_134.unity_MatrixV[0i].z;
  let x_519 : f32 = vs_INTERP0.x;
  let x_522 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_517 * x_519) + x_522);
  let x_526 : f32 = x_134.unity_MatrixV[2i].z;
  let x_528 : f32 = vs_INTERP0.z;
  let x_531 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_526 * x_528) + x_531);
  let x_535 : f32 = u_xlat2.x;
  let x_537 : f32 = x_134.unity_MatrixV[3i].z;
  u_xlat2.x = (x_535 + x_537);
  let x_541 : f32 = u_xlat2.x;
  let x_545 : f32 = x_134.x_ProjectionParams.y;
  u_xlat2.x = (-(x_541) + -(x_545));
  let x_550 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_550, 0.0f);
  let x_554 : f32 = u_xlat2.x;
  let x_557 : f32 = x_134.unity_FogParams.x;
  u_xlat2.x = (x_554 * x_557);
  u_xlat3.w = 1.0f;
  let x_563 : vec4<f32> = x_54.unity_SHAr;
  let x_564 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_563, x_564);
  let x_569 : vec4<f32> = x_54.unity_SHAg;
  let x_570 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_569, x_570);
  let x_575 : vec4<f32> = x_54.unity_SHAb;
  let x_576 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_575, x_576);
  let x_579 : vec4<f32> = u_xlat3;
  let x_581 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_579.y, x_579.z, x_579.z, x_579.x) * vec4<f32>(x_581.x, x_581.y, x_581.z, x_581.z));
  let x_587 : vec4<f32> = x_54.unity_SHBr;
  let x_588 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_587, x_588);
  let x_593 : vec4<f32> = x_54.unity_SHBg;
  let x_594 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_593, x_594);
  let x_599 : vec4<f32> = x_54.unity_SHBb;
  let x_600 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_599, x_600);
  let x_604 : f32 = u_xlat3.y;
  let x_606 : f32 = u_xlat3.y;
  u_xlat26.x = (x_604 * x_606);
  let x_610 : f32 = u_xlat3.x;
  let x_612 : f32 = u_xlat3.x;
  let x_615 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_610 * x_612) + -(x_615));
  let x_621 : vec4<f32> = x_54.unity_SHC;
  let x_623 : vec2<f32> = u_xlat26;
  let x_626 : vec4<f32> = u_xlat8;
  u_xlat18 = ((vec3<f32>(x_621.x, x_621.y, x_621.z) * vec3<f32>(x_623.x, x_623.x, x_623.x)) + vec3<f32>(x_626.x, x_626.y, x_626.z));
  let x_629 : vec4<f32> = u_xlat4;
  let x_631 : vec3<f32> = u_xlat18;
  let x_632 : vec3<f32> = (vec3<f32>(x_629.x, x_629.y, x_629.z) + x_631);
  let x_633 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat4;
  let x_638 : vec3<f32> = max(vec3<f32>(x_635.x, x_635.y, x_635.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_639 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_643 : vec4<f32> = x_134.x_ScaledScreenParams;
  let x_644 : vec2<f32> = vec2<f32>(x_643.x, x_643.y);
  u_xlat26 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_644.x, x_644.y));
  let x_649 : vec2<f32> = u_xlat26;
  let x_650 : vec4<f32> = hlslcc_FragCoord;
  let x_652 : vec2<f32> = (x_649 * vec2<f32>(x_650.x, x_650.y));
  let x_653 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_652.x, x_652.y, x_653.z, x_653.w);
  let x_656 : f32 = u_xlat7.y;
  let x_659 : f32 = x_134.x_ScaleBiasRt.x;
  let x_662 : f32 = x_134.x_ScaleBiasRt.y;
  u_xlat26.x = ((x_656 * x_659) + x_662);
  let x_666 : f32 = u_xlat26.x;
  u_xlat7.z = (-(x_666) + 1.0f);
  let x_671 : f32 = u_xlat6.x;
  u_xlat6.x = x_671;
  let x_674 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_674, 0.0f, 1.0f);
  let x_677 : f32 = u_xlat0;
  u_xlat0 = min(x_677, 1.0f);
  let x_679 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_679 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_684 : f32 = u_xlat6.x;
  u_xlat26.x = (-(x_684) + 1.0f);
  let x_690 : f32 = u_xlat26.x;
  let x_692 : f32 = u_xlat26.x;
  u_xlat38 = (x_690 * x_692);
  let x_694 : f32 = u_xlat38;
  u_xlat38 = max(x_694, 0.0078125f);
  let x_698 : f32 = u_xlat38;
  let x_699 : f32 = u_xlat38;
  u_xlat39 = (x_698 * x_699);
  let x_703 : f32 = u_xlat6.x;
  u_xlat40 = (x_703 + 0.040000021f);
  let x_706 : f32 = u_xlat40;
  u_xlat40 = min(x_706, 1.0f);
  let x_709 : f32 = u_xlat38;
  u_xlat41 = ((x_709 * 4.0f) + 2.0f);
  let x_718 : vec4<f32> = u_xlat7;
  let x_721 : f32 = x_134.x_GlobalMipBias.x;
  let x_722 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_718.x, x_718.z), x_721);
  u_xlat6.x = x_722.x;
  let x_726 : f32 = u_xlat6.x;
  u_xlat18.x = (x_726 + -1.0f);
  let x_731 : f32 = x_134.x_AmbientOcclusionParam.w;
  let x_733 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_731 * x_733) + 1.0f);
  let x_738 : f32 = u_xlat6.x;
  let x_740 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_738, x_740);
  let x_745 : vec4<f32> = vs_INTERP9;
  let x_746 : vec2<f32> = vec2<f32>(x_745.x, x_745.y);
  let x_748 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_746.x, x_746.y, x_748);
  let x_756 : vec3<f32> = txVec1;
  let x_758 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_756.xy, x_756.z);
  u_xlat30 = x_758;
  let x_759 : f32 = u_xlat30;
  let x_761 : f32 = x_238.x_MainLightShadowParams.x;
  let x_763 : f32 = u_xlat37;
  u_xlat37 = ((x_759 * x_761) + x_763);
  let x_767 : f32 = vs_INTERP9.z;
  u_xlatb30 = (0.0f >= x_767);
  let x_771 : f32 = vs_INTERP9.z;
  u_xlatb42 = (x_771 >= 1.0f);
  let x_773 : bool = u_xlatb42;
  let x_774 : bool = u_xlatb30;
  u_xlatb30 = (x_773 | x_774);
  let x_776 : bool = u_xlatb30;
  let x_777 : f32 = u_xlat37;
  u_xlat37 = select(x_777, 1.0f, x_776);
  let x_779 : vec3<f32> = vs_INTERP0;
  let x_781 : vec3<f32> = x_134.x_WorldSpaceCameraPos;
  let x_783 : vec3<f32> = (x_779 + -(x_781));
  let x_784 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_786 : vec4<f32> = u_xlat7;
  let x_788 : vec4<f32> = u_xlat7;
  u_xlat30 = dot(vec3<f32>(x_786.x, x_786.y, x_786.z), vec3<f32>(x_788.x, x_788.y, x_788.z));
  let x_791 : f32 = u_xlat30;
  let x_793 : f32 = x_238.x_MainLightShadowParams.z;
  let x_796 : f32 = x_238.x_MainLightShadowParams.w;
  u_xlat30 = ((x_791 * x_793) + x_796);
  let x_798 : f32 = u_xlat30;
  u_xlat30 = clamp(x_798, 0.0f, 1.0f);
  let x_801 : f32 = u_xlat37;
  u_xlat42 = (-(x_801) + 1.0f);
  let x_804 : f32 = u_xlat30;
  let x_805 : f32 = u_xlat42;
  let x_807 : f32 = u_xlat37;
  u_xlat37 = ((x_804 * x_805) + x_807);
  let x_809 : vec3<f32> = u_xlat18;
  let x_812 : vec4<f32> = x_134.x_MainLightColor;
  let x_814 : vec3<f32> = (vec3<f32>(x_809.x, x_809.x, x_809.x) * vec3<f32>(x_812.x, x_812.y, x_812.z));
  let x_815 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : vec3<f32> = u_xlat12;
  let x_819 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(-(x_817), vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_822 : f32 = u_xlat30;
  let x_823 : f32 = u_xlat30;
  u_xlat30 = (x_822 + x_823);
  let x_825 : vec4<f32> = u_xlat3;
  let x_827 : f32 = u_xlat30;
  let x_831 : vec3<f32> = u_xlat12;
  let x_833 : vec3<f32> = ((vec3<f32>(x_825.x, x_825.y, x_825.z) * -(vec3<f32>(x_827, x_827, x_827))) + -(x_831));
  let x_834 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_836 : vec4<f32> = u_xlat3;
  let x_838 : vec3<f32> = u_xlat12;
  u_xlat30 = dot(vec3<f32>(x_836.x, x_836.y, x_836.z), x_838);
  let x_840 : f32 = u_xlat30;
  u_xlat30 = clamp(x_840, 0.0f, 1.0f);
  let x_842 : f32 = u_xlat30;
  u_xlat30 = (-(x_842) + 1.0f);
  let x_845 : f32 = u_xlat30;
  let x_846 : f32 = u_xlat30;
  u_xlat30 = (x_845 * x_846);
  let x_848 : f32 = u_xlat30;
  let x_849 : f32 = u_xlat30;
  u_xlat30 = (x_848 * x_849);
  let x_852 : f32 = u_xlat26.x;
  u_xlat42 = ((-(x_852) * 0.699999988f) + 1.700000048f);
  let x_859 : f32 = u_xlat26.x;
  let x_860 : f32 = u_xlat42;
  u_xlat26.x = (x_859 * x_860);
  let x_864 : f32 = u_xlat26.x;
  u_xlat26.x = (x_864 * 6.0f);
  let x_876 : vec4<f32> = u_xlat8;
  let x_879 : f32 = u_xlat26.x;
  let x_880 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_876.x, x_876.y, x_876.z), x_879);
  u_xlat8 = x_880;
  let x_882 : f32 = u_xlat8.w;
  u_xlat26.x = (x_882 + -1.0f);
  let x_886 : f32 = x_54.unity_SpecCube0_HDR.w;
  let x_888 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_886 * x_888) + 1.0f);
  let x_893 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_893, 0.0f);
  let x_897 : f32 = u_xlat26.x;
  u_xlat26.x = log2(x_897);
  let x_901 : f32 = u_xlat26.x;
  let x_903 : f32 = x_54.unity_SpecCube0_HDR.y;
  u_xlat26.x = (x_901 * x_903);
  let x_907 : f32 = u_xlat26.x;
  u_xlat26.x = exp2(x_907);
  let x_911 : f32 = u_xlat26.x;
  let x_913 : f32 = x_54.unity_SpecCube0_HDR.x;
  u_xlat26.x = (x_911 * x_913);
  let x_916 : vec4<f32> = u_xlat8;
  let x_918 : vec2<f32> = u_xlat26;
  let x_920 : vec3<f32> = (vec3<f32>(x_916.x, x_916.y, x_916.z) * vec3<f32>(x_918.x, x_918.x, x_918.x));
  let x_921 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : f32 = u_xlat38;
  let x_925 : f32 = u_xlat38;
  u_xlat26 = ((vec2<f32>(x_923, x_923) * vec2<f32>(x_925, x_925)) + vec2<f32>(-1.0f, 1.0f));
  let x_931 : f32 = u_xlat26.y;
  u_xlat38 = (1.0f / x_931);
  let x_933 : f32 = u_xlat40;
  u_xlat40 = (x_933 + -0.039999999f);
  let x_936 : f32 = u_xlat30;
  let x_937 : f32 = u_xlat40;
  u_xlat40 = ((x_936 * x_937) + 0.039999999f);
  let x_941 : f32 = u_xlat38;
  let x_942 : f32 = u_xlat40;
  u_xlat38 = (x_941 * x_942);
  let x_944 : f32 = u_xlat38;
  let x_946 : vec4<f32> = u_xlat8;
  let x_948 : vec3<f32> = (vec3<f32>(x_944, x_944, x_944) * vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_951 : vec4<f32> = u_xlat4;
  let x_953 : vec3<f32> = u_xlat5;
  let x_955 : vec4<f32> = u_xlat8;
  let x_957 : vec3<f32> = ((vec3<f32>(x_951.x, x_951.y, x_951.z) * x_953) + vec3<f32>(x_955.x, x_955.y, x_955.z));
  let x_958 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
  let x_960 : f32 = u_xlat37;
  let x_962 : f32 = x_54.unity_LightData.z;
  u_xlat37 = (x_960 * x_962);
  let x_964 : vec4<f32> = u_xlat3;
  let x_967 : vec4<f32> = x_134.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_964.x, x_964.y, x_964.z), vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : f32 = u_xlat38;
  u_xlat38 = clamp(x_970, 0.0f, 1.0f);
  let x_972 : f32 = u_xlat37;
  let x_973 : f32 = u_xlat38;
  u_xlat37 = (x_972 * x_973);
  let x_975 : f32 = u_xlat37;
  let x_977 : vec4<f32> = u_xlat7;
  let x_979 : vec3<f32> = (vec3<f32>(x_975, x_975, x_975) * vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : vec3<f32> = u_xlat12;
  let x_984 : vec4<f32> = x_134.x_MainLightPosition;
  let x_986 : vec3<f32> = (x_982 + vec3<f32>(x_984.x, x_984.y, x_984.z));
  let x_987 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
  let x_989 : vec4<f32> = u_xlat8;
  let x_991 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_989.x, x_989.y, x_989.z), vec3<f32>(x_991.x, x_991.y, x_991.z));
  let x_994 : f32 = u_xlat37;
  u_xlat37 = max(x_994, 1.17549435e-37f);
  let x_996 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_996);
  let x_998 : f32 = u_xlat37;
  let x_1000 : vec4<f32> = u_xlat8;
  let x_1002 : vec3<f32> = (vec3<f32>(x_998, x_998, x_998) * vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
  let x_1003 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
  let x_1005 : vec4<f32> = u_xlat3;
  let x_1007 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_1005.x, x_1005.y, x_1005.z), vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
  let x_1010 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1010, 0.0f, 1.0f);
  let x_1013 : vec4<f32> = x_134.x_MainLightPosition;
  let x_1015 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_1013.x, x_1013.y, x_1013.z), vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1018, 0.0f, 1.0f);
  let x_1020 : f32 = u_xlat37;
  let x_1021 : f32 = u_xlat37;
  u_xlat37 = (x_1020 * x_1021);
  let x_1023 : f32 = u_xlat37;
  let x_1025 : f32 = u_xlat26.x;
  u_xlat37 = ((x_1023 * x_1025) + 1.000010014f);
  let x_1029 : f32 = u_xlat38;
  let x_1030 : f32 = u_xlat38;
  u_xlat38 = (x_1029 * x_1030);
  let x_1032 : f32 = u_xlat37;
  let x_1033 : f32 = u_xlat37;
  u_xlat37 = (x_1032 * x_1033);
  let x_1035 : f32 = u_xlat38;
  u_xlat38 = max(x_1035, 0.100000001f);
  let x_1038 : f32 = u_xlat37;
  let x_1039 : f32 = u_xlat38;
  u_xlat37 = (x_1038 * x_1039);
  let x_1041 : f32 = u_xlat41;
  let x_1042 : f32 = u_xlat37;
  u_xlat37 = (x_1041 * x_1042);
  let x_1044 : f32 = u_xlat39;
  let x_1045 : f32 = u_xlat37;
  u_xlat37 = (x_1044 / x_1045);
  let x_1047 : f32 = u_xlat37;
  let x_1051 : vec3<f32> = u_xlat5;
  let x_1052 : vec3<f32> = ((vec3<f32>(x_1047, x_1047, x_1047) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1051);
  let x_1053 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
  let x_1055 : vec4<f32> = u_xlat7;
  let x_1057 : vec4<f32> = u_xlat8;
  let x_1059 : vec3<f32> = (vec3<f32>(x_1055.x, x_1055.y, x_1055.z) * vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
  let x_1060 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
  let x_1064 : f32 = x_134.x_AdditionalLightsCount.x;
  let x_1066 : f32 = x_54.unity_LightData.y;
  u_xlat37 = min(x_1064, x_1066);
  let x_1070 : f32 = u_xlat37;
  u_xlatu37 = bitcast<u32>(i32(x_1070));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1082 : u32 = u_xlatu_loop_1;
    let x_1083 : u32 = u_xlatu37;
    if ((x_1082 < x_1083)) {
    } else {
      break;
    }
    let x_1086 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1086 >> 2u);
    let x_1090 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_1090 & 3u));
    let x_1093 : u32 = u_xlatu40;
    let x_1096 : vec4<f32> = x_54.unity_LightIndices[bitcast<i32>(x_1093)];
    let x_1106 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1111 : vec4<u32> = indexable[x_1106];
    u_xlat40 = dot(x_1096, bitcast<vec4<f32>>(x_1111));
    let x_1115 : f32 = u_xlat40;
    u_xlati40 = i32(x_1115);
    let x_1118 : vec3<f32> = vs_INTERP0;
    let x_1130 : i32 = u_xlati40;
    let x_1132 : vec4<f32> = x_1129.x_AdditionalLightsPosition[x_1130];
    let x_1135 : i32 = u_xlati40;
    let x_1137 : vec4<f32> = x_1129.x_AdditionalLightsPosition[x_1135];
    u_xlat9 = ((-(x_1118) * vec3<f32>(x_1132.w, x_1132.w, x_1132.w)) + vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
    let x_1140 : vec3<f32> = u_xlat9;
    let x_1141 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1140, x_1141);
    let x_1143 : f32 = u_xlat30;
    u_xlat30 = max(x_1143, 6.10351562e-05f);
    let x_1146 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_1146);
    let x_1149 : f32 = u_xlat42;
    let x_1151 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1149, x_1149, x_1149) * x_1151);
    let x_1154 : f32 = u_xlat30;
    u_xlat43 = (1.0f / x_1154);
    let x_1156 : f32 = u_xlat30;
    let x_1157 : i32 = u_xlati40;
    let x_1159 : f32 = x_1129.x_AdditionalLightsAttenuation[x_1157].x;
    u_xlat30 = (x_1156 * x_1159);
    let x_1161 : f32 = u_xlat30;
    let x_1163 : f32 = u_xlat30;
    u_xlat30 = ((-(x_1161) * x_1163) + 1.0f);
    let x_1166 : f32 = u_xlat30;
    u_xlat30 = max(x_1166, 0.0f);
    let x_1168 : f32 = u_xlat30;
    let x_1169 : f32 = u_xlat30;
    u_xlat30 = (x_1168 * x_1169);
    let x_1171 : f32 = u_xlat30;
    let x_1172 : f32 = u_xlat43;
    u_xlat30 = (x_1171 * x_1172);
    let x_1174 : i32 = u_xlati40;
    let x_1176 : vec4<f32> = x_1129.x_AdditionalLightsSpotDir[x_1174];
    let x_1178 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1176.x, x_1176.y, x_1176.z), x_1178);
    let x_1180 : f32 = u_xlat43;
    let x_1181 : i32 = u_xlati40;
    let x_1183 : f32 = x_1129.x_AdditionalLightsAttenuation[x_1181].z;
    let x_1185 : i32 = u_xlati40;
    let x_1187 : f32 = x_1129.x_AdditionalLightsAttenuation[x_1185].w;
    u_xlat43 = ((x_1180 * x_1183) + x_1187);
    let x_1189 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1189, 0.0f, 1.0f);
    let x_1191 : f32 = u_xlat43;
    let x_1192 : f32 = u_xlat43;
    u_xlat43 = (x_1191 * x_1192);
    let x_1194 : f32 = u_xlat30;
    let x_1195 : f32 = u_xlat43;
    u_xlat30 = (x_1194 * x_1195);
    let x_1198 : vec3<f32> = u_xlat18;
    let x_1200 : i32 = u_xlati40;
    let x_1202 : vec4<f32> = x_1129.x_AdditionalLightsColor[x_1200];
    u_xlat11 = (vec3<f32>(x_1198.x, x_1198.x, x_1198.x) * vec3<f32>(x_1202.x, x_1202.y, x_1202.z));
    let x_1205 : vec4<f32> = u_xlat3;
    let x_1207 : vec3<f32> = u_xlat10;
    u_xlat40 = dot(vec3<f32>(x_1205.x, x_1205.y, x_1205.z), x_1207);
    let x_1209 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1209, 0.0f, 1.0f);
    let x_1211 : f32 = u_xlat40;
    let x_1212 : f32 = u_xlat30;
    u_xlat40 = (x_1211 * x_1212);
    let x_1214 : f32 = u_xlat40;
    let x_1216 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1214, x_1214, x_1214) * x_1216);
    let x_1218 : vec3<f32> = u_xlat9;
    let x_1219 : f32 = u_xlat42;
    let x_1222 : vec3<f32> = u_xlat12;
    u_xlat9 = ((x_1218 * vec3<f32>(x_1219, x_1219, x_1219)) + x_1222);
    let x_1224 : vec3<f32> = u_xlat9;
    let x_1225 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(x_1224, x_1225);
    let x_1227 : f32 = u_xlat40;
    u_xlat40 = max(x_1227, 1.17549435e-37f);
    let x_1229 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1229);
    let x_1231 : f32 = u_xlat40;
    let x_1233 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1231, x_1231, x_1231) * x_1233);
    let x_1235 : vec4<f32> = u_xlat3;
    let x_1237 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1235.x, x_1235.y, x_1235.z), x_1237);
    let x_1239 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1239, 0.0f, 1.0f);
    let x_1241 : vec3<f32> = u_xlat10;
    let x_1242 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1241, x_1242);
    let x_1244 : f32 = u_xlat30;
    u_xlat30 = clamp(x_1244, 0.0f, 1.0f);
    let x_1246 : f32 = u_xlat40;
    let x_1247 : f32 = u_xlat40;
    u_xlat40 = (x_1246 * x_1247);
    let x_1249 : f32 = u_xlat40;
    let x_1251 : f32 = u_xlat26.x;
    u_xlat40 = ((x_1249 * x_1251) + 1.000010014f);
    let x_1254 : f32 = u_xlat30;
    let x_1255 : f32 = u_xlat30;
    u_xlat30 = (x_1254 * x_1255);
    let x_1257 : f32 = u_xlat40;
    let x_1258 : f32 = u_xlat40;
    u_xlat40 = (x_1257 * x_1258);
    let x_1260 : f32 = u_xlat30;
    u_xlat30 = max(x_1260, 0.100000001f);
    let x_1262 : f32 = u_xlat40;
    let x_1263 : f32 = u_xlat30;
    u_xlat40 = (x_1262 * x_1263);
    let x_1265 : f32 = u_xlat41;
    let x_1266 : f32 = u_xlat40;
    u_xlat40 = (x_1265 * x_1266);
    let x_1268 : f32 = u_xlat39;
    let x_1269 : f32 = u_xlat40;
    u_xlat40 = (x_1268 / x_1269);
    let x_1271 : f32 = u_xlat40;
    let x_1274 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1271, x_1271, x_1271) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1274);
    let x_1276 : vec3<f32> = u_xlat9;
    let x_1277 : vec3<f32> = u_xlat11;
    let x_1279 : vec4<f32> = u_xlat8;
    let x_1281 : vec3<f32> = ((x_1276 * x_1277) + vec3<f32>(x_1279.x, x_1279.y, x_1279.z));
    let x_1282 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);

    continuing {
      let x_1284 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1284 + bitcast<u32>(1i));
    }
  }
  let x_1286 : vec4<f32> = u_xlat4;
  let x_1288 : vec4<f32> = u_xlat6;
  let x_1291 : vec4<f32> = u_xlat7;
  u_xlat12 = ((vec3<f32>(x_1286.x, x_1286.y, x_1286.z) * vec3<f32>(x_1288.x, x_1288.x, x_1288.x)) + vec3<f32>(x_1291.x, x_1291.y, x_1291.z));
  let x_1294 : vec4<f32> = u_xlat8;
  let x_1296 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_1294.x, x_1294.y, x_1294.z) + x_1296);
  let x_1298 : vec4<f32> = vs_INTERP4;
  let x_1300 : vec3<f32> = u_xlat1;
  let x_1302 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_1298.w, x_1298.w, x_1298.w) * x_1300) + x_1302);
  let x_1305 : f32 = u_xlat2.x;
  let x_1307 : f32 = u_xlat2.x;
  u_xlat1.x = (x_1305 * -(x_1307));
  let x_1312 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1312);
  let x_1315 : vec3<f32> = u_xlat12;
  let x_1318 : vec4<f32> = x_134.unity_FogColor;
  u_xlat12 = (x_1315 + -(vec3<f32>(x_1318.x, x_1318.y, x_1318.z)));
  let x_1324 : vec3<f32> = u_xlat1;
  let x_1326 : vec3<f32> = u_xlat12;
  let x_1329 : vec4<f32> = x_134.unity_FogColor;
  let x_1331 : vec3<f32> = ((vec3<f32>(x_1324.x, x_1324.x, x_1324.x) * x_1326) + vec3<f32>(x_1329.x, x_1329.y, x_1329.z));
  let x_1332 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1332.w);
  let x_1334 : bool = u_xlatb14;
  let x_1335 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1335, x_1334);
  let x_1343 : u32 = x_134.x_RenderingLayerMaxInt;
  let x_1345 : f32 = x_54.unity_RenderingLayer.x;
  u_xlatu0 = (x_1343 & bitcast<u32>(x_1345));
  let x_1348 : u32 = u_xlatu0;
  u_xlat0 = f32(x_1348);
  let x_1351 : f32 = u_xlat0;
  let x_1353 : f32 = x_134.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1351 * x_1353);
  let x_1357 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1357, 0.0f, 1.0f);
  let x_1360 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1360.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(5) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

