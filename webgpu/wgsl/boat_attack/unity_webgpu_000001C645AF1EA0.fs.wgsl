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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_289 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_1800 : AdditionalLights;

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
  var u_xlat3 : vec3<f32>;
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
  var x_1583 : f32;
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
  var x_2028 : f32;
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
  let x_227 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_224, x_226);
  u_xlat3 = vec3<f32>(x_227.x, x_227.y, x_227.z);
  let x_232 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_233 : vec2<f32> = vec2<f32>(x_232.x, x_232.y);
  let x_237 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_233.x, x_233.y));
  let x_238 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_237.x, x_237.y, x_238.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat4;
  let x_242 : vec4<f32> = hlslcc_FragCoord;
  let x_244 : vec2<f32> = (vec2<f32>(x_240.x, x_240.y) * vec2<f32>(x_242.x, x_242.y));
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_244.x, x_244.y, x_245.z, x_245.w);
  let x_249 : f32 = u_xlat4.y;
  let x_252 : f32 = x_44.x_ScaleBiasRt.x;
  let x_255 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat59 = ((x_249 * x_252) + x_255);
  let x_257 : f32 = u_xlat59;
  u_xlat4.z = (-(x_257) + 1.0f);
  let x_266 : vec4<f32> = u_xlat4;
  let x_269 : f32 = x_44.x_GlobalMipBias.x;
  let x_270 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_266.x, x_266.z), x_269);
  u_xlat59 = x_270.x;
  let x_273 : f32 = u_xlat59;
  u_xlat60 = (x_273 + -1.0f);
  let x_278 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_279 : f32 = u_xlat60;
  u_xlat60 = ((x_278 * x_279) + 1.0f);
  let x_282 : f32 = u_xlat59;
  u_xlat59 = min(x_282, 1.0f);
  let x_291 : f32 = x_289.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_291);
  let x_293 : bool = u_xlatb4;
  if (x_293) {
    let x_297 : f32 = x_289.x_MainLightShadowParams.y;
    u_xlatb4 = (x_297 == 1.0f);
    let x_299 : bool = u_xlatb4;
    if (x_299) {
      let x_303 : vec4<f32> = vs_TEXCOORD6;
      let x_306 : vec4<f32> = x_289.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_303.x, x_303.y, x_303.x, x_303.y) + x_306);
      let x_309 : vec4<f32> = u_xlat4;
      let x_310 : vec2<f32> = vec2<f32>(x_309.x, x_309.y);
      let x_312 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_310.x, x_310.y, x_312);
      let x_325 : vec3<f32> = txVec0;
      let x_327 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_325.xy, x_325.z);
      u_xlat5.x = x_327;
      let x_330 : vec4<f32> = u_xlat4;
      let x_331 : vec2<f32> = vec2<f32>(x_330.z, x_330.w);
      let x_333 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_331.x, x_331.y, x_333);
      let x_340 : vec3<f32> = txVec1;
      let x_342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_340.xy, x_340.z);
      u_xlat5.y = x_342;
      let x_344 : vec4<f32> = vs_TEXCOORD6;
      let x_347 : vec4<f32> = x_289.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_344.x, x_344.y, x_344.x, x_344.y) + x_347);
      let x_350 : vec4<f32> = u_xlat4;
      let x_351 : vec2<f32> = vec2<f32>(x_350.x, x_350.y);
      let x_353 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_351.x, x_351.y, x_353);
      let x_360 : vec3<f32> = txVec2;
      let x_362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_360.xy, x_360.z);
      u_xlat5.z = x_362;
      let x_365 : vec4<f32> = u_xlat4;
      let x_366 : vec2<f32> = vec2<f32>(x_365.z, x_365.w);
      let x_368 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_366.x, x_366.y, x_368);
      let x_375 : vec3<f32> = txVec3;
      let x_377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_375.xy, x_375.z);
      u_xlat5.w = x_377;
      let x_379 : vec4<f32> = u_xlat5;
      u_xlat4.x = dot(x_379, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_387 : f32 = x_289.x_MainLightShadowParams.y;
      u_xlatb23 = (x_387 == 2.0f);
      let x_390 : bool = u_xlatb23;
      if (x_390) {
        let x_394 : vec4<f32> = vs_TEXCOORD6;
        let x_397 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_402 : vec2<f32> = ((vec2<f32>(x_394.x, x_394.y) * vec2<f32>(x_397.z, x_397.w)) + vec2<f32>(0.5f, 0.5f));
        let x_403 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_402.x, x_402.y, x_403.z);
        let x_405 : vec3<f32> = u_xlat23;
        let x_407 : vec2<f32> = floor(vec2<f32>(x_405.x, x_405.y));
        let x_408 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_407.x, x_407.y, x_408.z);
        let x_410 : vec4<f32> = vs_TEXCOORD6;
        let x_413 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_416 : vec3<f32> = u_xlat23;
        let x_419 : vec2<f32> = ((vec2<f32>(x_410.x, x_410.y) * vec2<f32>(x_413.z, x_413.w)) + -(vec2<f32>(x_416.x, x_416.y)));
        let x_420 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
        let x_423 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_423.x, x_423.x, x_423.y, x_423.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_428 : vec4<f32> = u_xlat6;
        let x_430 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_428.x, x_428.x, x_428.z, x_428.z) * vec4<f32>(x_430.x, x_430.x, x_430.z, x_430.z));
        let x_435 : vec4<f32> = u_xlat7;
        u_xlat43 = (vec2<f32>(x_435.y, x_435.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_440 : vec4<f32> = u_xlat7;
        let x_443 : vec4<f32> = u_xlat5;
        let x_446 : vec2<f32> = ((vec2<f32>(x_440.x, x_440.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_443.x, x_443.y)));
        let x_447 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_446.x, x_447.y, x_446.y, x_447.w);
        let x_449 : vec4<f32> = u_xlat5;
        let x_452 : vec2<f32> = (-(vec2<f32>(x_449.x, x_449.y)) + vec2<f32>(1.0f, 1.0f));
        let x_453 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
        let x_456 : vec4<f32> = u_xlat5;
        u_xlat45 = min(vec2<f32>(x_456.x, x_456.y), vec2<f32>(0.0f, 0.0f));
        let x_460 : vec2<f32> = u_xlat45;
        let x_462 : vec2<f32> = u_xlat45;
        let x_464 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_460) * x_462) + vec2<f32>(x_464.x, x_464.y));
        let x_467 : vec4<f32> = u_xlat5;
        let x_469 : vec2<f32> = max(vec2<f32>(x_467.x, x_467.y), vec2<f32>(0.0f, 0.0f));
        let x_470 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_469.x, x_469.y, x_470.z, x_470.w);
        let x_472 : vec4<f32> = u_xlat5;
        let x_475 : vec4<f32> = u_xlat5;
        let x_478 : vec4<f32> = u_xlat6;
        let x_480 : vec2<f32> = ((-(vec2<f32>(x_472.x, x_472.y)) * vec2<f32>(x_475.x, x_475.y)) + vec2<f32>(x_478.y, x_478.w));
        let x_481 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
        let x_483 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_483 + vec2<f32>(1.0f, 1.0f));
        let x_485 : vec4<f32> = u_xlat5;
        let x_487 : vec2<f32> = (vec2<f32>(x_485.x, x_485.y) + vec2<f32>(1.0f, 1.0f));
        let x_488 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_487.x, x_487.y, x_488.z, x_488.w);
        let x_491 : vec4<f32> = u_xlat6;
        let x_495 : vec2<f32> = (vec2<f32>(x_491.x, x_491.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_496 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
        let x_499 : vec4<f32> = u_xlat7;
        let x_501 : vec2<f32> = (vec2<f32>(x_499.x, x_499.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_502 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
        let x_504 : vec2<f32> = u_xlat45;
        let x_505 : vec2<f32> = (x_504 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_506 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_505.x, x_505.y, x_506.z, x_506.w);
        let x_509 : vec4<f32> = u_xlat5;
        let x_511 : vec2<f32> = (vec2<f32>(x_509.x, x_509.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_512 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
        let x_514 : vec4<f32> = u_xlat6;
        let x_516 : vec2<f32> = (vec2<f32>(x_514.y, x_514.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_517 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_516.x, x_516.y, x_517.z, x_517.w);
        let x_520 : f32 = u_xlat7.x;
        u_xlat8.z = x_520;
        let x_523 : f32 = u_xlat5.x;
        u_xlat8.w = x_523;
        let x_526 : f32 = u_xlat10.x;
        u_xlat9.z = x_526;
        let x_529 : f32 = u_xlat43.x;
        u_xlat9.w = x_529;
        let x_531 : vec4<f32> = u_xlat8;
        let x_533 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_531.z, x_531.w, x_531.x, x_531.z) + vec4<f32>(x_533.z, x_533.w, x_533.x, x_533.z));
        let x_537 : f32 = u_xlat8.y;
        u_xlat7.z = x_537;
        let x_540 : f32 = u_xlat5.y;
        u_xlat7.w = x_540;
        let x_543 : f32 = u_xlat9.y;
        u_xlat10.z = x_543;
        let x_546 : f32 = u_xlat43.y;
        u_xlat10.w = x_546;
        let x_548 : vec4<f32> = u_xlat7;
        let x_550 : vec4<f32> = u_xlat10;
        let x_552 : vec3<f32> = (vec3<f32>(x_548.z, x_548.y, x_548.w) + vec3<f32>(x_550.z, x_550.y, x_550.w));
        let x_553 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
        let x_555 : vec4<f32> = u_xlat9;
        let x_557 : vec4<f32> = u_xlat6;
        let x_559 : vec3<f32> = (vec3<f32>(x_555.x, x_555.z, x_555.w) / vec3<f32>(x_557.z, x_557.w, x_557.y));
        let x_560 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
        let x_562 : vec4<f32> = u_xlat7;
        let x_568 : vec3<f32> = (vec3<f32>(x_562.x, x_562.y, x_562.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_569 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
        let x_571 : vec4<f32> = u_xlat10;
        let x_573 : vec4<f32> = u_xlat5;
        let x_575 : vec3<f32> = (vec3<f32>(x_571.z, x_571.y, x_571.w) / vec3<f32>(x_573.x, x_573.y, x_573.z));
        let x_576 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
        let x_578 : vec4<f32> = u_xlat8;
        let x_580 : vec3<f32> = (vec3<f32>(x_578.x, x_578.y, x_578.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_581 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
        let x_583 : vec4<f32> = u_xlat7;
        let x_586 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_588 : vec3<f32> = (vec3<f32>(x_583.y, x_583.x, x_583.z) * vec3<f32>(x_586.x, x_586.x, x_586.x));
        let x_589 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
        let x_591 : vec4<f32> = u_xlat8;
        let x_594 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_596 : vec3<f32> = (vec3<f32>(x_591.x, x_591.y, x_591.z) * vec3<f32>(x_594.y, x_594.y, x_594.y));
        let x_597 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
        let x_600 : f32 = u_xlat8.x;
        u_xlat7.w = x_600;
        let x_602 : vec3<f32> = u_xlat23;
        let x_605 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_608 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_602.x, x_602.y, x_602.x, x_602.y) * vec4<f32>(x_605.x, x_605.y, x_605.x, x_605.y)) + vec4<f32>(x_608.y, x_608.w, x_608.x, x_608.w));
        let x_611 : vec3<f32> = u_xlat23;
        let x_614 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_617 : vec4<f32> = u_xlat7;
        let x_619 : vec2<f32> = ((vec2<f32>(x_611.x, x_611.y) * vec2<f32>(x_614.x, x_614.y)) + vec2<f32>(x_617.z, x_617.w));
        let x_620 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_619.x, x_619.y, x_620.z, x_620.w);
        let x_623 : f32 = u_xlat7.y;
        u_xlat8.w = x_623;
        let x_625 : vec4<f32> = u_xlat8;
        let x_626 : vec2<f32> = vec2<f32>(x_625.y, x_625.z);
        let x_627 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_627.x, x_626.x, x_627.z, x_626.y);
        let x_630 : vec3<f32> = u_xlat23;
        let x_633 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_636 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_630.x, x_630.y, x_630.x, x_630.y) * vec4<f32>(x_633.x, x_633.y, x_633.x, x_633.y)) + vec4<f32>(x_636.x, x_636.y, x_636.z, x_636.y));
        let x_639 : vec3<f32> = u_xlat23;
        let x_642 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_645 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_639.x, x_639.y, x_639.x, x_639.y) * vec4<f32>(x_642.x, x_642.y, x_642.x, x_642.y)) + vec4<f32>(x_645.w, x_645.y, x_645.w, x_645.z));
        let x_648 : vec3<f32> = u_xlat23;
        let x_651 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_654 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_648.x, x_648.y, x_648.x, x_648.y) * vec4<f32>(x_651.x, x_651.y, x_651.x, x_651.y)) + vec4<f32>(x_654.x, x_654.w, x_654.z, x_654.w));
        let x_658 : vec4<f32> = u_xlat5;
        let x_660 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_658.x, x_658.x, x_658.x, x_658.y) * vec4<f32>(x_660.z, x_660.w, x_660.y, x_660.z));
        let x_664 : vec4<f32> = u_xlat5;
        let x_666 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_664.y, x_664.y, x_664.z, x_664.z) * x_666);
        let x_669 : f32 = u_xlat5.z;
        let x_671 : f32 = u_xlat6.y;
        u_xlat23.x = (x_669 * x_671);
        let x_675 : vec4<f32> = u_xlat9;
        let x_676 : vec2<f32> = vec2<f32>(x_675.x, x_675.y);
        let x_678 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_676.x, x_676.y, x_678);
        let x_686 : vec3<f32> = txVec4;
        let x_688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_686.xy, x_686.z);
        u_xlat42 = x_688;
        let x_690 : vec4<f32> = u_xlat9;
        let x_691 : vec2<f32> = vec2<f32>(x_690.z, x_690.w);
        let x_693 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_691.x, x_691.y, x_693);
        let x_701 : vec3<f32> = txVec5;
        let x_703 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_701.xy, x_701.z);
        u_xlat61 = x_703;
        let x_704 : f32 = u_xlat61;
        let x_706 : f32 = u_xlat12.y;
        u_xlat61 = (x_704 * x_706);
        let x_709 : f32 = u_xlat12.x;
        let x_710 : f32 = u_xlat42;
        let x_712 : f32 = u_xlat61;
        u_xlat42 = ((x_709 * x_710) + x_712);
        let x_715 : vec4<f32> = u_xlat10;
        let x_716 : vec2<f32> = vec2<f32>(x_715.x, x_715.y);
        let x_718 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_716.x, x_716.y, x_718);
        let x_725 : vec3<f32> = txVec6;
        let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_725.xy, x_725.z);
        u_xlat61 = x_727;
        let x_729 : f32 = u_xlat12.z;
        let x_730 : f32 = u_xlat61;
        let x_732 : f32 = u_xlat42;
        u_xlat42 = ((x_729 * x_730) + x_732);
        let x_735 : vec4<f32> = u_xlat8;
        let x_736 : vec2<f32> = vec2<f32>(x_735.x, x_735.y);
        let x_738 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_736.x, x_736.y, x_738);
        let x_745 : vec3<f32> = txVec7;
        let x_747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_745.xy, x_745.z);
        u_xlat61 = x_747;
        let x_749 : f32 = u_xlat12.w;
        let x_750 : f32 = u_xlat61;
        let x_752 : f32 = u_xlat42;
        u_xlat42 = ((x_749 * x_750) + x_752);
        let x_755 : vec4<f32> = u_xlat11;
        let x_756 : vec2<f32> = vec2<f32>(x_755.x, x_755.y);
        let x_758 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_756.x, x_756.y, x_758);
        let x_765 : vec3<f32> = txVec8;
        let x_767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_765.xy, x_765.z);
        u_xlat61 = x_767;
        let x_769 : f32 = u_xlat13.x;
        let x_770 : f32 = u_xlat61;
        let x_772 : f32 = u_xlat42;
        u_xlat42 = ((x_769 * x_770) + x_772);
        let x_775 : vec4<f32> = u_xlat11;
        let x_776 : vec2<f32> = vec2<f32>(x_775.z, x_775.w);
        let x_778 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_776.x, x_776.y, x_778);
        let x_785 : vec3<f32> = txVec9;
        let x_787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_785.xy, x_785.z);
        u_xlat61 = x_787;
        let x_789 : f32 = u_xlat13.y;
        let x_790 : f32 = u_xlat61;
        let x_792 : f32 = u_xlat42;
        u_xlat42 = ((x_789 * x_790) + x_792);
        let x_795 : vec4<f32> = u_xlat8;
        let x_796 : vec2<f32> = vec2<f32>(x_795.z, x_795.w);
        let x_798 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_805 : vec3<f32> = txVec10;
        let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_805.xy, x_805.z);
        u_xlat61 = x_807;
        let x_809 : f32 = u_xlat13.z;
        let x_810 : f32 = u_xlat61;
        let x_812 : f32 = u_xlat42;
        u_xlat42 = ((x_809 * x_810) + x_812);
        let x_815 : vec4<f32> = u_xlat7;
        let x_816 : vec2<f32> = vec2<f32>(x_815.x, x_815.y);
        let x_818 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_816.x, x_816.y, x_818);
        let x_825 : vec3<f32> = txVec11;
        let x_827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_825.xy, x_825.z);
        u_xlat61 = x_827;
        let x_829 : f32 = u_xlat13.w;
        let x_830 : f32 = u_xlat61;
        let x_832 : f32 = u_xlat42;
        u_xlat42 = ((x_829 * x_830) + x_832);
        let x_835 : vec4<f32> = u_xlat7;
        let x_836 : vec2<f32> = vec2<f32>(x_835.z, x_835.w);
        let x_838 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_836.x, x_836.y, x_838);
        let x_845 : vec3<f32> = txVec12;
        let x_847 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_845.xy, x_845.z);
        u_xlat61 = x_847;
        let x_849 : f32 = u_xlat23.x;
        let x_850 : f32 = u_xlat61;
        let x_852 : f32 = u_xlat42;
        u_xlat4.x = ((x_849 * x_850) + x_852);
      } else {
        let x_856 : vec4<f32> = vs_TEXCOORD6;
        let x_859 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_862 : vec2<f32> = ((vec2<f32>(x_856.x, x_856.y) * vec2<f32>(x_859.z, x_859.w)) + vec2<f32>(0.5f, 0.5f));
        let x_863 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_862.x, x_862.y, x_863.z);
        let x_865 : vec3<f32> = u_xlat23;
        let x_867 : vec2<f32> = floor(vec2<f32>(x_865.x, x_865.y));
        let x_868 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_867.x, x_867.y, x_868.z);
        let x_870 : vec4<f32> = vs_TEXCOORD6;
        let x_873 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_876 : vec3<f32> = u_xlat23;
        let x_879 : vec2<f32> = ((vec2<f32>(x_870.x, x_870.y) * vec2<f32>(x_873.z, x_873.w)) + -(vec2<f32>(x_876.x, x_876.y)));
        let x_880 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_879.x, x_879.y, x_880.z, x_880.w);
        let x_882 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_882.x, x_882.x, x_882.y, x_882.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_885 : vec4<f32> = u_xlat6;
        let x_887 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_885.x, x_885.x, x_885.z, x_885.z) * vec4<f32>(x_887.x, x_887.x, x_887.z, x_887.z));
        let x_890 : vec4<f32> = u_xlat7;
        let x_894 : vec2<f32> = (vec2<f32>(x_890.y, x_890.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_895 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_895.x, x_894.x, x_895.z, x_894.y);
        let x_897 : vec4<f32> = u_xlat7;
        let x_900 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_897.x, x_897.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_900.x, x_900.y)));
        let x_904 : vec4<f32> = u_xlat5;
        let x_907 : vec2<f32> = (-(vec2<f32>(x_904.x, x_904.y)) + vec2<f32>(1.0f, 1.0f));
        let x_908 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_907.x, x_908.y, x_907.y, x_908.w);
        let x_910 : vec4<f32> = u_xlat5;
        let x_912 : vec2<f32> = min(vec2<f32>(x_910.x, x_910.y), vec2<f32>(0.0f, 0.0f));
        let x_913 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_912.x, x_912.y, x_913.z, x_913.w);
        let x_915 : vec4<f32> = u_xlat7;
        let x_918 : vec4<f32> = u_xlat7;
        let x_921 : vec4<f32> = u_xlat6;
        let x_923 : vec2<f32> = ((-(vec2<f32>(x_915.x, x_915.y)) * vec2<f32>(x_918.x, x_918.y)) + vec2<f32>(x_921.x, x_921.z));
        let x_924 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_923.x, x_924.y, x_923.y, x_924.w);
        let x_926 : vec4<f32> = u_xlat5;
        let x_928 : vec2<f32> = max(vec2<f32>(x_926.x, x_926.y), vec2<f32>(0.0f, 0.0f));
        let x_929 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_928.x, x_928.y, x_929.z, x_929.w);
        let x_931 : vec4<f32> = u_xlat7;
        let x_934 : vec4<f32> = u_xlat7;
        let x_937 : vec4<f32> = u_xlat6;
        let x_939 : vec2<f32> = ((-(vec2<f32>(x_931.x, x_931.y)) * vec2<f32>(x_934.x, x_934.y)) + vec2<f32>(x_937.y, x_937.w));
        let x_940 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_940.x, x_939.x, x_940.z, x_939.y);
        let x_942 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_942 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_946 : f32 = u_xlat6.y;
        u_xlat7.z = (x_946 * 0.081632003f);
        let x_950 : vec2<f32> = u_xlat43;
        let x_953 : vec2<f32> = (vec2<f32>(x_950.y, x_950.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_954 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_953.x, x_953.y, x_954.z, x_954.w);
        let x_956 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_956.x, x_956.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_960 : f32 = u_xlat6.w;
        u_xlat9.z = (x_960 * 0.081632003f);
        let x_964 : f32 = u_xlat9.y;
        u_xlat7.x = x_964;
        let x_966 : vec4<f32> = u_xlat5;
        let x_973 : vec2<f32> = ((vec2<f32>(x_966.x, x_966.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_974 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_974.x, x_973.x, x_974.z, x_973.y);
        let x_976 : vec4<f32> = u_xlat5;
        let x_980 : vec2<f32> = ((vec2<f32>(x_976.x, x_976.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_981 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_980.x, x_981.y, x_980.y, x_981.w);
        let x_984 : f32 = u_xlat43.x;
        u_xlat6.y = x_984;
        let x_987 : f32 = u_xlat8.y;
        u_xlat6.w = x_987;
        let x_989 : vec4<f32> = u_xlat6;
        let x_990 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_989 + x_990);
        let x_992 : vec4<f32> = u_xlat5;
        let x_995 : vec2<f32> = ((vec2<f32>(x_992.y, x_992.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_996 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_996.x, x_995.x, x_996.z, x_995.y);
        let x_998 : vec4<f32> = u_xlat5;
        let x_1001 : vec2<f32> = ((vec2<f32>(x_998.y, x_998.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1002 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1001.x, x_1002.y, x_1001.y, x_1002.w);
        let x_1005 : f32 = u_xlat43.y;
        u_xlat8.y = x_1005;
        let x_1007 : vec4<f32> = u_xlat8;
        let x_1008 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1007 + x_1008);
        let x_1010 : vec4<f32> = u_xlat6;
        let x_1011 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_1010 / x_1011);
        let x_1013 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1013 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1019 : vec4<f32> = u_xlat8;
        let x_1020 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_1019 / x_1020);
        let x_1022 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1022 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1024 : vec4<f32> = u_xlat6;
        let x_1027 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1024.w, x_1024.x, x_1024.y, x_1024.z) * vec4<f32>(x_1027.x, x_1027.x, x_1027.x, x_1027.x));
        let x_1030 : vec4<f32> = u_xlat8;
        let x_1033 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1030.x, x_1030.w, x_1030.y, x_1030.z) * vec4<f32>(x_1033.y, x_1033.y, x_1033.y, x_1033.y));
        let x_1036 : vec4<f32> = u_xlat6;
        let x_1037 : vec3<f32> = vec3<f32>(x_1036.y, x_1036.z, x_1036.w);
        let x_1038 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1037.x, x_1038.y, x_1037.y, x_1037.z);
        let x_1041 : f32 = u_xlat8.x;
        u_xlat9.y = x_1041;
        let x_1043 : vec3<f32> = u_xlat23;
        let x_1046 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1049 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1043.x, x_1043.y, x_1043.x, x_1043.y) * vec4<f32>(x_1046.x, x_1046.y, x_1046.x, x_1046.y)) + vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1049.y));
        let x_1052 : vec3<f32> = u_xlat23;
        let x_1055 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1058 : vec4<f32> = u_xlat9;
        let x_1060 : vec2<f32> = ((vec2<f32>(x_1052.x, x_1052.y) * vec2<f32>(x_1055.x, x_1055.y)) + vec2<f32>(x_1058.w, x_1058.y));
        let x_1061 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1064 : f32 = u_xlat9.y;
        u_xlat6.y = x_1064;
        let x_1067 : f32 = u_xlat8.z;
        u_xlat9.y = x_1067;
        let x_1069 : vec3<f32> = u_xlat23;
        let x_1072 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1075 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1069.x, x_1069.y, x_1069.x, x_1069.y) * vec4<f32>(x_1072.x, x_1072.y, x_1072.x, x_1072.y)) + vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1075.y));
        let x_1079 : vec3<f32> = u_xlat23;
        let x_1082 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1085 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1079.x, x_1079.y) * vec2<f32>(x_1082.x, x_1082.y)) + vec2<f32>(x_1085.w, x_1085.y));
        let x_1089 : f32 = u_xlat9.y;
        u_xlat6.z = x_1089;
        let x_1091 : vec3<f32> = u_xlat23;
        let x_1094 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1097 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1091.x, x_1091.y, x_1091.x, x_1091.y) * vec4<f32>(x_1094.x, x_1094.y, x_1094.x, x_1094.y)) + vec4<f32>(x_1097.x, x_1097.y, x_1097.x, x_1097.z));
        let x_1101 : f32 = u_xlat8.w;
        u_xlat9.y = x_1101;
        let x_1104 : vec3<f32> = u_xlat23;
        let x_1107 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1110 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1104.x, x_1104.y, x_1104.x, x_1104.y) * vec4<f32>(x_1107.x, x_1107.y, x_1107.x, x_1107.y)) + vec4<f32>(x_1110.x, x_1110.y, x_1110.z, x_1110.y));
        let x_1114 : vec3<f32> = u_xlat23;
        let x_1117 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1120 : vec4<f32> = u_xlat9;
        let x_1122 : vec2<f32> = ((vec2<f32>(x_1114.x, x_1114.y) * vec2<f32>(x_1117.x, x_1117.y)) + vec2<f32>(x_1120.w, x_1120.y));
        let x_1123 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1122.x, x_1122.y, x_1123.z);
        let x_1126 : f32 = u_xlat9.y;
        u_xlat6.w = x_1126;
        let x_1129 : vec3<f32> = u_xlat23;
        let x_1132 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1135 : vec4<f32> = u_xlat6;
        u_xlat15 = ((vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(x_1132.x, x_1132.y)) + vec2<f32>(x_1135.x, x_1135.w));
        let x_1138 : vec4<f32> = u_xlat9;
        let x_1139 : vec3<f32> = vec3<f32>(x_1138.x, x_1138.z, x_1138.w);
        let x_1140 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1139.x, x_1140.y, x_1139.y, x_1139.z);
        let x_1142 : vec3<f32> = u_xlat23;
        let x_1145 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1148 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1142.x, x_1142.y, x_1142.x, x_1142.y) * vec4<f32>(x_1145.x, x_1145.y, x_1145.x, x_1145.y)) + vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1148.y));
        let x_1152 : vec3<f32> = u_xlat23;
        let x_1155 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1158 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1152.x, x_1152.y) * vec2<f32>(x_1155.x, x_1155.y)) + vec2<f32>(x_1158.w, x_1158.y));
        let x_1162 : f32 = u_xlat6.x;
        u_xlat8.x = x_1162;
        let x_1164 : vec3<f32> = u_xlat23;
        let x_1167 : vec4<f32> = x_289.x_MainLightShadowmapSize;
        let x_1170 : vec4<f32> = u_xlat8;
        let x_1172 : vec2<f32> = ((vec2<f32>(x_1164.x, x_1164.y) * vec2<f32>(x_1167.x, x_1167.y)) + vec2<f32>(x_1170.x, x_1170.y));
        let x_1173 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1172.x, x_1172.y, x_1173.z);
        let x_1176 : vec4<f32> = u_xlat5;
        let x_1178 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1176.x, x_1176.x, x_1176.x, x_1176.x) * x_1178);
        let x_1181 : vec4<f32> = u_xlat5;
        let x_1183 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1181.y, x_1181.y, x_1181.y, x_1181.y) * x_1183);
        let x_1186 : vec4<f32> = u_xlat5;
        let x_1188 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1186.z, x_1186.z, x_1186.z, x_1186.z) * x_1188);
        let x_1190 : vec4<f32> = u_xlat5;
        let x_1192 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1190.w, x_1190.w, x_1190.w, x_1190.w) * x_1192);
        let x_1195 : vec4<f32> = u_xlat10;
        let x_1196 : vec2<f32> = vec2<f32>(x_1195.x, x_1195.y);
        let x_1198 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1196.x, x_1196.y, x_1198);
        let x_1205 : vec3<f32> = txVec13;
        let x_1207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1205.xy, x_1205.z);
        u_xlat61 = x_1207;
        let x_1209 : vec4<f32> = u_xlat10;
        let x_1210 : vec2<f32> = vec2<f32>(x_1209.z, x_1209.w);
        let x_1212 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1210.x, x_1210.y, x_1212);
        let x_1219 : vec3<f32> = txVec14;
        let x_1221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1219.xy, x_1219.z);
        u_xlat6.x = x_1221;
        let x_1224 : f32 = u_xlat6.x;
        let x_1226 : f32 = u_xlat16.y;
        u_xlat6.x = (x_1224 * x_1226);
        let x_1230 : f32 = u_xlat16.x;
        let x_1231 : f32 = u_xlat61;
        let x_1234 : f32 = u_xlat6.x;
        u_xlat61 = ((x_1230 * x_1231) + x_1234);
        let x_1237 : vec4<f32> = u_xlat11;
        let x_1238 : vec2<f32> = vec2<f32>(x_1237.x, x_1237.y);
        let x_1240 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
        let x_1247 : vec3<f32> = txVec15;
        let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1247.xy, x_1247.z);
        u_xlat6.x = x_1249;
        let x_1252 : f32 = u_xlat16.z;
        let x_1254 : f32 = u_xlat6.x;
        let x_1256 : f32 = u_xlat61;
        u_xlat61 = ((x_1252 * x_1254) + x_1256);
        let x_1259 : vec4<f32> = u_xlat13;
        let x_1260 : vec2<f32> = vec2<f32>(x_1259.x, x_1259.y);
        let x_1262 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1260.x, x_1260.y, x_1262);
        let x_1269 : vec3<f32> = txVec16;
        let x_1271 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1269.xy, x_1269.z);
        u_xlat6.x = x_1271;
        let x_1274 : f32 = u_xlat16.w;
        let x_1276 : f32 = u_xlat6.x;
        let x_1278 : f32 = u_xlat61;
        u_xlat61 = ((x_1274 * x_1276) + x_1278);
        let x_1281 : vec4<f32> = u_xlat12;
        let x_1282 : vec2<f32> = vec2<f32>(x_1281.x, x_1281.y);
        let x_1284 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1282.x, x_1282.y, x_1284);
        let x_1291 : vec3<f32> = txVec17;
        let x_1293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1291.xy, x_1291.z);
        u_xlat6.x = x_1293;
        let x_1296 : f32 = u_xlat17.x;
        let x_1298 : f32 = u_xlat6.x;
        let x_1300 : f32 = u_xlat61;
        u_xlat61 = ((x_1296 * x_1298) + x_1300);
        let x_1303 : vec4<f32> = u_xlat12;
        let x_1304 : vec2<f32> = vec2<f32>(x_1303.z, x_1303.w);
        let x_1306 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1304.x, x_1304.y, x_1306);
        let x_1313 : vec3<f32> = txVec18;
        let x_1315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1313.xy, x_1313.z);
        u_xlat6.x = x_1315;
        let x_1318 : f32 = u_xlat17.y;
        let x_1320 : f32 = u_xlat6.x;
        let x_1322 : f32 = u_xlat61;
        u_xlat61 = ((x_1318 * x_1320) + x_1322);
        let x_1325 : vec2<f32> = u_xlat49;
        let x_1327 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec19;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1334.xy, x_1334.z);
        u_xlat6.x = x_1336;
        let x_1339 : f32 = u_xlat17.z;
        let x_1341 : f32 = u_xlat6.x;
        let x_1343 : f32 = u_xlat61;
        u_xlat61 = ((x_1339 * x_1341) + x_1343);
        let x_1346 : vec4<f32> = u_xlat13;
        let x_1347 : vec2<f32> = vec2<f32>(x_1346.z, x_1346.w);
        let x_1349 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1347.x, x_1347.y, x_1349);
        let x_1356 : vec3<f32> = txVec20;
        let x_1358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1356.xy, x_1356.z);
        u_xlat6.x = x_1358;
        let x_1361 : f32 = u_xlat17.w;
        let x_1363 : f32 = u_xlat6.x;
        let x_1365 : f32 = u_xlat61;
        u_xlat61 = ((x_1361 * x_1363) + x_1365);
        let x_1368 : vec4<f32> = u_xlat14;
        let x_1369 : vec2<f32> = vec2<f32>(x_1368.x, x_1368.y);
        let x_1371 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1369.x, x_1369.y, x_1371);
        let x_1378 : vec3<f32> = txVec21;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1378.xy, x_1378.z);
        u_xlat6.x = x_1380;
        let x_1383 : f32 = u_xlat18.x;
        let x_1385 : f32 = u_xlat6.x;
        let x_1387 : f32 = u_xlat61;
        u_xlat61 = ((x_1383 * x_1385) + x_1387);
        let x_1390 : vec4<f32> = u_xlat14;
        let x_1391 : vec2<f32> = vec2<f32>(x_1390.z, x_1390.w);
        let x_1393 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1400 : vec3<f32> = txVec22;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1400.xy, x_1400.z);
        u_xlat6.x = x_1402;
        let x_1405 : f32 = u_xlat18.y;
        let x_1407 : f32 = u_xlat6.x;
        let x_1409 : f32 = u_xlat61;
        u_xlat61 = ((x_1405 * x_1407) + x_1409);
        let x_1412 : vec3<f32> = u_xlat25;
        let x_1413 : vec2<f32> = vec2<f32>(x_1412.x, x_1412.y);
        let x_1415 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec23;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1422.xy, x_1422.z);
        u_xlat6.x = x_1424;
        let x_1427 : f32 = u_xlat18.z;
        let x_1429 : f32 = u_xlat6.x;
        let x_1431 : f32 = u_xlat61;
        u_xlat61 = ((x_1427 * x_1429) + x_1431);
        let x_1434 : vec2<f32> = u_xlat15;
        let x_1436 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec24;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1443.xy, x_1443.z);
        u_xlat6.x = x_1445;
        let x_1448 : f32 = u_xlat18.w;
        let x_1450 : f32 = u_xlat6.x;
        let x_1452 : f32 = u_xlat61;
        u_xlat61 = ((x_1448 * x_1450) + x_1452);
        let x_1455 : vec4<f32> = u_xlat9;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.x, x_1455.y);
        let x_1458 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec25;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1465.xy, x_1465.z);
        u_xlat6.x = x_1467;
        let x_1470 : f32 = u_xlat5.x;
        let x_1472 : f32 = u_xlat6.x;
        let x_1474 : f32 = u_xlat61;
        u_xlat61 = ((x_1470 * x_1472) + x_1474);
        let x_1477 : vec4<f32> = u_xlat9;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.z, x_1477.w);
        let x_1480 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec26;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1487.xy, x_1487.z);
        u_xlat5.x = x_1489;
        let x_1492 : f32 = u_xlat5.y;
        let x_1494 : f32 = u_xlat5.x;
        let x_1496 : f32 = u_xlat61;
        u_xlat61 = ((x_1492 * x_1494) + x_1496);
        let x_1499 : vec2<f32> = u_xlat46;
        let x_1501 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1499.x, x_1499.y, x_1501);
        let x_1508 : vec3<f32> = txVec27;
        let x_1510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1508.xy, x_1508.z);
        u_xlat5.x = x_1510;
        let x_1513 : f32 = u_xlat5.z;
        let x_1515 : f32 = u_xlat5.x;
        let x_1517 : f32 = u_xlat61;
        u_xlat61 = ((x_1513 * x_1515) + x_1517);
        let x_1520 : vec3<f32> = u_xlat23;
        let x_1521 : vec2<f32> = vec2<f32>(x_1520.x, x_1520.y);
        let x_1523 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1521.x, x_1521.y, x_1523);
        let x_1530 : vec3<f32> = txVec28;
        let x_1532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1530.xy, x_1530.z);
        u_xlat23.x = x_1532;
        let x_1535 : f32 = u_xlat5.w;
        let x_1537 : f32 = u_xlat23.x;
        let x_1539 : f32 = u_xlat61;
        u_xlat4.x = ((x_1535 * x_1537) + x_1539);
      }
    }
  } else {
    let x_1544 : vec4<f32> = vs_TEXCOORD6;
    let x_1545 : vec2<f32> = vec2<f32>(x_1544.x, x_1544.y);
    let x_1547 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1545.x, x_1545.y, x_1547);
    let x_1554 : vec3<f32> = txVec29;
    let x_1556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1554.xy, x_1554.z);
    u_xlat4.x = x_1556;
  }
  let x_1559 : f32 = x_289.x_MainLightShadowParams.x;
  u_xlat23.x = (-(x_1559) + 1.0f);
  let x_1564 : f32 = u_xlat4.x;
  let x_1566 : f32 = x_289.x_MainLightShadowParams.x;
  let x_1569 : f32 = u_xlat23.x;
  u_xlat4.x = ((x_1564 * x_1566) + x_1569);
  let x_1573 : f32 = vs_TEXCOORD6.z;
  u_xlatb23 = (0.0f >= x_1573);
  let x_1577 : f32 = vs_TEXCOORD6.z;
  u_xlatb42 = (x_1577 >= 1.0f);
  let x_1579 : bool = u_xlatb42;
  let x_1580 : bool = u_xlatb23;
  u_xlatb23 = (x_1579 | x_1580);
  let x_1582 : bool = u_xlatb23;
  if (x_1582) {
    x_1583 = 1.0f;
  } else {
    let x_1588 : f32 = u_xlat4.x;
    x_1583 = x_1588;
  }
  let x_1589 : f32 = x_1583;
  u_xlat4.x = x_1589;
  let x_1591 : vec3<f32> = vs_TEXCOORD1;
  let x_1593 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat23 = (x_1591 + -(x_1593));
  let x_1596 : vec3<f32> = u_xlat23;
  let x_1597 : vec3<f32> = u_xlat23;
  u_xlat23.x = dot(x_1596, x_1597);
  let x_1601 : f32 = u_xlat23.x;
  let x_1603 : f32 = x_289.x_MainLightShadowParams.z;
  let x_1606 : f32 = x_289.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_1601 * x_1603) + x_1606);
  let x_1610 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1610, 0.0f, 1.0f);
  let x_1614 : f32 = u_xlat4.x;
  u_xlat42 = (-(x_1614) + 1.0f);
  let x_1618 : f32 = u_xlat23.x;
  let x_1619 : f32 = u_xlat42;
  let x_1622 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1618 * x_1619) + x_1622);
  let x_1625 : f32 = u_xlat60;
  let x_1629 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat23 = (vec3<f32>(x_1625, x_1625, x_1625) * vec3<f32>(x_1629.x, x_1629.y, x_1629.z));
  let x_1632 : f32 = u_xlat59;
  let x_1634 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_1632, x_1632, x_1632) * x_1634);
  let x_1637 : f32 = u_xlat4.x;
  let x_1640 : f32 = x_93.unity_LightData.z;
  u_xlat59 = (x_1637 * x_1640);
  let x_1642 : f32 = u_xlat59;
  let x_1644 : vec3<f32> = u_xlat23;
  let x_1645 : vec3<f32> = (vec3<f32>(x_1642, x_1642, x_1642) * x_1644);
  let x_1646 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1645.x, x_1645.y, x_1645.z, x_1646.w);
  let x_1648 : vec3<f32> = u_xlat1;
  let x_1650 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat59 = dot(x_1648, vec3<f32>(x_1650.x, x_1650.y, x_1650.z));
  let x_1653 : f32 = u_xlat59;
  u_xlat59 = clamp(x_1653, 0.0f, 1.0f);
  let x_1655 : f32 = u_xlat59;
  let x_1657 : vec4<f32> = u_xlat4;
  let x_1659 : vec3<f32> = (vec3<f32>(x_1655, x_1655, x_1655) * vec3<f32>(x_1657.x, x_1657.y, x_1657.z));
  let x_1660 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1659.x, x_1659.y, x_1659.z, x_1660.w);
  let x_1663 : f32 = u_xlat0.x;
  u_xlat59 = ((x_1663 * 10.0f) + 1.0f);
  let x_1667 : f32 = u_xlat59;
  u_xlat59 = exp2(x_1667);
  let x_1669 : vec3<f32> = u_xlat2;
  let x_1670 : f32 = u_xlat58;
  let x_1674 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1676 : vec3<f32> = ((x_1669 * vec3<f32>(x_1670, x_1670, x_1670)) + vec3<f32>(x_1674.x, x_1674.y, x_1674.z));
  let x_1677 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1676.x, x_1676.y, x_1676.z, x_1677.w);
  let x_1679 : vec4<f32> = u_xlat6;
  let x_1681 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec3<f32>(x_1679.x, x_1679.y, x_1679.z), vec3<f32>(x_1681.x, x_1681.y, x_1681.z));
  let x_1684 : f32 = u_xlat61;
  u_xlat61 = max(x_1684, 1.17549435e-37f);
  let x_1686 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_1686);
  let x_1688 : f32 = u_xlat61;
  let x_1690 : vec4<f32> = u_xlat6;
  let x_1692 : vec3<f32> = (vec3<f32>(x_1688, x_1688, x_1688) * vec3<f32>(x_1690.x, x_1690.y, x_1690.z));
  let x_1693 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
  let x_1695 : vec3<f32> = u_xlat1;
  let x_1696 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(x_1695, vec3<f32>(x_1696.x, x_1696.y, x_1696.z));
  let x_1699 : f32 = u_xlat61;
  u_xlat61 = clamp(x_1699, 0.0f, 1.0f);
  let x_1701 : f32 = u_xlat61;
  u_xlat61 = log2(x_1701);
  let x_1703 : f32 = u_xlat59;
  let x_1704 : f32 = u_xlat61;
  u_xlat61 = (x_1703 * x_1704);
  let x_1706 : f32 = u_xlat61;
  u_xlat61 = exp2(x_1706);
  let x_1708 : f32 = u_xlat61;
  let x_1711 : vec4<f32> = x_56.x_SpecColor;
  let x_1713 : vec3<f32> = (vec3<f32>(x_1708, x_1708, x_1708) * vec3<f32>(x_1711.x, x_1711.y, x_1711.z));
  let x_1714 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1713.x, x_1713.y, x_1713.z, x_1714.w);
  let x_1716 : vec4<f32> = u_xlat4;
  let x_1718 : vec4<f32> = u_xlat6;
  let x_1720 : vec3<f32> = (vec3<f32>(x_1716.x, x_1716.y, x_1716.z) * vec3<f32>(x_1718.x, x_1718.y, x_1718.z));
  let x_1721 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1721.w);
  let x_1723 : vec4<f32> = u_xlat5;
  let x_1725 : vec4<f32> = u_xlat0;
  let x_1728 : vec4<f32> = u_xlat4;
  let x_1730 : vec3<f32> = ((vec3<f32>(x_1723.x, x_1723.y, x_1723.z) * vec3<f32>(x_1725.y, x_1725.z, x_1725.w)) + vec3<f32>(x_1728.x, x_1728.y, x_1728.z));
  let x_1731 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1730.x, x_1730.y, x_1730.z, x_1731.w);
  let x_1734 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1736 : f32 = x_93.unity_LightData.y;
  u_xlat61 = min(x_1734, x_1736);
  let x_1740 : f32 = u_xlat61;
  u_xlatu61 = bitcast<u32>(i32(x_1740));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1752 : u32 = u_xlatu_loop_1;
    let x_1753 : u32 = u_xlatu61;
    if ((x_1752 < x_1753)) {
    } else {
      break;
    }
    let x_1756 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1756 >> 2u);
    let x_1760 : u32 = u_xlatu_loop_1;
    u_xlati25 = bitcast<i32>((x_1760 & 3u));
    let x_1763 : u32 = u_xlatu6;
    let x_1766 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_1763)];
    let x_1776 : i32 = u_xlati25;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1781 : vec4<u32> = indexable[x_1776];
    u_xlat6.x = dot(x_1766, bitcast<vec4<f32>>(x_1781));
    let x_1787 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1787);
    let x_1789 : vec3<f32> = vs_TEXCOORD1;
    let x_1801 : i32 = u_xlati6;
    let x_1803 : vec4<f32> = x_1800.x_AdditionalLightsPosition[x_1801];
    let x_1806 : i32 = u_xlati6;
    let x_1808 : vec4<f32> = x_1800.x_AdditionalLightsPosition[x_1806];
    u_xlat25 = ((-(x_1789) * vec3<f32>(x_1803.w, x_1803.w, x_1803.w)) + vec3<f32>(x_1808.x, x_1808.y, x_1808.z));
    let x_1811 : vec3<f32> = u_xlat25;
    let x_1812 : vec3<f32> = u_xlat25;
    u_xlat7.x = dot(x_1811, x_1812);
    let x_1816 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_1816, 6.10351562e-05f);
    let x_1822 : f32 = u_xlat7.x;
    u_xlat26.x = inverseSqrt(x_1822);
    let x_1825 : vec3<f32> = u_xlat25;
    let x_1826 : vec3<f32> = u_xlat26;
    u_xlat25 = (x_1825 * vec3<f32>(x_1826.x, x_1826.x, x_1826.x));
    let x_1830 : f32 = u_xlat7.x;
    u_xlat26.x = (1.0f / x_1830);
    let x_1834 : f32 = u_xlat7.x;
    let x_1835 : i32 = u_xlati6;
    let x_1837 : f32 = x_1800.x_AdditionalLightsAttenuation[x_1835].x;
    u_xlat7.x = (x_1834 * x_1837);
    let x_1841 : f32 = u_xlat7.x;
    let x_1844 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_1841) * x_1844) + 1.0f);
    let x_1849 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_1849, 0.0f);
    let x_1853 : f32 = u_xlat7.x;
    let x_1855 : f32 = u_xlat7.x;
    u_xlat7.x = (x_1853 * x_1855);
    let x_1859 : f32 = u_xlat7.x;
    let x_1861 : f32 = u_xlat26.x;
    u_xlat7.x = (x_1859 * x_1861);
    let x_1864 : i32 = u_xlati6;
    let x_1866 : vec4<f32> = x_1800.x_AdditionalLightsSpotDir[x_1864];
    let x_1868 : vec3<f32> = u_xlat25;
    u_xlat26.x = dot(vec3<f32>(x_1866.x, x_1866.y, x_1866.z), x_1868);
    let x_1872 : f32 = u_xlat26.x;
    let x_1873 : i32 = u_xlati6;
    let x_1875 : f32 = x_1800.x_AdditionalLightsAttenuation[x_1873].z;
    let x_1877 : i32 = u_xlati6;
    let x_1879 : f32 = x_1800.x_AdditionalLightsAttenuation[x_1877].w;
    u_xlat26.x = ((x_1872 * x_1875) + x_1879);
    let x_1883 : f32 = u_xlat26.x;
    u_xlat26.x = clamp(x_1883, 0.0f, 1.0f);
    let x_1887 : f32 = u_xlat26.x;
    let x_1889 : f32 = u_xlat26.x;
    u_xlat26.x = (x_1887 * x_1889);
    let x_1893 : f32 = u_xlat26.x;
    let x_1895 : f32 = u_xlat7.x;
    u_xlat7.x = (x_1893 * x_1895);
    let x_1898 : f32 = u_xlat60;
    let x_1900 : i32 = u_xlati6;
    let x_1902 : vec4<f32> = x_1800.x_AdditionalLightsColor[x_1900];
    u_xlat26 = (vec3<f32>(x_1898, x_1898, x_1898) * vec3<f32>(x_1902.x, x_1902.y, x_1902.z));
    let x_1905 : vec4<f32> = u_xlat7;
    let x_1907 : vec3<f32> = u_xlat26;
    let x_1908 : vec3<f32> = (vec3<f32>(x_1905.x, x_1905.x, x_1905.x) * x_1907);
    let x_1909 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1908.x, x_1908.y, x_1908.z, x_1909.w);
    let x_1911 : vec3<f32> = u_xlat1;
    let x_1912 : vec3<f32> = u_xlat25;
    u_xlat6.x = dot(x_1911, x_1912);
    let x_1916 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1916, 0.0f, 1.0f);
    let x_1919 : vec4<f32> = u_xlat6;
    let x_1921 : vec4<f32> = u_xlat7;
    let x_1923 : vec3<f32> = (vec3<f32>(x_1919.x, x_1919.x, x_1919.x) * vec3<f32>(x_1921.x, x_1921.y, x_1921.z));
    let x_1924 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1923.x, x_1923.y, x_1923.z, x_1924.w);
    let x_1926 : vec3<f32> = u_xlat2;
    let x_1927 : f32 = u_xlat58;
    let x_1930 : vec3<f32> = u_xlat25;
    let x_1931 : vec3<f32> = ((x_1926 * vec3<f32>(x_1927, x_1927, x_1927)) + x_1930);
    let x_1932 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1931.x, x_1931.y, x_1931.z, x_1932.w);
    let x_1935 : vec4<f32> = u_xlat6;
    let x_1937 : vec4<f32> = u_xlat6;
    u_xlat63 = dot(vec3<f32>(x_1935.x, x_1935.y, x_1935.z), vec3<f32>(x_1937.x, x_1937.y, x_1937.z));
    let x_1940 : f32 = u_xlat63;
    u_xlat63 = max(x_1940, 1.17549435e-37f);
    let x_1942 : f32 = u_xlat63;
    u_xlat63 = inverseSqrt(x_1942);
    let x_1944 : f32 = u_xlat63;
    let x_1946 : vec4<f32> = u_xlat6;
    let x_1948 : vec3<f32> = (vec3<f32>(x_1944, x_1944, x_1944) * vec3<f32>(x_1946.x, x_1946.y, x_1946.z));
    let x_1949 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1948.x, x_1948.y, x_1948.z, x_1949.w);
    let x_1951 : vec3<f32> = u_xlat1;
    let x_1952 : vec4<f32> = u_xlat6;
    u_xlat6.x = dot(x_1951, vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
    let x_1957 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1957, 0.0f, 1.0f);
    let x_1961 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_1961);
    let x_1964 : f32 = u_xlat59;
    let x_1966 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1964 * x_1966);
    let x_1970 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_1970);
    let x_1973 : vec4<f32> = u_xlat6;
    let x_1976 : vec4<f32> = x_56.x_SpecColor;
    let x_1978 : vec3<f32> = (vec3<f32>(x_1973.x, x_1973.x, x_1973.x) * vec3<f32>(x_1976.x, x_1976.y, x_1976.z));
    let x_1979 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
    let x_1981 : vec4<f32> = u_xlat6;
    let x_1983 : vec4<f32> = u_xlat7;
    let x_1985 : vec3<f32> = (vec3<f32>(x_1981.x, x_1981.y, x_1981.z) * vec3<f32>(x_1983.x, x_1983.y, x_1983.z));
    let x_1986 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1985.x, x_1985.y, x_1985.z, x_1986.w);
    let x_1988 : vec4<f32> = u_xlat8;
    let x_1990 : vec4<f32> = u_xlat0;
    let x_1993 : vec4<f32> = u_xlat6;
    let x_1995 : vec3<f32> = ((vec3<f32>(x_1988.x, x_1988.y, x_1988.z) * vec3<f32>(x_1990.y, x_1990.z, x_1990.w)) + vec3<f32>(x_1993.x, x_1993.y, x_1993.z));
    let x_1996 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1995.x, x_1995.y, x_1995.z, x_1996.w);
    let x_1998 : vec4<f32> = u_xlat5;
    let x_2000 : vec4<f32> = u_xlat6;
    let x_2002 : vec3<f32> = (vec3<f32>(x_1998.x, x_1998.y, x_1998.z) + vec3<f32>(x_2000.x, x_2000.y, x_2000.z));
    let x_2003 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2002.x, x_2002.y, x_2002.z, x_2003.w);

    continuing {
      let x_2005 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2005 + bitcast<u32>(1i));
    }
  }
  let x_2008 : vec3<f32> = u_xlat3;
  let x_2009 : vec4<f32> = u_xlat0;
  let x_2012 : vec4<f32> = u_xlat4;
  u_xlat19 = ((x_2008 * vec3<f32>(x_2009.y, x_2009.z, x_2009.w)) + vec3<f32>(x_2012.x, x_2012.y, x_2012.z));
  let x_2017 : vec4<f32> = u_xlat5;
  let x_2019 : vec3<f32> = u_xlat19;
  let x_2020 : vec3<f32> = (vec3<f32>(x_2017.x, x_2017.y, x_2017.z) + x_2019);
  let x_2021 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2020.x, x_2020.y, x_2020.z, x_2021.w);
  let x_2025 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2025 == 1.0f);
  let x_2027 : bool = u_xlatb19;
  if (x_2027) {
    let x_2032 : f32 = u_xlat0.x;
    x_2028 = x_2032;
  } else {
    x_2028 = 1.0f;
  }
  let x_2034 : f32 = x_2028;
  SV_Target0.w = x_2034;
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

