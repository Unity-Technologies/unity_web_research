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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_134 : PGlobals;

@group(1) @binding(4) var<uniform> x_144 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_238 : MainLightShadows;

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

@group(1) @binding(1) var<uniform> x_1065 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : f32;
  var u_xlatb11 : vec2<bool>;
  var u_xlat11 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
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
  var x_357 : f32;
  var u_xlat13 : f32;
  var u_xlat24 : f32;
  var x_403 : f32;
  var x_482 : f32;
  var x_494 : f32;
  var x_505 : f32;
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
  u_xlat17 = (vec3<f32>(x_176, x_176, x_176) * vec3<f32>(x_178.x, x_178.y, x_178.z));
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
  let x_197 : vec3<f32> = u_xlat17;
  let x_199 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_197.y, x_197.y, x_197.y));
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec3<f32> = u_xlat17;
  let x_204 : vec4<f32> = u_xlat2;
  let x_207 : vec4<f32> = u_xlat3;
  let x_209 : vec3<f32> = ((vec3<f32>(x_202.x, x_202.x, x_202.x) * vec3<f32>(x_204.x, x_204.y, x_204.z)) + vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec3<f32> = u_xlat17;
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
  u_xlat34 = (-(x_299) + 1.0f);
  let x_302 : f32 = u_xlat0;
  let x_304 : f32 = x_238.x_MainLightShadowParams.x;
  let x_306 : f32 = u_xlat34;
  u_xlat0 = ((x_302 * x_304) + x_306);
  let x_310 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_310);
  let x_314 : f32 = u_xlat2.z;
  u_xlatb13 = (x_314 >= 1.0f);
  let x_316 : bool = u_xlatb13;
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
  u_xlat13 = dpdxCoarse(x_371);
  let x_375 : f32 = u_xlat4.w;
  u_xlat24 = dpdyCoarse(x_375);
  let x_377 : f32 = u_xlat24;
  let x_379 : f32 = u_xlat13;
  u_xlat13 = (abs(x_377) + abs(x_379));
  let x_382 : f32 = u_xlat13;
  u_xlat13 = max(x_382, 0.0001f);
  let x_386 : f32 = u_xlat2.x;
  let x_387 : f32 = u_xlat13;
  u_xlat2.x = (x_386 / x_387);
  let x_391 : f32 = u_xlat2.x;
  u_xlat2.x = (x_391 + 0.5f);
  let x_396 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_396, 0.0f, 1.0f);
  let x_400 : f32 = x_134.x_AlphaToMaskAvailable;
  u_xlatb13 = !((x_400 == 0.0f));
  let x_402 : bool = u_xlatb13;
  if (x_402) {
    let x_407 : f32 = u_xlat2.x;
    x_403 = x_407;
  } else {
    let x_409 : f32 = u_xlat0;
    x_403 = x_409;
  }
  let x_410 : f32 = x_403;
  u_xlat0 = x_410;
  let x_411 : f32 = u_xlat0;
  u_xlat2.x = (x_411 + -0.0001f);
  let x_416 : f32 = u_xlat2.x;
  u_xlatb2 = (x_416 < 0.0f);
  let x_418 : bool = u_xlatb2;
  if (((select(0i, 1i, x_418) * -1i) != 0i)) {
    discard;
  }
  let x_426 : vec3<f32> = u_xlat11;
  let x_427 : vec3<f32> = u_xlat17;
  u_xlat11 = (x_426 * vec3<f32>(x_427.y, x_427.y, x_427.y));
  let x_430 : vec3<f32> = u_xlat17;
  let x_432 : vec4<f32> = vs_INTERP2;
  let x_435 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_430.x, x_430.x, x_430.x) * vec3<f32>(x_432.x, x_432.y, x_432.z)) + x_435);
  let x_437 : vec3<f32> = u_xlat17;
  let x_439 : vec3<f32> = vs_INTERP1;
  let x_441 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_437.z, x_437.z, x_437.z) * x_439) + x_441);
  let x_443 : vec3<f32> = u_xlat11;
  let x_444 : vec3<f32> = u_xlat11;
  u_xlat2.x = dot(x_443, x_444);
  let x_448 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_448);
  let x_451 : vec3<f32> = u_xlat11;
  let x_452 : vec4<f32> = u_xlat2;
  u_xlat11 = (x_451 * vec3<f32>(x_452.x, x_452.x, x_452.x));
  let x_456 : f32 = x_134.unity_OrthoParams.w;
  u_xlatb2 = (x_456 == 0.0f);
  let x_458 : vec3<f32> = vs_INTERP0;
  let x_463 : vec3<f32> = x_134.x_WorldSpaceCameraPos;
  let x_464 : vec3<f32> = (-(x_458) + x_463);
  let x_465 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat3;
  let x_469 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_467.x, x_467.y, x_467.z), vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_472);
  let x_474 : f32 = u_xlat24;
  let x_476 : vec4<f32> = u_xlat3;
  let x_478 : vec3<f32> = (vec3<f32>(x_474, x_474, x_474) * vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_479 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
  let x_481 : bool = u_xlatb2;
  if (x_481) {
    let x_486 : f32 = u_xlat3.x;
    x_482 = x_486;
  } else {
    let x_490 : f32 = x_134.unity_MatrixV[0i].z;
    x_482 = x_490;
  }
  let x_491 : f32 = x_482;
  u_xlat4.x = x_491;
  let x_493 : bool = u_xlatb2;
  if (x_493) {
    let x_498 : f32 = u_xlat3.y;
    x_494 = x_498;
  } else {
    let x_501 : f32 = x_134.unity_MatrixV[1i].z;
    x_494 = x_501;
  }
  let x_502 : f32 = x_494;
  u_xlat4.y = x_502;
  let x_504 : bool = u_xlatb2;
  if (x_504) {
    let x_509 : f32 = u_xlat3.z;
    x_505 = x_509;
  } else {
    let x_512 : f32 = x_134.unity_MatrixV[2i].z;
    x_505 = x_512;
  }
  let x_513 : f32 = x_505;
  u_xlat4.z = x_513;
  let x_522 : vec2<f32> = vs_INTERP5;
  let x_524 : f32 = x_134.x_GlobalMipBias.x;
  let x_525 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_522, x_524);
  u_xlat3 = x_525;
  let x_530 : vec2<f32> = vs_INTERP5;
  let x_532 : f32 = x_134.x_GlobalMipBias.x;
  let x_533 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_530, x_532);
  let x_534 : vec3<f32> = vec3<f32>(x_533.x, x_533.y, x_533.z);
  let x_535 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_534.x, x_535.y, x_534.y, x_534.z);
  let x_537 : vec4<f32> = u_xlat3;
  let x_541 : vec3<f32> = (vec3<f32>(x_537.x, x_537.y, x_537.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_542 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_544 : vec3<f32> = u_xlat11;
  let x_545 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_544, vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_550 : f32 = u_xlat3.x;
  u_xlat3.x = (x_550 + 0.5f);
  let x_553 : vec4<f32> = u_xlat2;
  let x_555 : vec4<f32> = u_xlat3;
  let x_557 : vec3<f32> = (vec3<f32>(x_553.x, x_553.z, x_553.w) * vec3<f32>(x_555.x, x_555.x, x_555.x));
  let x_558 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_557.x, x_558.y, x_557.y, x_557.z);
  let x_561 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_561, 0.0001f);
  let x_564 : vec4<f32> = u_xlat2;
  let x_566 : vec4<f32> = u_xlat3;
  let x_568 : vec3<f32> = (vec3<f32>(x_564.x, x_564.z, x_564.w) / vec3<f32>(x_566.x, x_566.x, x_566.x));
  let x_569 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_568.x, x_569.y, x_568.y, x_568.z);
  let x_573 : vec4<f32> = x_134.x_ScaledScreenParams;
  let x_574 : vec2<f32> = vec2<f32>(x_573.x, x_573.y);
  let x_578 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_574.x, x_574.y));
  let x_579 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_578.x, x_578.y, x_579.z, x_579.w);
  let x_581 : vec4<f32> = u_xlat3;
  let x_583 : vec4<f32> = hlslcc_FragCoord;
  let x_585 : vec2<f32> = (vec2<f32>(x_581.x, x_581.y) * vec2<f32>(x_583.x, x_583.y));
  let x_586 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_585.x, x_585.y, x_586.z, x_586.w);
  let x_590 : f32 = u_xlat3.y;
  let x_593 : f32 = x_134.x_ScaleBiasRt.x;
  let x_596 : f32 = x_134.x_ScaleBiasRt.y;
  u_xlat14.x = ((x_590 * x_593) + x_596);
  let x_600 : f32 = u_xlat14.x;
  u_xlat3.z = (-(x_600) + 1.0f);
  let x_605 : f32 = u_xlat6.x;
  u_xlat6.x = x_605;
  let x_608 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_608, 0.0f, 1.0f);
  let x_611 : f32 = u_xlat0;
  u_xlat0 = min(x_611, 1.0f);
  let x_613 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_613 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_618 : f32 = u_xlat6.x;
  u_xlat14.x = (-(x_618) + 1.0f);
  let x_624 : f32 = u_xlat14.x;
  let x_626 : f32 = u_xlat14.x;
  u_xlat36 = (x_624 * x_626);
  let x_628 : f32 = u_xlat36;
  u_xlat36 = max(x_628, 0.0078125f);
  let x_632 : f32 = u_xlat36;
  let x_633 : f32 = u_xlat36;
  u_xlat37 = (x_632 * x_633);
  let x_637 : f32 = u_xlat6.x;
  u_xlat38 = (x_637 + 0.040000021f);
  let x_640 : f32 = u_xlat38;
  u_xlat38 = min(x_640, 1.0f);
  let x_642 : f32 = u_xlat36;
  u_xlat6.x = ((x_642 * 4.0f) + 2.0f);
  let x_652 : vec4<f32> = u_xlat3;
  let x_655 : f32 = x_134.x_GlobalMipBias.x;
  let x_656 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_652.x, x_652.z), x_655);
  u_xlat3.x = x_656.x;
  let x_661 : f32 = u_xlat3.x;
  u_xlat25 = (x_661 + -1.0f);
  let x_665 : f32 = x_134.x_AmbientOcclusionParam.w;
  let x_666 : f32 = u_xlat25;
  u_xlat25 = ((x_665 * x_666) + 1.0f);
  let x_670 : f32 = u_xlat3.x;
  let x_672 : f32 = vs_INTERP4.w;
  u_xlat3.x = min(x_670, x_672);
  let x_677 : vec4<f32> = vs_INTERP9;
  let x_678 : vec2<f32> = vec2<f32>(x_677.x, x_677.y);
  let x_680 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_678.x, x_678.y, x_680);
  let x_687 : vec3<f32> = txVec1;
  let x_689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_687.xy, x_687.z);
  u_xlat17.x = x_689;
  let x_692 : f32 = u_xlat17.x;
  let x_694 : f32 = x_238.x_MainLightShadowParams.x;
  let x_696 : f32 = u_xlat34;
  u_xlat34 = ((x_692 * x_694) + x_696);
  let x_700 : f32 = vs_INTERP9.z;
  u_xlatb17 = (0.0f >= x_700);
  let x_704 : f32 = vs_INTERP9.z;
  u_xlatb28 = (x_704 >= 1.0f);
  let x_706 : bool = u_xlatb28;
  let x_707 : bool = u_xlatb17;
  u_xlatb17 = (x_706 | x_707);
  let x_709 : bool = u_xlatb17;
  let x_710 : f32 = u_xlat34;
  u_xlat34 = select(x_710, 1.0f, x_709);
  let x_712 : vec3<f32> = vs_INTERP0;
  let x_714 : vec3<f32> = x_134.x_WorldSpaceCameraPos;
  u_xlat17 = (x_712 + -(x_714));
  let x_717 : vec3<f32> = u_xlat17;
  let x_718 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_717, x_718);
  let x_722 : f32 = u_xlat17.x;
  let x_724 : f32 = x_238.x_MainLightShadowParams.z;
  let x_727 : f32 = x_238.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_722 * x_724) + x_727);
  let x_731 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_731, 0.0f, 1.0f);
  let x_735 : f32 = u_xlat34;
  u_xlat28 = (-(x_735) + 1.0f);
  let x_739 : f32 = u_xlat17.x;
  let x_740 : f32 = u_xlat28;
  let x_742 : f32 = u_xlat34;
  u_xlat34 = ((x_739 * x_740) + x_742);
  let x_744 : f32 = u_xlat25;
  let x_747 : vec4<f32> = x_134.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_744, x_744, x_744) * vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_750 : vec4<f32> = u_xlat4;
  let x_753 : vec3<f32> = u_xlat11;
  u_xlat7.x = dot(-(vec3<f32>(x_750.x, x_750.y, x_750.z)), x_753);
  let x_757 : f32 = u_xlat7.x;
  let x_759 : f32 = u_xlat7.x;
  u_xlat7.x = (x_757 + x_759);
  let x_762 : vec3<f32> = u_xlat11;
  let x_763 : vec4<f32> = u_xlat7;
  let x_767 : vec4<f32> = u_xlat4;
  let x_770 : vec3<f32> = ((x_762 * -(vec3<f32>(x_763.x, x_763.x, x_763.x))) + -(vec3<f32>(x_767.x, x_767.y, x_767.z)));
  let x_771 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_774 : vec3<f32> = u_xlat11;
  let x_775 : vec4<f32> = u_xlat4;
  u_xlat40 = dot(x_774, vec3<f32>(x_775.x, x_775.y, x_775.z));
  let x_778 : f32 = u_xlat40;
  u_xlat40 = clamp(x_778, 0.0f, 1.0f);
  let x_780 : f32 = u_xlat40;
  u_xlat40 = (-(x_780) + 1.0f);
  let x_783 : f32 = u_xlat40;
  let x_784 : f32 = u_xlat40;
  u_xlat40 = (x_783 * x_784);
  let x_786 : f32 = u_xlat40;
  let x_787 : f32 = u_xlat40;
  u_xlat40 = (x_786 * x_787);
  let x_791 : f32 = u_xlat14.x;
  u_xlat8.x = ((-(x_791) * 0.699999988f) + 1.700000048f);
  let x_799 : f32 = u_xlat14.x;
  let x_801 : f32 = u_xlat8.x;
  u_xlat14.x = (x_799 * x_801);
  let x_805 : f32 = u_xlat14.x;
  u_xlat14.x = (x_805 * 6.0f);
  let x_817 : vec4<f32> = u_xlat7;
  let x_820 : f32 = u_xlat14.x;
  let x_821 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_817.x, x_817.y, x_817.z), x_820);
  u_xlat8 = x_821;
  let x_823 : f32 = u_xlat8.w;
  u_xlat14.x = (x_823 + -1.0f);
  let x_827 : f32 = x_54.unity_SpecCube0_HDR.w;
  let x_829 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_827 * x_829) + 1.0f);
  let x_834 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_834, 0.0f);
  let x_838 : f32 = u_xlat14.x;
  u_xlat14.x = log2(x_838);
  let x_842 : f32 = u_xlat14.x;
  let x_844 : f32 = x_54.unity_SpecCube0_HDR.y;
  u_xlat14.x = (x_842 * x_844);
  let x_848 : f32 = u_xlat14.x;
  u_xlat14.x = exp2(x_848);
  let x_852 : f32 = u_xlat14.x;
  let x_854 : f32 = x_54.unity_SpecCube0_HDR.x;
  u_xlat14.x = (x_852 * x_854);
  let x_857 : vec4<f32> = u_xlat8;
  let x_859 : vec3<f32> = u_xlat14;
  let x_861 : vec3<f32> = (vec3<f32>(x_857.x, x_857.y, x_857.z) * vec3<f32>(x_859.x, x_859.x, x_859.x));
  let x_862 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  let x_864 : f32 = u_xlat36;
  let x_866 : f32 = u_xlat36;
  let x_870 : vec2<f32> = ((vec2<f32>(x_864, x_864) * vec2<f32>(x_866, x_866)) + vec2<f32>(-1.0f, 1.0f));
  let x_871 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_870.x, x_871.y, x_870.y);
  let x_874 : f32 = u_xlat14.z;
  u_xlat36 = (1.0f / x_874);
  let x_876 : f32 = u_xlat38;
  u_xlat38 = (x_876 + -0.039999999f);
  let x_879 : f32 = u_xlat40;
  let x_880 : f32 = u_xlat38;
  u_xlat38 = ((x_879 * x_880) + 0.039999999f);
  let x_884 : f32 = u_xlat36;
  let x_885 : f32 = u_xlat38;
  u_xlat36 = (x_884 * x_885);
  let x_887 : f32 = u_xlat36;
  let x_889 : vec4<f32> = u_xlat7;
  let x_891 : vec3<f32> = (vec3<f32>(x_887, x_887, x_887) * vec3<f32>(x_889.x, x_889.y, x_889.z));
  let x_892 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
  let x_894 : vec4<f32> = u_xlat2;
  let x_896 : vec3<f32> = u_xlat5;
  let x_898 : vec4<f32> = u_xlat7;
  let x_900 : vec3<f32> = ((vec3<f32>(x_894.x, x_894.z, x_894.w) * x_896) + vec3<f32>(x_898.x, x_898.y, x_898.z));
  let x_901 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_900.x, x_901.y, x_900.y, x_900.z);
  let x_903 : f32 = u_xlat34;
  let x_905 : f32 = x_54.unity_LightData.z;
  u_xlat34 = (x_903 * x_905);
  let x_907 : vec3<f32> = u_xlat11;
  let x_909 : vec4<f32> = x_134.x_MainLightPosition;
  u_xlat36 = dot(x_907, vec3<f32>(x_909.x, x_909.y, x_909.z));
  let x_912 : f32 = u_xlat36;
  u_xlat36 = clamp(x_912, 0.0f, 1.0f);
  let x_914 : f32 = u_xlat34;
  let x_915 : f32 = u_xlat36;
  u_xlat34 = (x_914 * x_915);
  let x_917 : f32 = u_xlat34;
  let x_919 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_917, x_917, x_917) * x_919);
  let x_921 : vec4<f32> = u_xlat4;
  let x_924 : vec4<f32> = x_134.x_MainLightPosition;
  let x_926 : vec3<f32> = (vec3<f32>(x_921.x, x_921.y, x_921.z) + vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : vec4<f32> = u_xlat7;
  let x_931 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_929.x, x_929.y, x_929.z), vec3<f32>(x_931.x, x_931.y, x_931.z));
  let x_934 : f32 = u_xlat34;
  u_xlat34 = max(x_934, 1.17549435e-37f);
  let x_936 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_936);
  let x_938 : f32 = u_xlat34;
  let x_940 : vec4<f32> = u_xlat7;
  let x_942 : vec3<f32> = (vec3<f32>(x_938, x_938, x_938) * vec3<f32>(x_940.x, x_940.y, x_940.z));
  let x_943 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
  let x_945 : vec3<f32> = u_xlat11;
  let x_946 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(x_945, vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : f32 = u_xlat34;
  u_xlat34 = clamp(x_949, 0.0f, 1.0f);
  let x_952 : vec4<f32> = x_134.x_MainLightPosition;
  let x_954 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_952.x, x_952.y, x_952.z), vec3<f32>(x_954.x, x_954.y, x_954.z));
  let x_957 : f32 = u_xlat36;
  u_xlat36 = clamp(x_957, 0.0f, 1.0f);
  let x_959 : f32 = u_xlat34;
  let x_960 : f32 = u_xlat34;
  u_xlat34 = (x_959 * x_960);
  let x_962 : f32 = u_xlat34;
  let x_964 : f32 = u_xlat14.x;
  u_xlat34 = ((x_962 * x_964) + 1.000010014f);
  let x_968 : f32 = u_xlat36;
  let x_969 : f32 = u_xlat36;
  u_xlat36 = (x_968 * x_969);
  let x_971 : f32 = u_xlat34;
  let x_972 : f32 = u_xlat34;
  u_xlat34 = (x_971 * x_972);
  let x_974 : f32 = u_xlat36;
  u_xlat36 = max(x_974, 0.100000001f);
  let x_977 : f32 = u_xlat34;
  let x_978 : f32 = u_xlat36;
  u_xlat34 = (x_977 * x_978);
  let x_981 : f32 = u_xlat6.x;
  let x_982 : f32 = u_xlat34;
  u_xlat34 = (x_981 * x_982);
  let x_984 : f32 = u_xlat37;
  let x_985 : f32 = u_xlat34;
  u_xlat34 = (x_984 / x_985);
  let x_987 : f32 = u_xlat34;
  let x_991 : vec3<f32> = u_xlat5;
  let x_992 : vec3<f32> = ((vec3<f32>(x_987, x_987, x_987) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_991);
  let x_993 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
  let x_995 : vec3<f32> = u_xlat17;
  let x_996 : vec4<f32> = u_xlat7;
  u_xlat17 = (x_995 * vec3<f32>(x_996.x, x_996.y, x_996.z));
  let x_1001 : f32 = x_134.x_AdditionalLightsCount.x;
  let x_1003 : f32 = x_54.unity_LightData.y;
  u_xlat34 = min(x_1001, x_1003);
  let x_1007 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_1007));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1019 : u32 = u_xlatu_loop_1;
    let x_1020 : u32 = u_xlatu34;
    if ((x_1019 < x_1020)) {
    } else {
      break;
    }
    let x_1023 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_1023 >> 2u);
    let x_1027 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1027 & 3u));
    let x_1030 : u32 = u_xlatu38;
    let x_1033 : vec4<f32> = x_54.unity_LightIndices[bitcast<i32>(x_1030)];
    let x_1043 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1048 : vec4<u32> = indexable[x_1043];
    u_xlat38 = dot(x_1033, bitcast<vec4<f32>>(x_1048));
    let x_1052 : f32 = u_xlat38;
    u_xlati38 = i32(x_1052);
    let x_1054 : vec3<f32> = vs_INTERP0;
    let x_1066 : i32 = u_xlati38;
    let x_1068 : vec4<f32> = x_1065.x_AdditionalLightsPosition[x_1066];
    let x_1071 : i32 = u_xlati38;
    let x_1073 : vec4<f32> = x_1065.x_AdditionalLightsPosition[x_1071];
    let x_1075 : vec3<f32> = ((-(x_1054) * vec3<f32>(x_1068.w, x_1068.w, x_1068.w)) + vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
    let x_1076 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
    let x_1078 : vec4<f32> = u_xlat8;
    let x_1080 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1078.x, x_1078.y, x_1078.z), vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
    let x_1083 : f32 = u_xlat40;
    u_xlat40 = max(x_1083, 6.10351562e-05f);
    let x_1087 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1087);
    let x_1090 : f32 = u_xlat41;
    let x_1092 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1090, x_1090, x_1090) * vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
    let x_1096 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1096);
    let x_1098 : f32 = u_xlat40;
    let x_1099 : i32 = u_xlati38;
    let x_1101 : f32 = x_1065.x_AdditionalLightsAttenuation[x_1099].x;
    u_xlat40 = (x_1098 * x_1101);
    let x_1103 : f32 = u_xlat40;
    let x_1105 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1103) * x_1105) + 1.0f);
    let x_1108 : f32 = u_xlat40;
    u_xlat40 = max(x_1108, 0.0f);
    let x_1110 : f32 = u_xlat40;
    let x_1111 : f32 = u_xlat40;
    u_xlat40 = (x_1110 * x_1111);
    let x_1113 : f32 = u_xlat40;
    let x_1114 : f32 = u_xlat42;
    u_xlat40 = (x_1113 * x_1114);
    let x_1116 : i32 = u_xlati38;
    let x_1118 : vec4<f32> = x_1065.x_AdditionalLightsSpotDir[x_1116];
    let x_1120 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1118.x, x_1118.y, x_1118.z), x_1120);
    let x_1122 : f32 = u_xlat42;
    let x_1123 : i32 = u_xlati38;
    let x_1125 : f32 = x_1065.x_AdditionalLightsAttenuation[x_1123].z;
    let x_1127 : i32 = u_xlati38;
    let x_1129 : f32 = x_1065.x_AdditionalLightsAttenuation[x_1127].w;
    u_xlat42 = ((x_1122 * x_1125) + x_1129);
    let x_1131 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1131, 0.0f, 1.0f);
    let x_1133 : f32 = u_xlat42;
    let x_1134 : f32 = u_xlat42;
    u_xlat42 = (x_1133 * x_1134);
    let x_1136 : f32 = u_xlat40;
    let x_1137 : f32 = u_xlat42;
    u_xlat40 = (x_1136 * x_1137);
    let x_1140 : f32 = u_xlat25;
    let x_1142 : i32 = u_xlati38;
    let x_1144 : vec4<f32> = x_1065.x_AdditionalLightsColor[x_1142];
    u_xlat10 = (vec3<f32>(x_1140, x_1140, x_1140) * vec3<f32>(x_1144.x, x_1144.y, x_1144.z));
    let x_1147 : vec3<f32> = u_xlat11;
    let x_1148 : vec3<f32> = u_xlat9;
    u_xlat38 = dot(x_1147, x_1148);
    let x_1150 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1150, 0.0f, 1.0f);
    let x_1152 : f32 = u_xlat38;
    let x_1153 : f32 = u_xlat40;
    u_xlat38 = (x_1152 * x_1153);
    let x_1155 : f32 = u_xlat38;
    let x_1157 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1155, x_1155, x_1155) * x_1157);
    let x_1159 : vec4<f32> = u_xlat8;
    let x_1161 : f32 = u_xlat41;
    let x_1164 : vec4<f32> = u_xlat4;
    let x_1166 : vec3<f32> = ((vec3<f32>(x_1159.x, x_1159.y, x_1159.z) * vec3<f32>(x_1161, x_1161, x_1161)) + vec3<f32>(x_1164.x, x_1164.y, x_1164.z));
    let x_1167 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1167.w);
    let x_1169 : vec4<f32> = u_xlat8;
    let x_1171 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1169.x, x_1169.y, x_1169.z), vec3<f32>(x_1171.x, x_1171.y, x_1171.z));
    let x_1174 : f32 = u_xlat38;
    u_xlat38 = max(x_1174, 1.17549435e-37f);
    let x_1176 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1176);
    let x_1178 : f32 = u_xlat38;
    let x_1180 : vec4<f32> = u_xlat8;
    let x_1182 : vec3<f32> = (vec3<f32>(x_1178, x_1178, x_1178) * vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
    let x_1183 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
    let x_1185 : vec3<f32> = u_xlat11;
    let x_1186 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_1185, vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
    let x_1189 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1189, 0.0f, 1.0f);
    let x_1191 : vec3<f32> = u_xlat9;
    let x_1192 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1191, vec3<f32>(x_1192.x, x_1192.y, x_1192.z));
    let x_1195 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1195, 0.0f, 1.0f);
    let x_1197 : f32 = u_xlat38;
    let x_1198 : f32 = u_xlat38;
    u_xlat38 = (x_1197 * x_1198);
    let x_1200 : f32 = u_xlat38;
    let x_1202 : f32 = u_xlat14.x;
    u_xlat38 = ((x_1200 * x_1202) + 1.000010014f);
    let x_1205 : f32 = u_xlat40;
    let x_1206 : f32 = u_xlat40;
    u_xlat40 = (x_1205 * x_1206);
    let x_1208 : f32 = u_xlat38;
    let x_1209 : f32 = u_xlat38;
    u_xlat38 = (x_1208 * x_1209);
    let x_1211 : f32 = u_xlat40;
    u_xlat40 = max(x_1211, 0.100000001f);
    let x_1213 : f32 = u_xlat38;
    let x_1214 : f32 = u_xlat40;
    u_xlat38 = (x_1213 * x_1214);
    let x_1217 : f32 = u_xlat6.x;
    let x_1218 : f32 = u_xlat38;
    u_xlat38 = (x_1217 * x_1218);
    let x_1220 : f32 = u_xlat37;
    let x_1221 : f32 = u_xlat38;
    u_xlat38 = (x_1220 / x_1221);
    let x_1223 : f32 = u_xlat38;
    let x_1226 : vec3<f32> = u_xlat5;
    let x_1227 : vec3<f32> = ((vec3<f32>(x_1223, x_1223, x_1223) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1226);
    let x_1228 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1228.w);
    let x_1230 : vec4<f32> = u_xlat8;
    let x_1232 : vec3<f32> = u_xlat10;
    let x_1234 : vec4<f32> = u_xlat7;
    let x_1236 : vec3<f32> = ((vec3<f32>(x_1230.x, x_1230.y, x_1230.z) * x_1232) + vec3<f32>(x_1234.x, x_1234.y, x_1234.z));
    let x_1237 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);

    continuing {
      let x_1239 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1239 + bitcast<u32>(1i));
    }
  }
  let x_1241 : vec4<f32> = u_xlat2;
  let x_1243 : vec4<f32> = u_xlat3;
  let x_1246 : vec3<f32> = u_xlat17;
  u_xlat11 = ((vec3<f32>(x_1241.x, x_1241.z, x_1241.w) * vec3<f32>(x_1243.x, x_1243.x, x_1243.x)) + x_1246);
  let x_1248 : vec4<f32> = u_xlat7;
  let x_1250 : vec3<f32> = u_xlat11;
  u_xlat11 = (vec3<f32>(x_1248.x, x_1248.y, x_1248.z) + x_1250);
  let x_1254 : vec4<f32> = vs_INTERP4;
  let x_1256 : vec3<f32> = u_xlat1;
  let x_1258 : vec3<f32> = u_xlat11;
  let x_1259 : vec3<f32> = ((vec3<f32>(x_1254.w, x_1254.w, x_1254.w) * x_1256) + x_1258);
  let x_1260 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1260.w);
  let x_1262 : bool = u_xlatb13;
  let x_1263 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1263, x_1262);
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

