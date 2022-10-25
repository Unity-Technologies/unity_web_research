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
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_331 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_1843 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb20 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
  var u_xlat20 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var x_161 : f32;
  var x_173 : f32;
  var x_185 : f32;
  var u_xlat58 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat59 : f32;
  var u_xlat60 : f32;
  var u_xlatb4 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb23 : bool;
  var u_xlat23 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat42 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat61 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlat15 : vec2<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb42 : bool;
  var x_1623 : f32;
  var u_xlatu61 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu6 : u32;
  var u_xlati25 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati6 : i32;
  var u_xlat26 : vec3<f32>;
  var u_xlat63 : f32;
  var u_xlat19 : vec3<f32>;
  var u_xlatb19 : bool;
  var x_2072 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_64 : vec4<f32> = hlslcc_FragCoord;
  let x_68 : f32 = x_44.x_DitheringTextureInvSize;
  let x_70 : vec2<f32> = (vec2<f32>(x_64.x, x_64.y) * vec2<f32>(x_68, x_68));
  let x_71 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_78 : vec3<f32> = u_xlat1;
  let x_81 : f32 = x_44.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat1.x = x_82.w;
  let x_96 : f32 = x_93.unity_LODFade.x;
  u_xlatb20 = (x_96 >= 0.0f);
  let x_99 : bool = u_xlatb20;
  if (x_99) {
    let x_104 : f32 = u_xlat1.x;
    x_100 = abs(x_104);
  } else {
    let x_108 : f32 = u_xlat1.x;
    x_100 = -(abs(x_108));
  }
  let x_111 : f32 = x_100;
  u_xlat1.x = x_111;
  let x_114 : f32 = u_xlat1.x;
  let x_117 : f32 = x_93.unity_LODFade.x;
  u_xlat1.x = (-(x_114) + x_117);
  let x_122 : f32 = u_xlat1.x;
  u_xlatb1 = (x_122 < 0.0f);
  let x_124 : bool = u_xlatb1;
  if (((select(0i, 1i, x_124) * -1i) != 0i)) {
    discard;
  }
  let x_135 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_135 == 0.0f);
  let x_140 : vec3<f32> = vs_TEXCOORD1;
  let x_145 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat20 = (-(x_140) + x_145);
  let x_148 : vec3<f32> = u_xlat20;
  let x_149 : vec3<f32> = u_xlat20;
  u_xlat2.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_153);
  let x_156 : vec3<f32> = u_xlat20;
  let x_157 : vec3<f32> = u_xlat2;
  u_xlat20 = (x_156 * vec3<f32>(x_157.x, x_157.x, x_157.x));
  let x_160 : bool = u_xlatb1;
  if (x_160) {
    let x_165 : f32 = u_xlat20.x;
    x_161 = x_165;
  } else {
    let x_169 : f32 = x_44.unity_MatrixV[0i].z;
    x_161 = x_169;
  }
  let x_170 : f32 = x_161;
  u_xlat2.x = x_170;
  let x_172 : bool = u_xlatb1;
  if (x_172) {
    let x_178 : f32 = u_xlat20.y;
    x_173 = x_178;
  } else {
    let x_181 : f32 = x_44.unity_MatrixV[1i].z;
    x_173 = x_181;
  }
  let x_182 : f32 = x_173;
  u_xlat2.y = x_182;
  let x_184 : bool = u_xlatb1;
  if (x_184) {
    let x_189 : f32 = u_xlat20.z;
    x_185 = x_189;
  } else {
    let x_192 : f32 = x_44.unity_MatrixV[2i].z;
    x_185 = x_192;
  }
  let x_193 : f32 = x_185;
  u_xlat2.z = x_193;
  let x_196 : vec3<f32> = vs_TEXCOORD2;
  let x_197 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_196, x_197);
  let x_201 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_201);
  let x_204 : vec3<f32> = u_xlat1;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_204.x, x_204.x, x_204.x) * x_206);
  let x_209 : vec3<f32> = u_xlat2;
  let x_210 : vec3<f32> = u_xlat2;
  u_xlat58 = dot(x_209, x_210);
  let x_212 : f32 = u_xlat58;
  u_xlat58 = max(x_212, 1.17549435e-37f);
  let x_215 : f32 = u_xlat58;
  u_xlat58 = inverseSqrt(x_215);
  let x_224 : vec2<f32> = vs_TEXCOORD7;
  let x_226 : f32 = x_44.x_GlobalMipBias.x;
  let x_227 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_224, x_226);
  u_xlat3 = x_227;
  let x_233 : vec2<f32> = vs_TEXCOORD7;
  let x_235 : f32 = x_44.x_GlobalMipBias.x;
  let x_236 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_233, x_235);
  let x_237 : vec3<f32> = vec3<f32>(x_236.x, x_236.y, x_236.z);
  let x_238 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat3;
  let x_244 : vec3<f32> = (vec3<f32>(x_240.x, x_240.y, x_240.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_245 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_248 : vec3<f32> = u_xlat1;
  let x_249 : vec4<f32> = u_xlat3;
  u_xlat59 = dot(x_248, vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : f32 = u_xlat59;
  u_xlat59 = (x_252 + 0.5f);
  let x_255 : f32 = u_xlat59;
  let x_257 : vec4<f32> = u_xlat4;
  let x_259 : vec3<f32> = (vec3<f32>(x_255, x_255, x_255) * vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_263 : f32 = u_xlat3.w;
  u_xlat59 = max(x_263, 0.0001f);
  let x_266 : vec4<f32> = u_xlat3;
  let x_268 : f32 = u_xlat59;
  let x_270 : vec3<f32> = (vec3<f32>(x_266.x, x_266.y, x_266.z) / vec3<f32>(x_268, x_268, x_268));
  let x_271 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_275 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_276 : vec2<f32> = vec2<f32>(x_275.x, x_275.y);
  let x_280 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_276.x, x_276.y));
  let x_281 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_280.x, x_280.y, x_281.z, x_281.w);
  let x_283 : vec4<f32> = u_xlat4;
  let x_285 : vec4<f32> = hlslcc_FragCoord;
  let x_287 : vec2<f32> = (vec2<f32>(x_283.x, x_283.y) * vec2<f32>(x_285.x, x_285.y));
  let x_288 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_287.x, x_287.y, x_288.z, x_288.w);
  let x_291 : f32 = u_xlat4.y;
  let x_294 : f32 = x_44.x_ScaleBiasRt.x;
  let x_297 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat59 = ((x_291 * x_294) + x_297);
  let x_299 : f32 = u_xlat59;
  u_xlat4.z = (-(x_299) + 1.0f);
  let x_308 : vec4<f32> = u_xlat4;
  let x_311 : f32 = x_44.x_GlobalMipBias.x;
  let x_312 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_308.x, x_308.z), x_311);
  u_xlat59 = x_312.x;
  let x_315 : f32 = u_xlat59;
  u_xlat60 = (x_315 + -1.0f);
  let x_320 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_321 : f32 = u_xlat60;
  u_xlat60 = ((x_320 * x_321) + 1.0f);
  let x_324 : f32 = u_xlat59;
  u_xlat59 = min(x_324, 1.0f);
  let x_333 : f32 = x_331.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_333);
  let x_335 : bool = u_xlatb4;
  if (x_335) {
    let x_339 : f32 = x_331.x_MainLightShadowParams.y;
    u_xlatb4 = (x_339 == 1.0f);
    let x_341 : bool = u_xlatb4;
    if (x_341) {
      let x_345 : vec4<f32> = vs_TEXCOORD6;
      let x_348 : vec4<f32> = x_331.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_345.x, x_345.y, x_345.x, x_345.y) + x_348);
      let x_351 : vec4<f32> = u_xlat4;
      let x_352 : vec2<f32> = vec2<f32>(x_351.x, x_351.y);
      let x_354 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_352.x, x_352.y, x_354);
      let x_367 : vec3<f32> = txVec0;
      let x_369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_367.xy, x_367.z);
      u_xlat5.x = x_369;
      let x_372 : vec4<f32> = u_xlat4;
      let x_373 : vec2<f32> = vec2<f32>(x_372.z, x_372.w);
      let x_375 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_373.x, x_373.y, x_375);
      let x_382 : vec3<f32> = txVec1;
      let x_384 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_382.xy, x_382.z);
      u_xlat5.y = x_384;
      let x_386 : vec4<f32> = vs_TEXCOORD6;
      let x_389 : vec4<f32> = x_331.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_386.x, x_386.y, x_386.x, x_386.y) + x_389);
      let x_392 : vec4<f32> = u_xlat4;
      let x_393 : vec2<f32> = vec2<f32>(x_392.x, x_392.y);
      let x_395 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_393.x, x_393.y, x_395);
      let x_402 : vec3<f32> = txVec2;
      let x_404 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_402.xy, x_402.z);
      u_xlat5.z = x_404;
      let x_407 : vec4<f32> = u_xlat4;
      let x_408 : vec2<f32> = vec2<f32>(x_407.z, x_407.w);
      let x_410 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_408.x, x_408.y, x_410);
      let x_417 : vec3<f32> = txVec3;
      let x_419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_417.xy, x_417.z);
      u_xlat5.w = x_419;
      let x_421 : vec4<f32> = u_xlat5;
      u_xlat4.x = dot(x_421, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_429 : f32 = x_331.x_MainLightShadowParams.y;
      u_xlatb23 = (x_429 == 2.0f);
      let x_432 : bool = u_xlatb23;
      if (x_432) {
        let x_436 : vec4<f32> = vs_TEXCOORD6;
        let x_439 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_443 : vec2<f32> = ((vec2<f32>(x_436.x, x_436.y) * vec2<f32>(x_439.z, x_439.w)) + vec2<f32>(0.5f, 0.5f));
        let x_444 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_443.x, x_443.y, x_444.z);
        let x_446 : vec3<f32> = u_xlat23;
        let x_448 : vec2<f32> = floor(vec2<f32>(x_446.x, x_446.y));
        let x_449 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_448.x, x_448.y, x_449.z);
        let x_451 : vec4<f32> = vs_TEXCOORD6;
        let x_454 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_457 : vec3<f32> = u_xlat23;
        let x_460 : vec2<f32> = ((vec2<f32>(x_451.x, x_451.y) * vec2<f32>(x_454.z, x_454.w)) + -(vec2<f32>(x_457.x, x_457.y)));
        let x_461 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_460.x, x_460.y, x_461.z, x_461.w);
        let x_464 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_464.x, x_464.x, x_464.y, x_464.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_469 : vec4<f32> = u_xlat6;
        let x_471 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_469.x, x_469.x, x_469.z, x_469.z) * vec4<f32>(x_471.x, x_471.x, x_471.z, x_471.z));
        let x_476 : vec4<f32> = u_xlat7;
        u_xlat43 = (vec2<f32>(x_476.y, x_476.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_481 : vec4<f32> = u_xlat7;
        let x_484 : vec4<f32> = u_xlat5;
        let x_487 : vec2<f32> = ((vec2<f32>(x_481.x, x_481.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_484.x, x_484.y)));
        let x_488 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_487.x, x_488.y, x_487.y, x_488.w);
        let x_490 : vec4<f32> = u_xlat5;
        let x_493 : vec2<f32> = (-(vec2<f32>(x_490.x, x_490.y)) + vec2<f32>(1.0f, 1.0f));
        let x_494 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_493.x, x_493.y, x_494.z, x_494.w);
        let x_497 : vec4<f32> = u_xlat5;
        u_xlat45 = min(vec2<f32>(x_497.x, x_497.y), vec2<f32>(0.0f, 0.0f));
        let x_501 : vec2<f32> = u_xlat45;
        let x_503 : vec2<f32> = u_xlat45;
        let x_505 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_501) * x_503) + vec2<f32>(x_505.x, x_505.y));
        let x_508 : vec4<f32> = u_xlat5;
        let x_510 : vec2<f32> = max(vec2<f32>(x_508.x, x_508.y), vec2<f32>(0.0f, 0.0f));
        let x_511 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_510.x, x_510.y, x_511.z, x_511.w);
        let x_513 : vec4<f32> = u_xlat5;
        let x_516 : vec4<f32> = u_xlat5;
        let x_519 : vec4<f32> = u_xlat6;
        let x_521 : vec2<f32> = ((-(vec2<f32>(x_513.x, x_513.y)) * vec2<f32>(x_516.x, x_516.y)) + vec2<f32>(x_519.y, x_519.w));
        let x_522 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
        let x_524 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_524 + vec2<f32>(1.0f, 1.0f));
        let x_526 : vec4<f32> = u_xlat5;
        let x_528 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) + vec2<f32>(1.0f, 1.0f));
        let x_529 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_528.x, x_528.y, x_529.z, x_529.w);
        let x_532 : vec4<f32> = u_xlat6;
        let x_536 : vec2<f32> = (vec2<f32>(x_532.x, x_532.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_537 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_536.x, x_536.y, x_537.z, x_537.w);
        let x_540 : vec4<f32> = u_xlat7;
        let x_542 : vec2<f32> = (vec2<f32>(x_540.x, x_540.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_543 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
        let x_545 : vec2<f32> = u_xlat45;
        let x_546 : vec2<f32> = (x_545 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_547 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_546.x, x_546.y, x_547.z, x_547.w);
        let x_550 : vec4<f32> = u_xlat5;
        let x_552 : vec2<f32> = (vec2<f32>(x_550.x, x_550.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_553 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_552.x, x_552.y, x_553.z, x_553.w);
        let x_555 : vec4<f32> = u_xlat6;
        let x_557 : vec2<f32> = (vec2<f32>(x_555.y, x_555.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_558 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
        let x_561 : f32 = u_xlat7.x;
        u_xlat8.z = x_561;
        let x_564 : f32 = u_xlat5.x;
        u_xlat8.w = x_564;
        let x_567 : f32 = u_xlat10.x;
        u_xlat9.z = x_567;
        let x_570 : f32 = u_xlat43.x;
        u_xlat9.w = x_570;
        let x_572 : vec4<f32> = u_xlat8;
        let x_574 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_572.z, x_572.w, x_572.x, x_572.z) + vec4<f32>(x_574.z, x_574.w, x_574.x, x_574.z));
        let x_578 : f32 = u_xlat8.y;
        u_xlat7.z = x_578;
        let x_581 : f32 = u_xlat5.y;
        u_xlat7.w = x_581;
        let x_584 : f32 = u_xlat9.y;
        u_xlat10.z = x_584;
        let x_587 : f32 = u_xlat43.y;
        u_xlat10.w = x_587;
        let x_589 : vec4<f32> = u_xlat7;
        let x_591 : vec4<f32> = u_xlat10;
        let x_593 : vec3<f32> = (vec3<f32>(x_589.z, x_589.y, x_589.w) + vec3<f32>(x_591.z, x_591.y, x_591.w));
        let x_594 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
        let x_596 : vec4<f32> = u_xlat9;
        let x_598 : vec4<f32> = u_xlat6;
        let x_600 : vec3<f32> = (vec3<f32>(x_596.x, x_596.z, x_596.w) / vec3<f32>(x_598.z, x_598.w, x_598.y));
        let x_601 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
        let x_603 : vec4<f32> = u_xlat7;
        let x_608 : vec3<f32> = (vec3<f32>(x_603.x, x_603.y, x_603.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_609 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
        let x_611 : vec4<f32> = u_xlat10;
        let x_613 : vec4<f32> = u_xlat5;
        let x_615 : vec3<f32> = (vec3<f32>(x_611.z, x_611.y, x_611.w) / vec3<f32>(x_613.x, x_613.y, x_613.z));
        let x_616 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
        let x_618 : vec4<f32> = u_xlat8;
        let x_620 : vec3<f32> = (vec3<f32>(x_618.x, x_618.y, x_618.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_621 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
        let x_623 : vec4<f32> = u_xlat7;
        let x_626 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_628 : vec3<f32> = (vec3<f32>(x_623.y, x_623.x, x_623.z) * vec3<f32>(x_626.x, x_626.x, x_626.x));
        let x_629 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
        let x_631 : vec4<f32> = u_xlat8;
        let x_634 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_636 : vec3<f32> = (vec3<f32>(x_631.x, x_631.y, x_631.z) * vec3<f32>(x_634.y, x_634.y, x_634.y));
        let x_637 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
        let x_640 : f32 = u_xlat8.x;
        u_xlat7.w = x_640;
        let x_642 : vec3<f32> = u_xlat23;
        let x_645 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_648 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_642.x, x_642.y, x_642.x, x_642.y) * vec4<f32>(x_645.x, x_645.y, x_645.x, x_645.y)) + vec4<f32>(x_648.y, x_648.w, x_648.x, x_648.w));
        let x_651 : vec3<f32> = u_xlat23;
        let x_654 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_657 : vec4<f32> = u_xlat7;
        let x_659 : vec2<f32> = ((vec2<f32>(x_651.x, x_651.y) * vec2<f32>(x_654.x, x_654.y)) + vec2<f32>(x_657.z, x_657.w));
        let x_660 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
        let x_663 : f32 = u_xlat7.y;
        u_xlat8.w = x_663;
        let x_665 : vec4<f32> = u_xlat8;
        let x_666 : vec2<f32> = vec2<f32>(x_665.y, x_665.z);
        let x_667 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_667.x, x_666.x, x_667.z, x_666.y);
        let x_670 : vec3<f32> = u_xlat23;
        let x_673 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_676 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_670.x, x_670.y, x_670.x, x_670.y) * vec4<f32>(x_673.x, x_673.y, x_673.x, x_673.y)) + vec4<f32>(x_676.x, x_676.y, x_676.z, x_676.y));
        let x_679 : vec3<f32> = u_xlat23;
        let x_682 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_685 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_679.x, x_679.y, x_679.x, x_679.y) * vec4<f32>(x_682.x, x_682.y, x_682.x, x_682.y)) + vec4<f32>(x_685.w, x_685.y, x_685.w, x_685.z));
        let x_688 : vec3<f32> = u_xlat23;
        let x_691 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_694 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_688.x, x_688.y, x_688.x, x_688.y) * vec4<f32>(x_691.x, x_691.y, x_691.x, x_691.y)) + vec4<f32>(x_694.x, x_694.w, x_694.z, x_694.w));
        let x_698 : vec4<f32> = u_xlat5;
        let x_700 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_698.x, x_698.x, x_698.x, x_698.y) * vec4<f32>(x_700.z, x_700.w, x_700.y, x_700.z));
        let x_704 : vec4<f32> = u_xlat5;
        let x_706 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_704.y, x_704.y, x_704.z, x_704.z) * x_706);
        let x_709 : f32 = u_xlat5.z;
        let x_711 : f32 = u_xlat6.y;
        u_xlat23.x = (x_709 * x_711);
        let x_715 : vec4<f32> = u_xlat9;
        let x_716 : vec2<f32> = vec2<f32>(x_715.x, x_715.y);
        let x_718 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_716.x, x_716.y, x_718);
        let x_726 : vec3<f32> = txVec4;
        let x_728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_726.xy, x_726.z);
        u_xlat42 = x_728;
        let x_730 : vec4<f32> = u_xlat9;
        let x_731 : vec2<f32> = vec2<f32>(x_730.z, x_730.w);
        let x_733 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_731.x, x_731.y, x_733);
        let x_741 : vec3<f32> = txVec5;
        let x_743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_741.xy, x_741.z);
        u_xlat61 = x_743;
        let x_744 : f32 = u_xlat61;
        let x_746 : f32 = u_xlat12.y;
        u_xlat61 = (x_744 * x_746);
        let x_749 : f32 = u_xlat12.x;
        let x_750 : f32 = u_xlat42;
        let x_752 : f32 = u_xlat61;
        u_xlat42 = ((x_749 * x_750) + x_752);
        let x_755 : vec4<f32> = u_xlat10;
        let x_756 : vec2<f32> = vec2<f32>(x_755.x, x_755.y);
        let x_758 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_756.x, x_756.y, x_758);
        let x_765 : vec3<f32> = txVec6;
        let x_767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_765.xy, x_765.z);
        u_xlat61 = x_767;
        let x_769 : f32 = u_xlat12.z;
        let x_770 : f32 = u_xlat61;
        let x_772 : f32 = u_xlat42;
        u_xlat42 = ((x_769 * x_770) + x_772);
        let x_775 : vec4<f32> = u_xlat8;
        let x_776 : vec2<f32> = vec2<f32>(x_775.x, x_775.y);
        let x_778 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_776.x, x_776.y, x_778);
        let x_785 : vec3<f32> = txVec7;
        let x_787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_785.xy, x_785.z);
        u_xlat61 = x_787;
        let x_789 : f32 = u_xlat12.w;
        let x_790 : f32 = u_xlat61;
        let x_792 : f32 = u_xlat42;
        u_xlat42 = ((x_789 * x_790) + x_792);
        let x_795 : vec4<f32> = u_xlat11;
        let x_796 : vec2<f32> = vec2<f32>(x_795.x, x_795.y);
        let x_798 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_805 : vec3<f32> = txVec8;
        let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_805.xy, x_805.z);
        u_xlat61 = x_807;
        let x_809 : f32 = u_xlat13.x;
        let x_810 : f32 = u_xlat61;
        let x_812 : f32 = u_xlat42;
        u_xlat42 = ((x_809 * x_810) + x_812);
        let x_815 : vec4<f32> = u_xlat11;
        let x_816 : vec2<f32> = vec2<f32>(x_815.z, x_815.w);
        let x_818 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_816.x, x_816.y, x_818);
        let x_825 : vec3<f32> = txVec9;
        let x_827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_825.xy, x_825.z);
        u_xlat61 = x_827;
        let x_829 : f32 = u_xlat13.y;
        let x_830 : f32 = u_xlat61;
        let x_832 : f32 = u_xlat42;
        u_xlat42 = ((x_829 * x_830) + x_832);
        let x_835 : vec4<f32> = u_xlat8;
        let x_836 : vec2<f32> = vec2<f32>(x_835.z, x_835.w);
        let x_838 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_836.x, x_836.y, x_838);
        let x_845 : vec3<f32> = txVec10;
        let x_847 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_845.xy, x_845.z);
        u_xlat61 = x_847;
        let x_849 : f32 = u_xlat13.z;
        let x_850 : f32 = u_xlat61;
        let x_852 : f32 = u_xlat42;
        u_xlat42 = ((x_849 * x_850) + x_852);
        let x_855 : vec4<f32> = u_xlat7;
        let x_856 : vec2<f32> = vec2<f32>(x_855.x, x_855.y);
        let x_858 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_856.x, x_856.y, x_858);
        let x_865 : vec3<f32> = txVec11;
        let x_867 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_865.xy, x_865.z);
        u_xlat61 = x_867;
        let x_869 : f32 = u_xlat13.w;
        let x_870 : f32 = u_xlat61;
        let x_872 : f32 = u_xlat42;
        u_xlat42 = ((x_869 * x_870) + x_872);
        let x_875 : vec4<f32> = u_xlat7;
        let x_876 : vec2<f32> = vec2<f32>(x_875.z, x_875.w);
        let x_878 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_876.x, x_876.y, x_878);
        let x_885 : vec3<f32> = txVec12;
        let x_887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_885.xy, x_885.z);
        u_xlat61 = x_887;
        let x_889 : f32 = u_xlat23.x;
        let x_890 : f32 = u_xlat61;
        let x_892 : f32 = u_xlat42;
        u_xlat4.x = ((x_889 * x_890) + x_892);
      } else {
        let x_896 : vec4<f32> = vs_TEXCOORD6;
        let x_899 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_902 : vec2<f32> = ((vec2<f32>(x_896.x, x_896.y) * vec2<f32>(x_899.z, x_899.w)) + vec2<f32>(0.5f, 0.5f));
        let x_903 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_902.x, x_902.y, x_903.z);
        let x_905 : vec3<f32> = u_xlat23;
        let x_907 : vec2<f32> = floor(vec2<f32>(x_905.x, x_905.y));
        let x_908 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_907.x, x_907.y, x_908.z);
        let x_910 : vec4<f32> = vs_TEXCOORD6;
        let x_913 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_916 : vec3<f32> = u_xlat23;
        let x_919 : vec2<f32> = ((vec2<f32>(x_910.x, x_910.y) * vec2<f32>(x_913.z, x_913.w)) + -(vec2<f32>(x_916.x, x_916.y)));
        let x_920 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_919.x, x_919.y, x_920.z, x_920.w);
        let x_922 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_922.x, x_922.x, x_922.y, x_922.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_925 : vec4<f32> = u_xlat6;
        let x_927 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_925.x, x_925.x, x_925.z, x_925.z) * vec4<f32>(x_927.x, x_927.x, x_927.z, x_927.z));
        let x_930 : vec4<f32> = u_xlat7;
        let x_934 : vec2<f32> = (vec2<f32>(x_930.y, x_930.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_935 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_935.x, x_934.x, x_935.z, x_934.y);
        let x_937 : vec4<f32> = u_xlat7;
        let x_940 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_937.x, x_937.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_940.x, x_940.y)));
        let x_944 : vec4<f32> = u_xlat5;
        let x_947 : vec2<f32> = (-(vec2<f32>(x_944.x, x_944.y)) + vec2<f32>(1.0f, 1.0f));
        let x_948 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_947.x, x_948.y, x_947.y, x_948.w);
        let x_950 : vec4<f32> = u_xlat5;
        let x_952 : vec2<f32> = min(vec2<f32>(x_950.x, x_950.y), vec2<f32>(0.0f, 0.0f));
        let x_953 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
        let x_955 : vec4<f32> = u_xlat7;
        let x_958 : vec4<f32> = u_xlat7;
        let x_961 : vec4<f32> = u_xlat6;
        let x_963 : vec2<f32> = ((-(vec2<f32>(x_955.x, x_955.y)) * vec2<f32>(x_958.x, x_958.y)) + vec2<f32>(x_961.x, x_961.z));
        let x_964 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_963.x, x_964.y, x_963.y, x_964.w);
        let x_966 : vec4<f32> = u_xlat5;
        let x_968 : vec2<f32> = max(vec2<f32>(x_966.x, x_966.y), vec2<f32>(0.0f, 0.0f));
        let x_969 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_968.x, x_968.y, x_969.z, x_969.w);
        let x_971 : vec4<f32> = u_xlat7;
        let x_974 : vec4<f32> = u_xlat7;
        let x_977 : vec4<f32> = u_xlat6;
        let x_979 : vec2<f32> = ((-(vec2<f32>(x_971.x, x_971.y)) * vec2<f32>(x_974.x, x_974.y)) + vec2<f32>(x_977.y, x_977.w));
        let x_980 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_980.x, x_979.x, x_980.z, x_979.y);
        let x_982 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_982 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_986 : f32 = u_xlat6.y;
        u_xlat7.z = (x_986 * 0.081632003f);
        let x_990 : vec2<f32> = u_xlat43;
        let x_993 : vec2<f32> = (vec2<f32>(x_990.y, x_990.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_994 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_993.x, x_993.y, x_994.z, x_994.w);
        let x_996 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_996.x, x_996.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1000 : f32 = u_xlat6.w;
        u_xlat9.z = (x_1000 * 0.081632003f);
        let x_1004 : f32 = u_xlat9.y;
        u_xlat7.x = x_1004;
        let x_1006 : vec4<f32> = u_xlat5;
        let x_1013 : vec2<f32> = ((vec2<f32>(x_1006.x, x_1006.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1014 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1014.x, x_1013.x, x_1014.z, x_1013.y);
        let x_1016 : vec4<f32> = u_xlat5;
        let x_1020 : vec2<f32> = ((vec2<f32>(x_1016.x, x_1016.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1021 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1020.x, x_1021.y, x_1020.y, x_1021.w);
        let x_1024 : f32 = u_xlat43.x;
        u_xlat6.y = x_1024;
        let x_1027 : f32 = u_xlat8.y;
        u_xlat6.w = x_1027;
        let x_1029 : vec4<f32> = u_xlat6;
        let x_1030 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1029 + x_1030);
        let x_1032 : vec4<f32> = u_xlat5;
        let x_1035 : vec2<f32> = ((vec2<f32>(x_1032.y, x_1032.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1036 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1036.x, x_1035.x, x_1036.z, x_1035.y);
        let x_1038 : vec4<f32> = u_xlat5;
        let x_1041 : vec2<f32> = ((vec2<f32>(x_1038.y, x_1038.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1042 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1041.x, x_1042.y, x_1041.y, x_1042.w);
        let x_1045 : f32 = u_xlat43.y;
        u_xlat8.y = x_1045;
        let x_1047 : vec4<f32> = u_xlat8;
        let x_1048 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1047 + x_1048);
        let x_1050 : vec4<f32> = u_xlat6;
        let x_1051 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_1050 / x_1051);
        let x_1053 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1053 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1059 : vec4<f32> = u_xlat8;
        let x_1060 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_1059 / x_1060);
        let x_1062 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1062 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1064 : vec4<f32> = u_xlat6;
        let x_1067 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1064.w, x_1064.x, x_1064.y, x_1064.z) * vec4<f32>(x_1067.x, x_1067.x, x_1067.x, x_1067.x));
        let x_1070 : vec4<f32> = u_xlat8;
        let x_1073 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1070.x, x_1070.w, x_1070.y, x_1070.z) * vec4<f32>(x_1073.y, x_1073.y, x_1073.y, x_1073.y));
        let x_1076 : vec4<f32> = u_xlat6;
        let x_1077 : vec3<f32> = vec3<f32>(x_1076.y, x_1076.z, x_1076.w);
        let x_1078 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1077.x, x_1078.y, x_1077.y, x_1077.z);
        let x_1081 : f32 = u_xlat8.x;
        u_xlat9.y = x_1081;
        let x_1083 : vec3<f32> = u_xlat23;
        let x_1086 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1089 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1083.x, x_1083.y, x_1083.x, x_1083.y) * vec4<f32>(x_1086.x, x_1086.y, x_1086.x, x_1086.y)) + vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1089.y));
        let x_1092 : vec3<f32> = u_xlat23;
        let x_1095 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1098 : vec4<f32> = u_xlat9;
        let x_1100 : vec2<f32> = ((vec2<f32>(x_1092.x, x_1092.y) * vec2<f32>(x_1095.x, x_1095.y)) + vec2<f32>(x_1098.w, x_1098.y));
        let x_1101 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1100.x, x_1100.y, x_1101.z, x_1101.w);
        let x_1104 : f32 = u_xlat9.y;
        u_xlat6.y = x_1104;
        let x_1107 : f32 = u_xlat8.z;
        u_xlat9.y = x_1107;
        let x_1109 : vec3<f32> = u_xlat23;
        let x_1112 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1115 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1109.x, x_1109.y, x_1109.x, x_1109.y) * vec4<f32>(x_1112.x, x_1112.y, x_1112.x, x_1112.y)) + vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1115.y));
        let x_1119 : vec3<f32> = u_xlat23;
        let x_1122 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1125 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1119.x, x_1119.y) * vec2<f32>(x_1122.x, x_1122.y)) + vec2<f32>(x_1125.w, x_1125.y));
        let x_1129 : f32 = u_xlat9.y;
        u_xlat6.z = x_1129;
        let x_1131 : vec3<f32> = u_xlat23;
        let x_1134 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1137 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.y) * vec4<f32>(x_1134.x, x_1134.y, x_1134.x, x_1134.y)) + vec4<f32>(x_1137.x, x_1137.y, x_1137.x, x_1137.z));
        let x_1141 : f32 = u_xlat8.w;
        u_xlat9.y = x_1141;
        let x_1144 : vec3<f32> = u_xlat23;
        let x_1147 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1150 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1144.x, x_1144.y, x_1144.x, x_1144.y) * vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.y)) + vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1150.y));
        let x_1154 : vec3<f32> = u_xlat23;
        let x_1157 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1160 : vec4<f32> = u_xlat9;
        let x_1162 : vec2<f32> = ((vec2<f32>(x_1154.x, x_1154.y) * vec2<f32>(x_1157.x, x_1157.y)) + vec2<f32>(x_1160.w, x_1160.y));
        let x_1163 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1162.x, x_1162.y, x_1163.z);
        let x_1166 : f32 = u_xlat9.y;
        u_xlat6.w = x_1166;
        let x_1169 : vec3<f32> = u_xlat23;
        let x_1172 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1175 : vec4<f32> = u_xlat6;
        u_xlat15 = ((vec2<f32>(x_1169.x, x_1169.y) * vec2<f32>(x_1172.x, x_1172.y)) + vec2<f32>(x_1175.x, x_1175.w));
        let x_1178 : vec4<f32> = u_xlat9;
        let x_1179 : vec3<f32> = vec3<f32>(x_1178.x, x_1178.z, x_1178.w);
        let x_1180 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1179.x, x_1180.y, x_1179.y, x_1179.z);
        let x_1182 : vec3<f32> = u_xlat23;
        let x_1185 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1188 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1182.x, x_1182.y, x_1182.x, x_1182.y) * vec4<f32>(x_1185.x, x_1185.y, x_1185.x, x_1185.y)) + vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1188.y));
        let x_1192 : vec3<f32> = u_xlat23;
        let x_1195 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1198 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1192.x, x_1192.y) * vec2<f32>(x_1195.x, x_1195.y)) + vec2<f32>(x_1198.w, x_1198.y));
        let x_1202 : f32 = u_xlat6.x;
        u_xlat8.x = x_1202;
        let x_1204 : vec3<f32> = u_xlat23;
        let x_1207 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat8;
        let x_1212 : vec2<f32> = ((vec2<f32>(x_1204.x, x_1204.y) * vec2<f32>(x_1207.x, x_1207.y)) + vec2<f32>(x_1210.x, x_1210.y));
        let x_1213 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1212.x, x_1212.y, x_1213.z);
        let x_1216 : vec4<f32> = u_xlat5;
        let x_1218 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1216.x, x_1216.x, x_1216.x, x_1216.x) * x_1218);
        let x_1221 : vec4<f32> = u_xlat5;
        let x_1223 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1221.y, x_1221.y, x_1221.y, x_1221.y) * x_1223);
        let x_1226 : vec4<f32> = u_xlat5;
        let x_1228 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1226.z, x_1226.z, x_1226.z, x_1226.z) * x_1228);
        let x_1230 : vec4<f32> = u_xlat5;
        let x_1232 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1230.w, x_1230.w, x_1230.w, x_1230.w) * x_1232);
        let x_1235 : vec4<f32> = u_xlat10;
        let x_1236 : vec2<f32> = vec2<f32>(x_1235.x, x_1235.y);
        let x_1238 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1236.x, x_1236.y, x_1238);
        let x_1245 : vec3<f32> = txVec13;
        let x_1247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1245.xy, x_1245.z);
        u_xlat61 = x_1247;
        let x_1249 : vec4<f32> = u_xlat10;
        let x_1250 : vec2<f32> = vec2<f32>(x_1249.z, x_1249.w);
        let x_1252 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1250.x, x_1250.y, x_1252);
        let x_1259 : vec3<f32> = txVec14;
        let x_1261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1259.xy, x_1259.z);
        u_xlat6.x = x_1261;
        let x_1264 : f32 = u_xlat6.x;
        let x_1266 : f32 = u_xlat16.y;
        u_xlat6.x = (x_1264 * x_1266);
        let x_1270 : f32 = u_xlat16.x;
        let x_1271 : f32 = u_xlat61;
        let x_1274 : f32 = u_xlat6.x;
        u_xlat61 = ((x_1270 * x_1271) + x_1274);
        let x_1277 : vec4<f32> = u_xlat11;
        let x_1278 : vec2<f32> = vec2<f32>(x_1277.x, x_1277.y);
        let x_1280 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1278.x, x_1278.y, x_1280);
        let x_1287 : vec3<f32> = txVec15;
        let x_1289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1287.xy, x_1287.z);
        u_xlat6.x = x_1289;
        let x_1292 : f32 = u_xlat16.z;
        let x_1294 : f32 = u_xlat6.x;
        let x_1296 : f32 = u_xlat61;
        u_xlat61 = ((x_1292 * x_1294) + x_1296);
        let x_1299 : vec4<f32> = u_xlat13;
        let x_1300 : vec2<f32> = vec2<f32>(x_1299.x, x_1299.y);
        let x_1302 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1300.x, x_1300.y, x_1302);
        let x_1309 : vec3<f32> = txVec16;
        let x_1311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1309.xy, x_1309.z);
        u_xlat6.x = x_1311;
        let x_1314 : f32 = u_xlat16.w;
        let x_1316 : f32 = u_xlat6.x;
        let x_1318 : f32 = u_xlat61;
        u_xlat61 = ((x_1314 * x_1316) + x_1318);
        let x_1321 : vec4<f32> = u_xlat12;
        let x_1322 : vec2<f32> = vec2<f32>(x_1321.x, x_1321.y);
        let x_1324 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1322.x, x_1322.y, x_1324);
        let x_1331 : vec3<f32> = txVec17;
        let x_1333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1331.xy, x_1331.z);
        u_xlat6.x = x_1333;
        let x_1336 : f32 = u_xlat17.x;
        let x_1338 : f32 = u_xlat6.x;
        let x_1340 : f32 = u_xlat61;
        u_xlat61 = ((x_1336 * x_1338) + x_1340);
        let x_1343 : vec4<f32> = u_xlat12;
        let x_1344 : vec2<f32> = vec2<f32>(x_1343.z, x_1343.w);
        let x_1346 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1344.x, x_1344.y, x_1346);
        let x_1353 : vec3<f32> = txVec18;
        let x_1355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1353.xy, x_1353.z);
        u_xlat6.x = x_1355;
        let x_1358 : f32 = u_xlat17.y;
        let x_1360 : f32 = u_xlat6.x;
        let x_1362 : f32 = u_xlat61;
        u_xlat61 = ((x_1358 * x_1360) + x_1362);
        let x_1365 : vec2<f32> = u_xlat49;
        let x_1367 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1365.x, x_1365.y, x_1367);
        let x_1374 : vec3<f32> = txVec19;
        let x_1376 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1374.xy, x_1374.z);
        u_xlat6.x = x_1376;
        let x_1379 : f32 = u_xlat17.z;
        let x_1381 : f32 = u_xlat6.x;
        let x_1383 : f32 = u_xlat61;
        u_xlat61 = ((x_1379 * x_1381) + x_1383);
        let x_1386 : vec4<f32> = u_xlat13;
        let x_1387 : vec2<f32> = vec2<f32>(x_1386.z, x_1386.w);
        let x_1389 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1387.x, x_1387.y, x_1389);
        let x_1396 : vec3<f32> = txVec20;
        let x_1398 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1396.xy, x_1396.z);
        u_xlat6.x = x_1398;
        let x_1401 : f32 = u_xlat17.w;
        let x_1403 : f32 = u_xlat6.x;
        let x_1405 : f32 = u_xlat61;
        u_xlat61 = ((x_1401 * x_1403) + x_1405);
        let x_1408 : vec4<f32> = u_xlat14;
        let x_1409 : vec2<f32> = vec2<f32>(x_1408.x, x_1408.y);
        let x_1411 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1409.x, x_1409.y, x_1411);
        let x_1418 : vec3<f32> = txVec21;
        let x_1420 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1418.xy, x_1418.z);
        u_xlat6.x = x_1420;
        let x_1423 : f32 = u_xlat18.x;
        let x_1425 : f32 = u_xlat6.x;
        let x_1427 : f32 = u_xlat61;
        u_xlat61 = ((x_1423 * x_1425) + x_1427);
        let x_1430 : vec4<f32> = u_xlat14;
        let x_1431 : vec2<f32> = vec2<f32>(x_1430.z, x_1430.w);
        let x_1433 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1431.x, x_1431.y, x_1433);
        let x_1440 : vec3<f32> = txVec22;
        let x_1442 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1440.xy, x_1440.z);
        u_xlat6.x = x_1442;
        let x_1445 : f32 = u_xlat18.y;
        let x_1447 : f32 = u_xlat6.x;
        let x_1449 : f32 = u_xlat61;
        u_xlat61 = ((x_1445 * x_1447) + x_1449);
        let x_1452 : vec3<f32> = u_xlat25;
        let x_1453 : vec2<f32> = vec2<f32>(x_1452.x, x_1452.y);
        let x_1455 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1453.x, x_1453.y, x_1455);
        let x_1462 : vec3<f32> = txVec23;
        let x_1464 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1462.xy, x_1462.z);
        u_xlat6.x = x_1464;
        let x_1467 : f32 = u_xlat18.z;
        let x_1469 : f32 = u_xlat6.x;
        let x_1471 : f32 = u_xlat61;
        u_xlat61 = ((x_1467 * x_1469) + x_1471);
        let x_1474 : vec2<f32> = u_xlat15;
        let x_1476 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1474.x, x_1474.y, x_1476);
        let x_1483 : vec3<f32> = txVec24;
        let x_1485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1483.xy, x_1483.z);
        u_xlat6.x = x_1485;
        let x_1488 : f32 = u_xlat18.w;
        let x_1490 : f32 = u_xlat6.x;
        let x_1492 : f32 = u_xlat61;
        u_xlat61 = ((x_1488 * x_1490) + x_1492);
        let x_1495 : vec4<f32> = u_xlat9;
        let x_1496 : vec2<f32> = vec2<f32>(x_1495.x, x_1495.y);
        let x_1498 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1496.x, x_1496.y, x_1498);
        let x_1505 : vec3<f32> = txVec25;
        let x_1507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1505.xy, x_1505.z);
        u_xlat6.x = x_1507;
        let x_1510 : f32 = u_xlat5.x;
        let x_1512 : f32 = u_xlat6.x;
        let x_1514 : f32 = u_xlat61;
        u_xlat61 = ((x_1510 * x_1512) + x_1514);
        let x_1517 : vec4<f32> = u_xlat9;
        let x_1518 : vec2<f32> = vec2<f32>(x_1517.z, x_1517.w);
        let x_1520 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1518.x, x_1518.y, x_1520);
        let x_1527 : vec3<f32> = txVec26;
        let x_1529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1527.xy, x_1527.z);
        u_xlat5.x = x_1529;
        let x_1532 : f32 = u_xlat5.y;
        let x_1534 : f32 = u_xlat5.x;
        let x_1536 : f32 = u_xlat61;
        u_xlat61 = ((x_1532 * x_1534) + x_1536);
        let x_1539 : vec2<f32> = u_xlat46;
        let x_1541 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1539.x, x_1539.y, x_1541);
        let x_1548 : vec3<f32> = txVec27;
        let x_1550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1548.xy, x_1548.z);
        u_xlat5.x = x_1550;
        let x_1553 : f32 = u_xlat5.z;
        let x_1555 : f32 = u_xlat5.x;
        let x_1557 : f32 = u_xlat61;
        u_xlat61 = ((x_1553 * x_1555) + x_1557);
        let x_1560 : vec3<f32> = u_xlat23;
        let x_1561 : vec2<f32> = vec2<f32>(x_1560.x, x_1560.y);
        let x_1563 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1561.x, x_1561.y, x_1563);
        let x_1570 : vec3<f32> = txVec28;
        let x_1572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1570.xy, x_1570.z);
        u_xlat23.x = x_1572;
        let x_1575 : f32 = u_xlat5.w;
        let x_1577 : f32 = u_xlat23.x;
        let x_1579 : f32 = u_xlat61;
        u_xlat4.x = ((x_1575 * x_1577) + x_1579);
      }
    }
  } else {
    let x_1584 : vec4<f32> = vs_TEXCOORD6;
    let x_1585 : vec2<f32> = vec2<f32>(x_1584.x, x_1584.y);
    let x_1587 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
    let x_1594 : vec3<f32> = txVec29;
    let x_1596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1594.xy, x_1594.z);
    u_xlat4.x = x_1596;
  }
  let x_1599 : f32 = x_331.x_MainLightShadowParams.x;
  u_xlat23.x = (-(x_1599) + 1.0f);
  let x_1604 : f32 = u_xlat4.x;
  let x_1606 : f32 = x_331.x_MainLightShadowParams.x;
  let x_1609 : f32 = u_xlat23.x;
  u_xlat4.x = ((x_1604 * x_1606) + x_1609);
  let x_1613 : f32 = vs_TEXCOORD6.z;
  u_xlatb23 = (0.0f >= x_1613);
  let x_1617 : f32 = vs_TEXCOORD6.z;
  u_xlatb42 = (x_1617 >= 1.0f);
  let x_1619 : bool = u_xlatb42;
  let x_1620 : bool = u_xlatb23;
  u_xlatb23 = (x_1619 | x_1620);
  let x_1622 : bool = u_xlatb23;
  if (x_1622) {
    x_1623 = 1.0f;
  } else {
    let x_1628 : f32 = u_xlat4.x;
    x_1623 = x_1628;
  }
  let x_1629 : f32 = x_1623;
  u_xlat4.x = x_1629;
  let x_1631 : vec3<f32> = vs_TEXCOORD1;
  let x_1633 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat23 = (x_1631 + -(x_1633));
  let x_1636 : vec3<f32> = u_xlat23;
  let x_1637 : vec3<f32> = u_xlat23;
  u_xlat23.x = dot(x_1636, x_1637);
  let x_1641 : f32 = u_xlat23.x;
  let x_1643 : f32 = x_331.x_MainLightShadowParams.z;
  let x_1646 : f32 = x_331.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_1641 * x_1643) + x_1646);
  let x_1650 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1650, 0.0f, 1.0f);
  let x_1654 : f32 = u_xlat4.x;
  u_xlat42 = (-(x_1654) + 1.0f);
  let x_1658 : f32 = u_xlat23.x;
  let x_1659 : f32 = u_xlat42;
  let x_1662 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1658 * x_1659) + x_1662);
  let x_1665 : f32 = u_xlat60;
  let x_1669 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat23 = (vec3<f32>(x_1665, x_1665, x_1665) * vec3<f32>(x_1669.x, x_1669.y, x_1669.z));
  let x_1672 : f32 = u_xlat59;
  let x_1674 : vec4<f32> = u_xlat3;
  let x_1676 : vec3<f32> = (vec3<f32>(x_1672, x_1672, x_1672) * vec3<f32>(x_1674.x, x_1674.y, x_1674.z));
  let x_1677 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1676.x, x_1676.y, x_1676.z, x_1677.w);
  let x_1680 : f32 = u_xlat4.x;
  let x_1683 : f32 = x_93.unity_LightData.z;
  u_xlat59 = (x_1680 * x_1683);
  let x_1685 : f32 = u_xlat59;
  let x_1687 : vec3<f32> = u_xlat23;
  let x_1688 : vec3<f32> = (vec3<f32>(x_1685, x_1685, x_1685) * x_1687);
  let x_1689 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1688.x, x_1688.y, x_1688.z, x_1689.w);
  let x_1691 : vec3<f32> = u_xlat1;
  let x_1693 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat59 = dot(x_1691, vec3<f32>(x_1693.x, x_1693.y, x_1693.z));
  let x_1696 : f32 = u_xlat59;
  u_xlat59 = clamp(x_1696, 0.0f, 1.0f);
  let x_1698 : f32 = u_xlat59;
  let x_1700 : vec4<f32> = u_xlat4;
  let x_1702 : vec3<f32> = (vec3<f32>(x_1698, x_1698, x_1698) * vec3<f32>(x_1700.x, x_1700.y, x_1700.z));
  let x_1703 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1703.w);
  let x_1706 : f32 = u_xlat0.x;
  u_xlat59 = ((x_1706 * 10.0f) + 1.0f);
  let x_1710 : f32 = u_xlat59;
  u_xlat59 = exp2(x_1710);
  let x_1712 : vec3<f32> = u_xlat2;
  let x_1713 : f32 = u_xlat58;
  let x_1717 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1719 : vec3<f32> = ((x_1712 * vec3<f32>(x_1713, x_1713, x_1713)) + vec3<f32>(x_1717.x, x_1717.y, x_1717.z));
  let x_1720 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1719.x, x_1719.y, x_1719.z, x_1720.w);
  let x_1722 : vec4<f32> = u_xlat6;
  let x_1724 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec3<f32>(x_1722.x, x_1722.y, x_1722.z), vec3<f32>(x_1724.x, x_1724.y, x_1724.z));
  let x_1727 : f32 = u_xlat61;
  u_xlat61 = max(x_1727, 1.17549435e-37f);
  let x_1729 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_1729);
  let x_1731 : f32 = u_xlat61;
  let x_1733 : vec4<f32> = u_xlat6;
  let x_1735 : vec3<f32> = (vec3<f32>(x_1731, x_1731, x_1731) * vec3<f32>(x_1733.x, x_1733.y, x_1733.z));
  let x_1736 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1735.x, x_1735.y, x_1735.z, x_1736.w);
  let x_1738 : vec3<f32> = u_xlat1;
  let x_1739 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(x_1738, vec3<f32>(x_1739.x, x_1739.y, x_1739.z));
  let x_1742 : f32 = u_xlat61;
  u_xlat61 = clamp(x_1742, 0.0f, 1.0f);
  let x_1744 : f32 = u_xlat61;
  u_xlat61 = log2(x_1744);
  let x_1746 : f32 = u_xlat59;
  let x_1747 : f32 = u_xlat61;
  u_xlat61 = (x_1746 * x_1747);
  let x_1749 : f32 = u_xlat61;
  u_xlat61 = exp2(x_1749);
  let x_1751 : f32 = u_xlat61;
  let x_1754 : vec4<f32> = x_56.x_SpecColor;
  let x_1756 : vec3<f32> = (vec3<f32>(x_1751, x_1751, x_1751) * vec3<f32>(x_1754.x, x_1754.y, x_1754.z));
  let x_1757 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1756.x, x_1756.y, x_1756.z, x_1757.w);
  let x_1759 : vec4<f32> = u_xlat4;
  let x_1761 : vec4<f32> = u_xlat6;
  let x_1763 : vec3<f32> = (vec3<f32>(x_1759.x, x_1759.y, x_1759.z) * vec3<f32>(x_1761.x, x_1761.y, x_1761.z));
  let x_1764 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1763.x, x_1763.y, x_1763.z, x_1764.w);
  let x_1766 : vec4<f32> = u_xlat5;
  let x_1768 : vec4<f32> = u_xlat0;
  let x_1771 : vec4<f32> = u_xlat4;
  let x_1773 : vec3<f32> = ((vec3<f32>(x_1766.x, x_1766.y, x_1766.z) * vec3<f32>(x_1768.y, x_1768.z, x_1768.w)) + vec3<f32>(x_1771.x, x_1771.y, x_1771.z));
  let x_1774 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1774.w);
  let x_1777 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1779 : f32 = x_93.unity_LightData.y;
  u_xlat61 = min(x_1777, x_1779);
  let x_1783 : f32 = u_xlat61;
  u_xlatu61 = bitcast<u32>(i32(x_1783));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1795 : u32 = u_xlatu_loop_1;
    let x_1796 : u32 = u_xlatu61;
    if ((x_1795 < x_1796)) {
    } else {
      break;
    }
    let x_1799 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1799 >> 2u);
    let x_1803 : u32 = u_xlatu_loop_1;
    u_xlati25 = bitcast<i32>((x_1803 & 3u));
    let x_1806 : u32 = u_xlatu6;
    let x_1809 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_1806)];
    let x_1819 : i32 = u_xlati25;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1824 : vec4<u32> = indexable[x_1819];
    u_xlat6.x = dot(x_1809, bitcast<vec4<f32>>(x_1824));
    let x_1830 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1830);
    let x_1832 : vec3<f32> = vs_TEXCOORD1;
    let x_1844 : i32 = u_xlati6;
    let x_1846 : vec4<f32> = x_1843.x_AdditionalLightsPosition[x_1844];
    let x_1849 : i32 = u_xlati6;
    let x_1851 : vec4<f32> = x_1843.x_AdditionalLightsPosition[x_1849];
    u_xlat25 = ((-(x_1832) * vec3<f32>(x_1846.w, x_1846.w, x_1846.w)) + vec3<f32>(x_1851.x, x_1851.y, x_1851.z));
    let x_1854 : vec3<f32> = u_xlat25;
    let x_1855 : vec3<f32> = u_xlat25;
    u_xlat7.x = dot(x_1854, x_1855);
    let x_1859 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_1859, 6.10351562e-05f);
    let x_1865 : f32 = u_xlat7.x;
    u_xlat26.x = inverseSqrt(x_1865);
    let x_1868 : vec3<f32> = u_xlat25;
    let x_1869 : vec3<f32> = u_xlat26;
    u_xlat25 = (x_1868 * vec3<f32>(x_1869.x, x_1869.x, x_1869.x));
    let x_1873 : f32 = u_xlat7.x;
    u_xlat26.x = (1.0f / x_1873);
    let x_1877 : f32 = u_xlat7.x;
    let x_1878 : i32 = u_xlati6;
    let x_1880 : f32 = x_1843.x_AdditionalLightsAttenuation[x_1878].x;
    u_xlat7.x = (x_1877 * x_1880);
    let x_1884 : f32 = u_xlat7.x;
    let x_1887 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_1884) * x_1887) + 1.0f);
    let x_1892 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_1892, 0.0f);
    let x_1896 : f32 = u_xlat7.x;
    let x_1898 : f32 = u_xlat7.x;
    u_xlat7.x = (x_1896 * x_1898);
    let x_1902 : f32 = u_xlat7.x;
    let x_1904 : f32 = u_xlat26.x;
    u_xlat7.x = (x_1902 * x_1904);
    let x_1907 : i32 = u_xlati6;
    let x_1909 : vec4<f32> = x_1843.x_AdditionalLightsSpotDir[x_1907];
    let x_1911 : vec3<f32> = u_xlat25;
    u_xlat26.x = dot(vec3<f32>(x_1909.x, x_1909.y, x_1909.z), x_1911);
    let x_1915 : f32 = u_xlat26.x;
    let x_1916 : i32 = u_xlati6;
    let x_1918 : f32 = x_1843.x_AdditionalLightsAttenuation[x_1916].z;
    let x_1920 : i32 = u_xlati6;
    let x_1922 : f32 = x_1843.x_AdditionalLightsAttenuation[x_1920].w;
    u_xlat26.x = ((x_1915 * x_1918) + x_1922);
    let x_1926 : f32 = u_xlat26.x;
    u_xlat26.x = clamp(x_1926, 0.0f, 1.0f);
    let x_1930 : f32 = u_xlat26.x;
    let x_1932 : f32 = u_xlat26.x;
    u_xlat26.x = (x_1930 * x_1932);
    let x_1936 : f32 = u_xlat26.x;
    let x_1938 : f32 = u_xlat7.x;
    u_xlat7.x = (x_1936 * x_1938);
    let x_1941 : f32 = u_xlat60;
    let x_1943 : i32 = u_xlati6;
    let x_1945 : vec4<f32> = x_1843.x_AdditionalLightsColor[x_1943];
    u_xlat26 = (vec3<f32>(x_1941, x_1941, x_1941) * vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
    let x_1948 : vec4<f32> = u_xlat7;
    let x_1950 : vec3<f32> = u_xlat26;
    let x_1951 : vec3<f32> = (vec3<f32>(x_1948.x, x_1948.x, x_1948.x) * x_1950);
    let x_1952 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1951.x, x_1951.y, x_1951.z, x_1952.w);
    let x_1954 : vec3<f32> = u_xlat1;
    let x_1955 : vec3<f32> = u_xlat25;
    u_xlat6.x = dot(x_1954, x_1955);
    let x_1959 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1959, 0.0f, 1.0f);
    let x_1962 : vec4<f32> = u_xlat6;
    let x_1964 : vec4<f32> = u_xlat7;
    let x_1966 : vec3<f32> = (vec3<f32>(x_1962.x, x_1962.x, x_1962.x) * vec3<f32>(x_1964.x, x_1964.y, x_1964.z));
    let x_1967 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1967.w);
    let x_1969 : vec3<f32> = u_xlat2;
    let x_1970 : f32 = u_xlat58;
    let x_1973 : vec3<f32> = u_xlat25;
    let x_1974 : vec3<f32> = ((x_1969 * vec3<f32>(x_1970, x_1970, x_1970)) + x_1973);
    let x_1975 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1974.x, x_1974.y, x_1974.z, x_1975.w);
    let x_1978 : vec4<f32> = u_xlat6;
    let x_1980 : vec4<f32> = u_xlat6;
    u_xlat63 = dot(vec3<f32>(x_1978.x, x_1978.y, x_1978.z), vec3<f32>(x_1980.x, x_1980.y, x_1980.z));
    let x_1983 : f32 = u_xlat63;
    u_xlat63 = max(x_1983, 1.17549435e-37f);
    let x_1985 : f32 = u_xlat63;
    u_xlat63 = inverseSqrt(x_1985);
    let x_1987 : f32 = u_xlat63;
    let x_1989 : vec4<f32> = u_xlat6;
    let x_1991 : vec3<f32> = (vec3<f32>(x_1987, x_1987, x_1987) * vec3<f32>(x_1989.x, x_1989.y, x_1989.z));
    let x_1992 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1991.x, x_1991.y, x_1991.z, x_1992.w);
    let x_1994 : vec3<f32> = u_xlat1;
    let x_1995 : vec4<f32> = u_xlat6;
    u_xlat6.x = dot(x_1994, vec3<f32>(x_1995.x, x_1995.y, x_1995.z));
    let x_2000 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_2000, 0.0f, 1.0f);
    let x_2004 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_2004);
    let x_2007 : f32 = u_xlat59;
    let x_2009 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2007 * x_2009);
    let x_2013 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_2013);
    let x_2016 : vec4<f32> = u_xlat6;
    let x_2019 : vec4<f32> = x_56.x_SpecColor;
    let x_2021 : vec3<f32> = (vec3<f32>(x_2016.x, x_2016.x, x_2016.x) * vec3<f32>(x_2019.x, x_2019.y, x_2019.z));
    let x_2022 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2021.x, x_2021.y, x_2021.z, x_2022.w);
    let x_2024 : vec4<f32> = u_xlat6;
    let x_2026 : vec4<f32> = u_xlat7;
    let x_2028 : vec3<f32> = (vec3<f32>(x_2024.x, x_2024.y, x_2024.z) * vec3<f32>(x_2026.x, x_2026.y, x_2026.z));
    let x_2029 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2028.x, x_2028.y, x_2028.z, x_2029.w);
    let x_2031 : vec4<f32> = u_xlat8;
    let x_2033 : vec4<f32> = u_xlat0;
    let x_2036 : vec4<f32> = u_xlat6;
    let x_2038 : vec3<f32> = ((vec3<f32>(x_2031.x, x_2031.y, x_2031.z) * vec3<f32>(x_2033.y, x_2033.z, x_2033.w)) + vec3<f32>(x_2036.x, x_2036.y, x_2036.z));
    let x_2039 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2038.x, x_2038.y, x_2038.z, x_2039.w);
    let x_2041 : vec4<f32> = u_xlat5;
    let x_2043 : vec4<f32> = u_xlat6;
    let x_2045 : vec3<f32> = (vec3<f32>(x_2041.x, x_2041.y, x_2041.z) + vec3<f32>(x_2043.x, x_2043.y, x_2043.z));
    let x_2046 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2045.x, x_2045.y, x_2045.z, x_2046.w);

    continuing {
      let x_2048 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2048 + bitcast<u32>(1i));
    }
  }
  let x_2051 : vec4<f32> = u_xlat3;
  let x_2053 : vec4<f32> = u_xlat0;
  let x_2056 : vec4<f32> = u_xlat4;
  u_xlat19 = ((vec3<f32>(x_2051.x, x_2051.y, x_2051.z) * vec3<f32>(x_2053.y, x_2053.z, x_2053.w)) + vec3<f32>(x_2056.x, x_2056.y, x_2056.z));
  let x_2061 : vec4<f32> = u_xlat5;
  let x_2063 : vec3<f32> = u_xlat19;
  let x_2064 : vec3<f32> = (vec3<f32>(x_2061.x, x_2061.y, x_2061.z) + x_2063);
  let x_2065 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2064.x, x_2064.y, x_2064.z, x_2065.w);
  let x_2069 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2069 == 1.0f);
  let x_2071 : bool = u_xlatb19;
  if (x_2071) {
    let x_2076 : f32 = u_xlat0.x;
    x_2072 = x_2076;
  } else {
    x_2072 = 1.0f;
  }
  let x_2078 : f32 = x_2072;
  SV_Target0.w = x_2078;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

