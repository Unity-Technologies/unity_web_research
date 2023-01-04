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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
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

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_EmissionMap : sampler;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_106 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_198 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2197 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlatb68 : bool;
  var x_112 : f32;
  var u_xlatb66 : bool;
  var u_xlat68 : f32;
  var u_xlat4 : vec3<f32>;
  var x_175 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu66 : u32;
  var u_xlati66 : i32;
  var u_xlat69 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlat72 : f32;
  var u_xlat29 : f32;
  var u_xlatb51 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlatb73 : bool;
  var u_xlat52 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat73 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat30 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat31 : vec3<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat32 : vec2<f32>;
  var u_xlat60 : vec2<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var u_xlat21 : vec4<f32>;
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
  var u_xlatb27 : bool;
  var u_xlatb49 : bool;
  var x_1846 : f32;
  var u_xlat27 : f32;
  var u_xlat49 : f32;
  var u_xlatu68 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu70 : u32;
  var u_xlati73 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati70 : i32;
  var u_xlat74 : f32;
  var u_xlat75 : f32;
  var u_xlatb0 : bool;
  var x_2444 : f32;
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
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_73 : f32 = x_44.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(x_EmissionMap, sampler_EmissionMap, x_71, x_73);
  u_xlat2 = vec3<f32>(x_74.x, x_74.y, x_74.z);
  let x_77 : vec4<f32> = hlslcc_FragCoord;
  let x_81 : f32 = x_44.x_DitheringTextureInvSize;
  let x_83 : vec2<f32> = (vec2<f32>(x_77.x, x_77.y) * vec2<f32>(x_81, x_81));
  let x_84 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_83.x, x_83.y, x_84.z);
  let x_93 : vec3<f32> = u_xlat3;
  let x_96 : f32 = x_44.x_GlobalMipBias.x;
  let x_97 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_93.x, x_93.y), x_96);
  u_xlat66 = x_97.w;
  let x_108 : f32 = x_106.unity_LODFade.x;
  u_xlatb68 = (x_108 >= 0.0f);
  let x_111 : bool = u_xlatb68;
  if (x_111) {
    let x_115 : f32 = u_xlat66;
    x_112 = abs(x_115);
  } else {
    let x_118 : f32 = u_xlat66;
    x_112 = -(abs(x_118));
  }
  let x_121 : f32 = x_112;
  u_xlat66 = x_121;
  let x_122 : f32 = u_xlat66;
  let x_125 : f32 = x_106.unity_LODFade.x;
  u_xlat66 = (-(x_122) + x_125);
  let x_128 : f32 = u_xlat66;
  u_xlatb66 = (x_128 < 0.0f);
  let x_130 : bool = u_xlatb66;
  if (((select(0i, 1i, x_130) * -1i) != 0i)) {
    discard;
  }
  let x_141 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb66 = (x_141 == 0.0f);
  let x_145 : vec3<f32> = vs_TEXCOORD1;
  let x_150 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_145) + x_150);
  let x_153 : vec3<f32> = u_xlat3;
  let x_154 : vec3<f32> = u_xlat3;
  u_xlat68 = dot(x_153, x_154);
  let x_156 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_156);
  let x_158 : f32 = u_xlat68;
  let x_160 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_158, x_158, x_158) * x_160);
  let x_165 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_165;
  let x_168 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_168;
  let x_172 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_172;
  let x_174 : bool = u_xlatb66;
  if (x_174) {
    let x_178 : vec3<f32> = u_xlat3;
    x_175 = x_178;
  } else {
    let x_180 : vec3<f32> = u_xlat4;
    x_175 = x_180;
  }
  let x_181 : vec3<f32> = x_175;
  u_xlat3 = x_181;
  let x_183 : vec3<f32> = vs_TEXCOORD2;
  let x_184 : vec3<f32> = vs_TEXCOORD2;
  u_xlat66 = dot(x_183, x_184);
  let x_186 : f32 = u_xlat66;
  u_xlat66 = inverseSqrt(x_186);
  let x_188 : f32 = u_xlat66;
  let x_190 : vec3<f32> = vs_TEXCOORD2;
  u_xlat4 = (vec3<f32>(x_188, x_188, x_188) * x_190);
  let x_193 : vec3<f32> = vs_TEXCOORD1;
  let x_200 : vec4<f32> = x_198.x_CascadeShadowSplitSpheres0;
  let x_203 : vec3<f32> = (x_193 + -(vec3<f32>(x_200.x, x_200.y, x_200.z)));
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : vec3<f32> = vs_TEXCOORD1;
  let x_209 : vec4<f32> = x_198.x_CascadeShadowSplitSpheres1;
  let x_212 : vec3<f32> = (x_207 + -(vec3<f32>(x_209.x, x_209.y, x_209.z)));
  let x_213 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_216 : vec3<f32> = vs_TEXCOORD1;
  let x_219 : vec4<f32> = x_198.x_CascadeShadowSplitSpheres2;
  u_xlat7 = (x_216 + -(vec3<f32>(x_219.x, x_219.y, x_219.z)));
  let x_224 : vec3<f32> = vs_TEXCOORD1;
  let x_227 : vec4<f32> = x_198.x_CascadeShadowSplitSpheres3;
  let x_230 : vec3<f32> = (x_224 + -(vec3<f32>(x_227.x, x_227.y, x_227.z)));
  let x_231 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec4<f32> = u_xlat5;
  let x_235 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_233.x, x_233.y, x_233.z), vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_239 : vec4<f32> = u_xlat6;
  let x_241 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_239.x, x_239.y, x_239.z), vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_245 : vec3<f32> = u_xlat7;
  let x_246 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_245, x_246);
  let x_249 : vec4<f32> = u_xlat8;
  let x_251 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_249.x, x_249.y, x_249.z), vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_258 : vec4<f32> = u_xlat5;
  let x_261 : vec4<f32> = x_198.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_258 < x_261);
  let x_264 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_264);
  let x_268 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_268);
  let x_272 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_272);
  let x_276 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_276);
  let x_280 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_280);
  let x_286 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_286);
  let x_290 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_290);
  let x_293 : vec4<f32> = u_xlat5;
  let x_295 : vec4<f32> = u_xlat6;
  let x_297 : vec3<f32> = (vec3<f32>(x_293.x, x_293.y, x_293.z) + vec3<f32>(x_295.y, x_295.z, x_295.w));
  let x_298 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat5;
  let x_303 : vec3<f32> = max(vec3<f32>(x_300.x, x_300.y, x_300.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_304 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_304.x, x_303.x, x_303.y, x_303.z);
  let x_306 : vec4<f32> = u_xlat6;
  u_xlat66 = dot(x_306, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_312 : f32 = u_xlat66;
  u_xlat66 = (-(x_312) + 4.0f);
  let x_317 : f32 = u_xlat66;
  u_xlatu66 = u32(x_317);
  let x_321 : u32 = u_xlatu66;
  u_xlati66 = (bitcast<i32>(x_321) << bitcast<u32>(2i));
  let x_324 : vec3<f32> = vs_TEXCOORD1;
  let x_326 : i32 = u_xlati66;
  let x_329 : i32 = u_xlati66;
  let x_333 : vec4<f32> = x_198.x_MainLightWorldToShadow[((x_326 + 1i) / 4i)][((x_329 + 1i) % 4i)];
  let x_335 : vec3<f32> = (vec3<f32>(x_324.y, x_324.y, x_324.y) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : i32 = u_xlati66;
  let x_340 : i32 = u_xlati66;
  let x_343 : vec4<f32> = x_198.x_MainLightWorldToShadow[(x_338 / 4i)][(x_340 % 4i)];
  let x_345 : vec3<f32> = vs_TEXCOORD1;
  let x_348 : vec4<f32> = u_xlat5;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.x, x_345.x)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : i32 = u_xlati66;
  let x_356 : i32 = u_xlati66;
  let x_360 : vec4<f32> = x_198.x_MainLightWorldToShadow[((x_353 + 2i) / 4i)][((x_356 + 2i) % 4i)];
  let x_362 : vec3<f32> = vs_TEXCOORD1;
  let x_365 : vec4<f32> = u_xlat5;
  let x_367 : vec3<f32> = ((vec3<f32>(x_360.x, x_360.y, x_360.z) * vec3<f32>(x_362.z, x_362.z, x_362.z)) + vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat5;
  let x_372 : i32 = u_xlati66;
  let x_375 : i32 = u_xlati66;
  let x_379 : vec4<f32> = x_198.x_MainLightWorldToShadow[((x_372 + 3i) / 4i)][((x_375 + 3i) % 4i)];
  let x_381 : vec3<f32> = (vec3<f32>(x_370.x, x_370.y, x_370.z) + vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_385 : f32 = vs_TEXCOORD1.y;
  let x_387 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat66 = (x_385 * x_387);
  let x_390 : f32 = x_44.unity_MatrixV[0i].z;
  let x_392 : f32 = vs_TEXCOORD1.x;
  let x_394 : f32 = u_xlat66;
  u_xlat66 = ((x_390 * x_392) + x_394);
  let x_397 : f32 = x_44.unity_MatrixV[2i].z;
  let x_399 : f32 = vs_TEXCOORD1.z;
  let x_401 : f32 = u_xlat66;
  u_xlat66 = ((x_397 * x_399) + x_401);
  let x_403 : f32 = u_xlat66;
  let x_405 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat66 = (x_403 + x_405);
  let x_407 : f32 = u_xlat66;
  let x_411 : f32 = x_44.x_ProjectionParams.y;
  u_xlat66 = (-(x_407) + -(x_411));
  let x_414 : f32 = u_xlat66;
  u_xlat66 = max(x_414, 0.0f);
  let x_416 : f32 = u_xlat66;
  let x_419 : f32 = x_44.unity_FogParams.x;
  u_xlat66 = (x_416 * x_419);
  let x_427 : vec2<f32> = vs_TEXCOORD8;
  let x_429 : f32 = x_44.x_GlobalMipBias.x;
  let x_430 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_427, x_429);
  let x_431 : vec3<f32> = vec3<f32>(x_430.x, x_430.y, x_430.z);
  let x_432 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_437 : vec2<f32> = vec2<f32>(x_436.x, x_436.y);
  let x_441 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_437.x, x_437.y));
  let x_442 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_441.x, x_441.y, x_442.z);
  let x_444 : vec3<f32> = u_xlat7;
  let x_446 : vec4<f32> = hlslcc_FragCoord;
  let x_448 : vec2<f32> = (vec2<f32>(x_444.x, x_444.y) * vec2<f32>(x_446.x, x_446.y));
  let x_449 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_448.x, x_448.y, x_449.z);
  let x_452 : f32 = u_xlat7.y;
  let x_455 : f32 = x_44.x_ScaleBiasRt.x;
  let x_458 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat68 = ((x_452 * x_455) + x_458);
  let x_460 : f32 = u_xlat68;
  u_xlat7.z = (-(x_460) + 1.0f);
  let x_465 : f32 = x_57.x_Metallic;
  u_xlat68 = ((-(x_465) * 0.959999979f) + 0.959999979f);
  let x_471 : f32 = u_xlat68;
  let x_474 : f32 = x_57.x_Smoothness;
  u_xlat69 = (-(x_471) + x_474);
  let x_477 : vec4<f32> = u_xlat1;
  let x_479 : f32 = u_xlat68;
  u_xlat23 = (vec3<f32>(x_477.y, x_477.z, x_477.w) * vec3<f32>(x_479, x_479, x_479));
  let x_482 : vec4<f32> = u_xlat0;
  let x_485 : vec4<f32> = x_57.x_BaseColor;
  let x_490 : vec3<f32> = ((vec3<f32>(x_482.x, x_482.y, x_482.z) * vec3<f32>(x_485.x, x_485.y, x_485.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_491 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_494 : f32 = x_57.x_Metallic;
  let x_496 : f32 = x_57.x_Metallic;
  let x_498 : f32 = x_57.x_Metallic;
  let x_499 : vec3<f32> = vec3<f32>(x_494, x_496, x_498);
  let x_504 : vec4<f32> = u_xlat0;
  let x_509 : vec3<f32> = ((vec3<f32>(x_499.x, x_499.y, x_499.z) * vec3<f32>(x_504.x, x_504.y, x_504.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_510 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_513 : f32 = x_57.x_Smoothness;
  u_xlat68 = (-(x_513) + 1.0f);
  let x_517 : f32 = u_xlat68;
  let x_518 : f32 = u_xlat68;
  u_xlat70 = (x_517 * x_518);
  let x_520 : f32 = u_xlat70;
  u_xlat70 = max(x_520, 0.0078125f);
  let x_524 : f32 = u_xlat70;
  let x_525 : f32 = u_xlat70;
  u_xlat71 = (x_524 * x_525);
  let x_527 : f32 = u_xlat69;
  u_xlat69 = (x_527 + 1.0f);
  let x_529 : f32 = u_xlat69;
  u_xlat69 = clamp(x_529, 0.0f, 1.0f);
  let x_532 : f32 = u_xlat70;
  u_xlat72 = ((x_532 * 4.0f) + 2.0f);
  let x_540 : vec3<f32> = u_xlat7;
  let x_543 : f32 = x_44.x_GlobalMipBias.x;
  let x_544 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_540.x, x_540.z), x_543);
  u_xlat7.x = x_544.x;
  let x_549 : f32 = u_xlat7.x;
  u_xlat29 = (x_549 + -1.0f);
  let x_552 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_553 : f32 = u_xlat29;
  u_xlat29 = ((x_552 * x_553) + 1.0f);
  let x_557 : f32 = u_xlat7.x;
  u_xlat7.x = min(x_557, 1.0f);
  let x_562 : f32 = x_198.x_MainLightShadowParams.y;
  u_xlatb51 = (0.0f < x_562);
  let x_564 : bool = u_xlatb51;
  if (x_564) {
    let x_568 : f32 = x_198.x_MainLightShadowParams.y;
    u_xlatb51 = (x_568 == 1.0f);
    let x_570 : bool = u_xlatb51;
    if (x_570) {
      let x_573 : vec4<f32> = u_xlat5;
      let x_576 : vec4<f32> = x_198.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_573.x, x_573.y, x_573.x, x_573.y) + x_576);
      let x_579 : vec4<f32> = u_xlat8;
      let x_580 : vec2<f32> = vec2<f32>(x_579.x, x_579.y);
      let x_582 : f32 = u_xlat5.z;
      txVec0 = vec3<f32>(x_580.x, x_580.y, x_582);
      let x_595 : vec3<f32> = txVec0;
      let x_597 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_595.xy, x_595.z);
      u_xlat9.x = x_597;
      let x_600 : vec4<f32> = u_xlat8;
      let x_601 : vec2<f32> = vec2<f32>(x_600.z, x_600.w);
      let x_603 : f32 = u_xlat5.z;
      txVec1 = vec3<f32>(x_601.x, x_601.y, x_603);
      let x_610 : vec3<f32> = txVec1;
      let x_612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_610.xy, x_610.z);
      u_xlat9.y = x_612;
      let x_614 : vec4<f32> = u_xlat5;
      let x_617 : vec4<f32> = x_198.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y) + x_617);
      let x_620 : vec4<f32> = u_xlat8;
      let x_621 : vec2<f32> = vec2<f32>(x_620.x, x_620.y);
      let x_623 : f32 = u_xlat5.z;
      txVec2 = vec3<f32>(x_621.x, x_621.y, x_623);
      let x_630 : vec3<f32> = txVec2;
      let x_632 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_630.xy, x_630.z);
      u_xlat9.z = x_632;
      let x_635 : vec4<f32> = u_xlat8;
      let x_636 : vec2<f32> = vec2<f32>(x_635.z, x_635.w);
      let x_638 : f32 = u_xlat5.z;
      txVec3 = vec3<f32>(x_636.x, x_636.y, x_638);
      let x_645 : vec3<f32> = txVec3;
      let x_647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_645.xy, x_645.z);
      u_xlat9.w = x_647;
      let x_651 : vec4<f32> = u_xlat9;
      u_xlat51.x = dot(x_651, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_659 : f32 = x_198.x_MainLightShadowParams.y;
      u_xlatb73 = (x_659 == 2.0f);
      let x_661 : bool = u_xlatb73;
      if (x_661) {
        let x_664 : vec4<f32> = u_xlat5;
        let x_667 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_672 : vec2<f32> = ((vec2<f32>(x_664.x, x_664.y) * vec2<f32>(x_667.z, x_667.w)) + vec2<f32>(0.5f, 0.5f));
        let x_673 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_672.x, x_672.y, x_673.z, x_673.w);
        let x_675 : vec4<f32> = u_xlat8;
        let x_677 : vec2<f32> = floor(vec2<f32>(x_675.x, x_675.y));
        let x_678 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_677.x, x_677.y, x_678.z, x_678.w);
        let x_681 : vec4<f32> = u_xlat5;
        let x_684 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_687 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_681.x, x_681.y) * vec2<f32>(x_684.z, x_684.w)) + -(vec2<f32>(x_687.x, x_687.y)));
        let x_691 : vec2<f32> = u_xlat52;
        u_xlat9 = (vec4<f32>(x_691.x, x_691.x, x_691.y, x_691.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_696 : vec4<f32> = u_xlat9;
        let x_698 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_696.x, x_696.x, x_696.z, x_696.z) * vec4<f32>(x_698.x, x_698.x, x_698.z, x_698.z));
        let x_701 : vec4<f32> = u_xlat10;
        let x_705 : vec2<f32> = (vec2<f32>(x_701.y, x_701.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_706 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_705.x, x_706.y, x_705.y, x_706.w);
        let x_708 : vec4<f32> = u_xlat10;
        let x_711 : vec2<f32> = u_xlat52;
        let x_713 : vec2<f32> = ((vec2<f32>(x_708.x, x_708.z) * vec2<f32>(0.5f, 0.5f)) + -(x_711));
        let x_714 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_713.x, x_713.y, x_714.z, x_714.w);
        let x_717 : vec2<f32> = u_xlat52;
        u_xlat54 = (-(x_717) + vec2<f32>(1.0f, 1.0f));
        let x_721 : vec2<f32> = u_xlat52;
        let x_723 : vec2<f32> = min(x_721, vec2<f32>(0.0f, 0.0f));
        let x_724 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_723.x, x_723.y, x_724.z, x_724.w);
        let x_726 : vec4<f32> = u_xlat11;
        let x_729 : vec4<f32> = u_xlat11;
        let x_732 : vec2<f32> = u_xlat54;
        let x_733 : vec2<f32> = ((-(vec2<f32>(x_726.x, x_726.y)) * vec2<f32>(x_729.x, x_729.y)) + x_732);
        let x_734 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_733.x, x_733.y, x_734.z, x_734.w);
        let x_736 : vec2<f32> = u_xlat52;
        u_xlat52 = max(x_736, vec2<f32>(0.0f, 0.0f));
        let x_738 : vec2<f32> = u_xlat52;
        let x_740 : vec2<f32> = u_xlat52;
        let x_742 : vec4<f32> = u_xlat9;
        u_xlat52 = ((-(x_738) * x_740) + vec2<f32>(x_742.y, x_742.w));
        let x_745 : vec4<f32> = u_xlat11;
        let x_747 : vec2<f32> = (vec2<f32>(x_745.x, x_745.y) + vec2<f32>(1.0f, 1.0f));
        let x_748 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_747.x, x_747.y, x_748.z, x_748.w);
        let x_750 : vec2<f32> = u_xlat52;
        u_xlat52 = (x_750 + vec2<f32>(1.0f, 1.0f));
        let x_753 : vec4<f32> = u_xlat10;
        let x_757 : vec2<f32> = (vec2<f32>(x_753.x, x_753.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_758 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_757.x, x_757.y, x_758.z, x_758.w);
        let x_760 : vec2<f32> = u_xlat54;
        let x_761 : vec2<f32> = (x_760 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_762 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_761.x, x_761.y, x_762.z, x_762.w);
        let x_764 : vec4<f32> = u_xlat11;
        let x_766 : vec2<f32> = (vec2<f32>(x_764.x, x_764.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_767 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_766.x, x_766.y, x_767.z, x_767.w);
        let x_770 : vec2<f32> = u_xlat52;
        let x_771 : vec2<f32> = (x_770 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_772 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_771.x, x_771.y, x_772.z, x_772.w);
        let x_774 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_774.y, x_774.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_778 : f32 = u_xlat11.x;
        u_xlat12.z = x_778;
        let x_781 : f32 = u_xlat52.x;
        u_xlat12.w = x_781;
        let x_784 : f32 = u_xlat13.x;
        u_xlat10.z = x_784;
        let x_787 : f32 = u_xlat9.x;
        u_xlat10.w = x_787;
        let x_790 : vec4<f32> = u_xlat10;
        let x_792 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_790.z, x_790.w, x_790.x, x_790.z) + vec4<f32>(x_792.z, x_792.w, x_792.x, x_792.z));
        let x_796 : f32 = u_xlat12.y;
        u_xlat11.z = x_796;
        let x_799 : f32 = u_xlat52.y;
        u_xlat11.w = x_799;
        let x_802 : f32 = u_xlat10.y;
        u_xlat13.z = x_802;
        let x_805 : f32 = u_xlat9.z;
        u_xlat13.w = x_805;
        let x_807 : vec4<f32> = u_xlat11;
        let x_809 : vec4<f32> = u_xlat13;
        let x_811 : vec3<f32> = (vec3<f32>(x_807.z, x_807.y, x_807.w) + vec3<f32>(x_809.z, x_809.y, x_809.w));
        let x_812 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
        let x_814 : vec4<f32> = u_xlat10;
        let x_816 : vec4<f32> = u_xlat14;
        let x_818 : vec3<f32> = (vec3<f32>(x_814.x, x_814.z, x_814.w) / vec3<f32>(x_816.z, x_816.w, x_816.y));
        let x_819 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
        let x_821 : vec4<f32> = u_xlat10;
        let x_827 : vec3<f32> = (vec3<f32>(x_821.x, x_821.y, x_821.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_828 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
        let x_830 : vec4<f32> = u_xlat13;
        let x_832 : vec4<f32> = u_xlat9;
        let x_834 : vec3<f32> = (vec3<f32>(x_830.z, x_830.y, x_830.w) / vec3<f32>(x_832.x, x_832.y, x_832.z));
        let x_835 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
        let x_837 : vec4<f32> = u_xlat11;
        let x_839 : vec3<f32> = (vec3<f32>(x_837.x, x_837.y, x_837.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_840 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
        let x_842 : vec4<f32> = u_xlat10;
        let x_845 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_847 : vec3<f32> = (vec3<f32>(x_842.y, x_842.x, x_842.z) * vec3<f32>(x_845.x, x_845.x, x_845.x));
        let x_848 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
        let x_850 : vec4<f32> = u_xlat11;
        let x_853 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_855 : vec3<f32> = (vec3<f32>(x_850.x, x_850.y, x_850.z) * vec3<f32>(x_853.y, x_853.y, x_853.y));
        let x_856 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
        let x_859 : f32 = u_xlat11.x;
        u_xlat10.w = x_859;
        let x_861 : vec4<f32> = u_xlat8;
        let x_864 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_867 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_861.x, x_861.y, x_861.x, x_861.y) * vec4<f32>(x_864.x, x_864.y, x_864.x, x_864.y)) + vec4<f32>(x_867.y, x_867.w, x_867.x, x_867.w));
        let x_870 : vec4<f32> = u_xlat8;
        let x_873 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_876 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_870.x, x_870.y) * vec2<f32>(x_873.x, x_873.y)) + vec2<f32>(x_876.z, x_876.w));
        let x_880 : f32 = u_xlat10.y;
        u_xlat11.w = x_880;
        let x_882 : vec4<f32> = u_xlat11;
        let x_883 : vec2<f32> = vec2<f32>(x_882.y, x_882.z);
        let x_884 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_884.x, x_883.x, x_884.z, x_883.y);
        let x_886 : vec4<f32> = u_xlat8;
        let x_889 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_892 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_886.x, x_886.y, x_886.x, x_886.y) * vec4<f32>(x_889.x, x_889.y, x_889.x, x_889.y)) + vec4<f32>(x_892.x, x_892.y, x_892.z, x_892.y));
        let x_895 : vec4<f32> = u_xlat8;
        let x_898 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_901 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_895.x, x_895.y, x_895.x, x_895.y) * vec4<f32>(x_898.x, x_898.y, x_898.x, x_898.y)) + vec4<f32>(x_901.w, x_901.y, x_901.w, x_901.z));
        let x_904 : vec4<f32> = u_xlat8;
        let x_907 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_910 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_904.x, x_904.y, x_904.x, x_904.y) * vec4<f32>(x_907.x, x_907.y, x_907.x, x_907.y)) + vec4<f32>(x_910.x, x_910.w, x_910.z, x_910.w));
        let x_914 : vec4<f32> = u_xlat9;
        let x_916 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_914.x, x_914.x, x_914.x, x_914.y) * vec4<f32>(x_916.z, x_916.w, x_916.y, x_916.z));
        let x_920 : vec4<f32> = u_xlat9;
        let x_922 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_920.y, x_920.y, x_920.z, x_920.z) * x_922);
        let x_926 : f32 = u_xlat9.z;
        let x_928 : f32 = u_xlat14.y;
        u_xlat73 = (x_926 * x_928);
        let x_931 : vec4<f32> = u_xlat12;
        let x_932 : vec2<f32> = vec2<f32>(x_931.x, x_931.y);
        let x_934 : f32 = u_xlat5.z;
        txVec4 = vec3<f32>(x_932.x, x_932.y, x_934);
        let x_941 : vec3<f32> = txVec4;
        let x_943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_941.xy, x_941.z);
        u_xlat8.x = x_943;
        let x_946 : vec4<f32> = u_xlat12;
        let x_947 : vec2<f32> = vec2<f32>(x_946.z, x_946.w);
        let x_949 : f32 = u_xlat5.z;
        txVec5 = vec3<f32>(x_947.x, x_947.y, x_949);
        let x_957 : vec3<f32> = txVec5;
        let x_959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_957.xy, x_957.z);
        u_xlat30 = x_959;
        let x_960 : f32 = u_xlat30;
        let x_962 : f32 = u_xlat15.y;
        u_xlat30 = (x_960 * x_962);
        let x_965 : f32 = u_xlat15.x;
        let x_967 : f32 = u_xlat8.x;
        let x_969 : f32 = u_xlat30;
        u_xlat8.x = ((x_965 * x_967) + x_969);
        let x_973 : vec2<f32> = u_xlat52;
        let x_975 : f32 = u_xlat5.z;
        txVec6 = vec3<f32>(x_973.x, x_973.y, x_975);
        let x_982 : vec3<f32> = txVec6;
        let x_984 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_982.xy, x_982.z);
        u_xlat30 = x_984;
        let x_986 : f32 = u_xlat15.z;
        let x_987 : f32 = u_xlat30;
        let x_990 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_986 * x_987) + x_990);
        let x_994 : vec4<f32> = u_xlat11;
        let x_995 : vec2<f32> = vec2<f32>(x_994.x, x_994.y);
        let x_997 : f32 = u_xlat5.z;
        txVec7 = vec3<f32>(x_995.x, x_995.y, x_997);
        let x_1004 : vec3<f32> = txVec7;
        let x_1006 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1004.xy, x_1004.z);
        u_xlat30 = x_1006;
        let x_1008 : f32 = u_xlat15.w;
        let x_1009 : f32 = u_xlat30;
        let x_1012 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1008 * x_1009) + x_1012);
        let x_1016 : vec4<f32> = u_xlat13;
        let x_1017 : vec2<f32> = vec2<f32>(x_1016.x, x_1016.y);
        let x_1019 : f32 = u_xlat5.z;
        txVec8 = vec3<f32>(x_1017.x, x_1017.y, x_1019);
        let x_1026 : vec3<f32> = txVec8;
        let x_1028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1026.xy, x_1026.z);
        u_xlat30 = x_1028;
        let x_1030 : f32 = u_xlat16.x;
        let x_1031 : f32 = u_xlat30;
        let x_1034 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1030 * x_1031) + x_1034);
        let x_1038 : vec4<f32> = u_xlat13;
        let x_1039 : vec2<f32> = vec2<f32>(x_1038.z, x_1038.w);
        let x_1041 : f32 = u_xlat5.z;
        txVec9 = vec3<f32>(x_1039.x, x_1039.y, x_1041);
        let x_1048 : vec3<f32> = txVec9;
        let x_1050 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1048.xy, x_1048.z);
        u_xlat30 = x_1050;
        let x_1052 : f32 = u_xlat16.y;
        let x_1053 : f32 = u_xlat30;
        let x_1056 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1052 * x_1053) + x_1056);
        let x_1060 : vec4<f32> = u_xlat11;
        let x_1061 : vec2<f32> = vec2<f32>(x_1060.z, x_1060.w);
        let x_1063 : f32 = u_xlat5.z;
        txVec10 = vec3<f32>(x_1061.x, x_1061.y, x_1063);
        let x_1070 : vec3<f32> = txVec10;
        let x_1072 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1070.xy, x_1070.z);
        u_xlat30 = x_1072;
        let x_1074 : f32 = u_xlat16.z;
        let x_1075 : f32 = u_xlat30;
        let x_1078 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1074 * x_1075) + x_1078);
        let x_1082 : vec4<f32> = u_xlat10;
        let x_1083 : vec2<f32> = vec2<f32>(x_1082.x, x_1082.y);
        let x_1085 : f32 = u_xlat5.z;
        txVec11 = vec3<f32>(x_1083.x, x_1083.y, x_1085);
        let x_1092 : vec3<f32> = txVec11;
        let x_1094 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1092.xy, x_1092.z);
        u_xlat30 = x_1094;
        let x_1096 : f32 = u_xlat16.w;
        let x_1097 : f32 = u_xlat30;
        let x_1100 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1096 * x_1097) + x_1100);
        let x_1104 : vec4<f32> = u_xlat10;
        let x_1105 : vec2<f32> = vec2<f32>(x_1104.z, x_1104.w);
        let x_1107 : f32 = u_xlat5.z;
        txVec12 = vec3<f32>(x_1105.x, x_1105.y, x_1107);
        let x_1114 : vec3<f32> = txVec12;
        let x_1116 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1114.xy, x_1114.z);
        u_xlat30 = x_1116;
        let x_1117 : f32 = u_xlat73;
        let x_1118 : f32 = u_xlat30;
        let x_1121 : f32 = u_xlat8.x;
        u_xlat51.x = ((x_1117 * x_1118) + x_1121);
      } else {
        let x_1125 : vec4<f32> = u_xlat5;
        let x_1128 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_1131 : vec2<f32> = ((vec2<f32>(x_1125.x, x_1125.y) * vec2<f32>(x_1128.z, x_1128.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1132 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1131.x, x_1131.y, x_1132.z, x_1132.w);
        let x_1134 : vec4<f32> = u_xlat8;
        let x_1136 : vec2<f32> = floor(vec2<f32>(x_1134.x, x_1134.y));
        let x_1137 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1136.x, x_1136.y, x_1137.z, x_1137.w);
        let x_1139 : vec4<f32> = u_xlat5;
        let x_1142 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_1145 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1139.x, x_1139.y) * vec2<f32>(x_1142.z, x_1142.w)) + -(vec2<f32>(x_1145.x, x_1145.y)));
        let x_1149 : vec2<f32> = u_xlat52;
        u_xlat9 = (vec4<f32>(x_1149.x, x_1149.x, x_1149.y, x_1149.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1152 : vec4<f32> = u_xlat9;
        let x_1154 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1152.x, x_1152.x, x_1152.z, x_1152.z) * vec4<f32>(x_1154.x, x_1154.x, x_1154.z, x_1154.z));
        let x_1157 : vec4<f32> = u_xlat10;
        let x_1161 : vec2<f32> = (vec2<f32>(x_1157.y, x_1157.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1162 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1162.x, x_1161.x, x_1162.z, x_1161.y);
        let x_1164 : vec4<f32> = u_xlat10;
        let x_1167 : vec2<f32> = u_xlat52;
        let x_1169 : vec2<f32> = ((vec2<f32>(x_1164.x, x_1164.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1167));
        let x_1170 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1169.x, x_1170.y, x_1169.y, x_1170.w);
        let x_1172 : vec2<f32> = u_xlat52;
        let x_1174 : vec2<f32> = (-(x_1172) + vec2<f32>(1.0f, 1.0f));
        let x_1175 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1174.x, x_1174.y, x_1175.z, x_1175.w);
        let x_1177 : vec2<f32> = u_xlat52;
        u_xlat54 = min(x_1177, vec2<f32>(0.0f, 0.0f));
        let x_1179 : vec2<f32> = u_xlat54;
        let x_1181 : vec2<f32> = u_xlat54;
        let x_1183 : vec4<f32> = u_xlat10;
        let x_1185 : vec2<f32> = ((-(x_1179) * x_1181) + vec2<f32>(x_1183.x, x_1183.y));
        let x_1186 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1185.x, x_1185.y, x_1186.z, x_1186.w);
        let x_1188 : vec2<f32> = u_xlat52;
        u_xlat54 = max(x_1188, vec2<f32>(0.0f, 0.0f));
        let x_1191 : vec2<f32> = u_xlat54;
        let x_1193 : vec2<f32> = u_xlat54;
        let x_1195 : vec4<f32> = u_xlat9;
        let x_1197 : vec2<f32> = ((-(x_1191) * x_1193) + vec2<f32>(x_1195.y, x_1195.w));
        let x_1198 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1197.x, x_1198.y, x_1197.y);
        let x_1200 : vec4<f32> = u_xlat10;
        let x_1203 : vec2<f32> = (vec2<f32>(x_1200.x, x_1200.y) + vec2<f32>(2.0f, 2.0f));
        let x_1204 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1203.x, x_1203.y, x_1204.z, x_1204.w);
        let x_1206 : vec3<f32> = u_xlat31;
        let x_1208 : vec2<f32> = (vec2<f32>(x_1206.x, x_1206.z) + vec2<f32>(2.0f, 2.0f));
        let x_1209 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1209.x, x_1208.x, x_1209.z, x_1208.y);
        let x_1212 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1212 * 0.081632003f);
        let x_1216 : vec4<f32> = u_xlat9;
        let x_1219 : vec3<f32> = (vec3<f32>(x_1216.z, x_1216.x, x_1216.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1220 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
        let x_1222 : vec4<f32> = u_xlat10;
        let x_1225 : vec2<f32> = (vec2<f32>(x_1222.x, x_1222.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1226 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1225.x, x_1225.y, x_1226.z, x_1226.w);
        let x_1229 : f32 = u_xlat13.y;
        u_xlat12.x = x_1229;
        let x_1231 : vec2<f32> = u_xlat52;
        let x_1238 : vec2<f32> = ((vec2<f32>(x_1231.x, x_1231.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1239 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1239.x, x_1238.x, x_1239.z, x_1238.y);
        let x_1241 : vec2<f32> = u_xlat52;
        let x_1245 : vec2<f32> = ((vec2<f32>(x_1241.x, x_1241.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1246 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1245.x, x_1246.y, x_1245.y, x_1246.w);
        let x_1249 : f32 = u_xlat9.x;
        u_xlat10.y = x_1249;
        let x_1252 : f32 = u_xlat11.y;
        u_xlat10.w = x_1252;
        let x_1254 : vec4<f32> = u_xlat10;
        let x_1255 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1254 + x_1255);
        let x_1257 : vec2<f32> = u_xlat52;
        let x_1260 : vec2<f32> = ((vec2<f32>(x_1257.y, x_1257.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1261 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1261.x, x_1260.x, x_1261.z, x_1260.y);
        let x_1263 : vec2<f32> = u_xlat52;
        let x_1266 : vec2<f32> = ((vec2<f32>(x_1263.y, x_1263.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1267 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1266.x, x_1267.y, x_1266.y, x_1267.w);
        let x_1270 : f32 = u_xlat9.y;
        u_xlat11.y = x_1270;
        let x_1272 : vec4<f32> = u_xlat11;
        let x_1273 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1272 + x_1273);
        let x_1275 : vec4<f32> = u_xlat10;
        let x_1276 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1275 / x_1276);
        let x_1278 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1278 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1284 : vec4<f32> = u_xlat11;
        let x_1285 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1284 / x_1285);
        let x_1287 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1287 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1289 : vec4<f32> = u_xlat10;
        let x_1292 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1289.w, x_1289.x, x_1289.y, x_1289.z) * vec4<f32>(x_1292.x, x_1292.x, x_1292.x, x_1292.x));
        let x_1295 : vec4<f32> = u_xlat11;
        let x_1298 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1295.x, x_1295.w, x_1295.y, x_1295.z) * vec4<f32>(x_1298.y, x_1298.y, x_1298.y, x_1298.y));
        let x_1301 : vec4<f32> = u_xlat10;
        let x_1302 : vec3<f32> = vec3<f32>(x_1301.y, x_1301.z, x_1301.w);
        let x_1303 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1302.x, x_1303.y, x_1302.y, x_1302.z);
        let x_1306 : f32 = u_xlat11.x;
        u_xlat13.y = x_1306;
        let x_1308 : vec4<f32> = u_xlat8;
        let x_1311 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_1314 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1308.x, x_1308.y, x_1308.x, x_1308.y) * vec4<f32>(x_1311.x, x_1311.y, x_1311.x, x_1311.y)) + vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1314.y));
        let x_1317 : vec4<f32> = u_xlat8;
        let x_1320 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_1323 : vec4<f32> = u_xlat13;
        u_xlat52 = ((vec2<f32>(x_1317.x, x_1317.y) * vec2<f32>(x_1320.x, x_1320.y)) + vec2<f32>(x_1323.w, x_1323.y));
        let x_1327 : f32 = u_xlat13.y;
        u_xlat10.y = x_1327;
        let x_1330 : f32 = u_xlat11.z;
        u_xlat13.y = x_1330;
        let x_1332 : vec4<f32> = u_xlat8;
        let x_1335 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_1338 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1332.x, x_1332.y, x_1332.x, x_1332.y) * vec4<f32>(x_1335.x, x_1335.y, x_1335.x, x_1335.y)) + vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1338.y));
        let x_1341 : vec4<f32> = u_xlat8;
        let x_1344 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_1347 : vec4<f32> = u_xlat13;
        let x_1349 : vec2<f32> = ((vec2<f32>(x_1341.x, x_1341.y) * vec2<f32>(x_1344.x, x_1344.y)) + vec2<f32>(x_1347.w, x_1347.y));
        let x_1350 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1349.x, x_1349.y, x_1350.z, x_1350.w);
        let x_1353 : f32 = u_xlat13.y;
        u_xlat10.z = x_1353;
        let x_1356 : vec4<f32> = u_xlat8;
        let x_1359 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_1362 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1356.x, x_1356.y, x_1356.x, x_1356.y) * vec4<f32>(x_1359.x, x_1359.y, x_1359.x, x_1359.y)) + vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.z));
        let x_1366 : f32 = u_xlat11.w;
        u_xlat13.y = x_1366;
        let x_1369 : vec4<f32> = u_xlat8;
        let x_1372 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_1375 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1369.x, x_1369.y, x_1369.x, x_1369.y) * vec4<f32>(x_1372.x, x_1372.y, x_1372.x, x_1372.y)) + vec4<f32>(x_1375.x, x_1375.y, x_1375.z, x_1375.y));
        let x_1379 : vec4<f32> = u_xlat8;
        let x_1382 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_1385 : vec4<f32> = u_xlat13;
        u_xlat32 = ((vec2<f32>(x_1379.x, x_1379.y) * vec2<f32>(x_1382.x, x_1382.y)) + vec2<f32>(x_1385.w, x_1385.y));
        let x_1389 : f32 = u_xlat13.y;
        u_xlat10.w = x_1389;
        let x_1392 : vec4<f32> = u_xlat8;
        let x_1395 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_1398 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1392.x, x_1392.y) * vec2<f32>(x_1395.x, x_1395.y)) + vec2<f32>(x_1398.x, x_1398.w));
        let x_1401 : vec4<f32> = u_xlat13;
        let x_1402 : vec3<f32> = vec3<f32>(x_1401.x, x_1401.z, x_1401.w);
        let x_1403 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1402.x, x_1403.y, x_1402.y, x_1402.z);
        let x_1405 : vec4<f32> = u_xlat8;
        let x_1408 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_1411 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1405.x, x_1405.y, x_1405.x, x_1405.y) * vec4<f32>(x_1408.x, x_1408.y, x_1408.x, x_1408.y)) + vec4<f32>(x_1411.x, x_1411.y, x_1411.z, x_1411.y));
        let x_1415 : vec4<f32> = u_xlat8;
        let x_1418 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_1421 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1415.x, x_1415.y) * vec2<f32>(x_1418.x, x_1418.y)) + vec2<f32>(x_1421.w, x_1421.y));
        let x_1425 : f32 = u_xlat10.x;
        u_xlat11.x = x_1425;
        let x_1427 : vec4<f32> = u_xlat8;
        let x_1430 : vec4<f32> = x_198.x_MainLightShadowmapSize;
        let x_1433 : vec4<f32> = u_xlat11;
        let x_1435 : vec2<f32> = ((vec2<f32>(x_1427.x, x_1427.y) * vec2<f32>(x_1430.x, x_1430.y)) + vec2<f32>(x_1433.x, x_1433.y));
        let x_1436 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1435.x, x_1435.y, x_1436.z, x_1436.w);
        let x_1439 : vec4<f32> = u_xlat9;
        let x_1441 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1439.x, x_1439.x, x_1439.x, x_1439.x) * x_1441);
        let x_1444 : vec4<f32> = u_xlat9;
        let x_1446 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1444.y, x_1444.y, x_1444.y, x_1444.y) * x_1446);
        let x_1449 : vec4<f32> = u_xlat9;
        let x_1451 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1449.z, x_1449.z, x_1449.z, x_1449.z) * x_1451);
        let x_1453 : vec4<f32> = u_xlat9;
        let x_1455 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1453.w, x_1453.w, x_1453.w, x_1453.w) * x_1455);
        let x_1458 : vec4<f32> = u_xlat14;
        let x_1459 : vec2<f32> = vec2<f32>(x_1458.x, x_1458.y);
        let x_1461 : f32 = u_xlat5.z;
        txVec13 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1468 : vec3<f32> = txVec13;
        let x_1470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1468.xy, x_1468.z);
        u_xlat73 = x_1470;
        let x_1472 : vec4<f32> = u_xlat14;
        let x_1473 : vec2<f32> = vec2<f32>(x_1472.z, x_1472.w);
        let x_1475 : f32 = u_xlat5.z;
        txVec14 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec14;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1482.xy, x_1482.z);
        u_xlat10.x = x_1484;
        let x_1487 : f32 = u_xlat10.x;
        let x_1489 : f32 = u_xlat19.y;
        u_xlat10.x = (x_1487 * x_1489);
        let x_1493 : f32 = u_xlat19.x;
        let x_1494 : f32 = u_xlat73;
        let x_1497 : f32 = u_xlat10.x;
        u_xlat73 = ((x_1493 * x_1494) + x_1497);
        let x_1500 : vec2<f32> = u_xlat52;
        let x_1502 : f32 = u_xlat5.z;
        txVec15 = vec3<f32>(x_1500.x, x_1500.y, x_1502);
        let x_1509 : vec3<f32> = txVec15;
        let x_1511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1509.xy, x_1509.z);
        u_xlat52.x = x_1511;
        let x_1514 : f32 = u_xlat19.z;
        let x_1516 : f32 = u_xlat52.x;
        let x_1518 : f32 = u_xlat73;
        u_xlat73 = ((x_1514 * x_1516) + x_1518);
        let x_1521 : vec4<f32> = u_xlat17;
        let x_1522 : vec2<f32> = vec2<f32>(x_1521.x, x_1521.y);
        let x_1524 : f32 = u_xlat5.z;
        txVec16 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec16;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1531.xy, x_1531.z);
        u_xlat52.x = x_1533;
        let x_1536 : f32 = u_xlat19.w;
        let x_1538 : f32 = u_xlat52.x;
        let x_1540 : f32 = u_xlat73;
        u_xlat73 = ((x_1536 * x_1538) + x_1540);
        let x_1543 : vec4<f32> = u_xlat15;
        let x_1544 : vec2<f32> = vec2<f32>(x_1543.x, x_1543.y);
        let x_1546 : f32 = u_xlat5.z;
        txVec17 = vec3<f32>(x_1544.x, x_1544.y, x_1546);
        let x_1553 : vec3<f32> = txVec17;
        let x_1555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1553.xy, x_1553.z);
        u_xlat52.x = x_1555;
        let x_1558 : f32 = u_xlat20.x;
        let x_1560 : f32 = u_xlat52.x;
        let x_1562 : f32 = u_xlat73;
        u_xlat73 = ((x_1558 * x_1560) + x_1562);
        let x_1565 : vec4<f32> = u_xlat15;
        let x_1566 : vec2<f32> = vec2<f32>(x_1565.z, x_1565.w);
        let x_1568 : f32 = u_xlat5.z;
        txVec18 = vec3<f32>(x_1566.x, x_1566.y, x_1568);
        let x_1575 : vec3<f32> = txVec18;
        let x_1577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1575.xy, x_1575.z);
        u_xlat52.x = x_1577;
        let x_1580 : f32 = u_xlat20.y;
        let x_1582 : f32 = u_xlat52.x;
        let x_1584 : f32 = u_xlat73;
        u_xlat73 = ((x_1580 * x_1582) + x_1584);
        let x_1587 : vec4<f32> = u_xlat16;
        let x_1588 : vec2<f32> = vec2<f32>(x_1587.x, x_1587.y);
        let x_1590 : f32 = u_xlat5.z;
        txVec19 = vec3<f32>(x_1588.x, x_1588.y, x_1590);
        let x_1597 : vec3<f32> = txVec19;
        let x_1599 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1597.xy, x_1597.z);
        u_xlat52.x = x_1599;
        let x_1602 : f32 = u_xlat20.z;
        let x_1604 : f32 = u_xlat52.x;
        let x_1606 : f32 = u_xlat73;
        u_xlat73 = ((x_1602 * x_1604) + x_1606);
        let x_1609 : vec4<f32> = u_xlat17;
        let x_1610 : vec2<f32> = vec2<f32>(x_1609.z, x_1609.w);
        let x_1612 : f32 = u_xlat5.z;
        txVec20 = vec3<f32>(x_1610.x, x_1610.y, x_1612);
        let x_1619 : vec3<f32> = txVec20;
        let x_1621 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1619.xy, x_1619.z);
        u_xlat52.x = x_1621;
        let x_1624 : f32 = u_xlat20.w;
        let x_1626 : f32 = u_xlat52.x;
        let x_1628 : f32 = u_xlat73;
        u_xlat73 = ((x_1624 * x_1626) + x_1628);
        let x_1631 : vec4<f32> = u_xlat18;
        let x_1632 : vec2<f32> = vec2<f32>(x_1631.x, x_1631.y);
        let x_1634 : f32 = u_xlat5.z;
        txVec21 = vec3<f32>(x_1632.x, x_1632.y, x_1634);
        let x_1641 : vec3<f32> = txVec21;
        let x_1643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1641.xy, x_1641.z);
        u_xlat52.x = x_1643;
        let x_1646 : f32 = u_xlat21.x;
        let x_1648 : f32 = u_xlat52.x;
        let x_1650 : f32 = u_xlat73;
        u_xlat73 = ((x_1646 * x_1648) + x_1650);
        let x_1653 : vec4<f32> = u_xlat18;
        let x_1654 : vec2<f32> = vec2<f32>(x_1653.z, x_1653.w);
        let x_1656 : f32 = u_xlat5.z;
        txVec22 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec22;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1663.xy, x_1663.z);
        u_xlat52.x = x_1665;
        let x_1668 : f32 = u_xlat21.y;
        let x_1670 : f32 = u_xlat52.x;
        let x_1672 : f32 = u_xlat73;
        u_xlat73 = ((x_1668 * x_1670) + x_1672);
        let x_1675 : vec2<f32> = u_xlat32;
        let x_1677 : f32 = u_xlat5.z;
        txVec23 = vec3<f32>(x_1675.x, x_1675.y, x_1677);
        let x_1684 : vec3<f32> = txVec23;
        let x_1686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1684.xy, x_1684.z);
        u_xlat52.x = x_1686;
        let x_1689 : f32 = u_xlat21.z;
        let x_1691 : f32 = u_xlat52.x;
        let x_1693 : f32 = u_xlat73;
        u_xlat73 = ((x_1689 * x_1691) + x_1693);
        let x_1696 : vec2<f32> = u_xlat60;
        let x_1698 : f32 = u_xlat5.z;
        txVec24 = vec3<f32>(x_1696.x, x_1696.y, x_1698);
        let x_1705 : vec3<f32> = txVec24;
        let x_1707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1705.xy, x_1705.z);
        u_xlat52.x = x_1707;
        let x_1710 : f32 = u_xlat21.w;
        let x_1712 : f32 = u_xlat52.x;
        let x_1714 : f32 = u_xlat73;
        u_xlat73 = ((x_1710 * x_1712) + x_1714);
        let x_1717 : vec4<f32> = u_xlat13;
        let x_1718 : vec2<f32> = vec2<f32>(x_1717.x, x_1717.y);
        let x_1720 : f32 = u_xlat5.z;
        txVec25 = vec3<f32>(x_1718.x, x_1718.y, x_1720);
        let x_1727 : vec3<f32> = txVec25;
        let x_1729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1727.xy, x_1727.z);
        u_xlat52.x = x_1729;
        let x_1732 : f32 = u_xlat9.x;
        let x_1734 : f32 = u_xlat52.x;
        let x_1736 : f32 = u_xlat73;
        u_xlat73 = ((x_1732 * x_1734) + x_1736);
        let x_1739 : vec4<f32> = u_xlat13;
        let x_1740 : vec2<f32> = vec2<f32>(x_1739.z, x_1739.w);
        let x_1742 : f32 = u_xlat5.z;
        txVec26 = vec3<f32>(x_1740.x, x_1740.y, x_1742);
        let x_1749 : vec3<f32> = txVec26;
        let x_1751 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1749.xy, x_1749.z);
        u_xlat52.x = x_1751;
        let x_1754 : f32 = u_xlat9.y;
        let x_1756 : f32 = u_xlat52.x;
        let x_1758 : f32 = u_xlat73;
        u_xlat73 = ((x_1754 * x_1756) + x_1758);
        let x_1761 : vec2<f32> = u_xlat55;
        let x_1763 : f32 = u_xlat5.z;
        txVec27 = vec3<f32>(x_1761.x, x_1761.y, x_1763);
        let x_1770 : vec3<f32> = txVec27;
        let x_1772 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1770.xy, x_1770.z);
        u_xlat52.x = x_1772;
        let x_1775 : f32 = u_xlat9.z;
        let x_1777 : f32 = u_xlat52.x;
        let x_1779 : f32 = u_xlat73;
        u_xlat73 = ((x_1775 * x_1777) + x_1779);
        let x_1782 : vec4<f32> = u_xlat8;
        let x_1783 : vec2<f32> = vec2<f32>(x_1782.x, x_1782.y);
        let x_1785 : f32 = u_xlat5.z;
        txVec28 = vec3<f32>(x_1783.x, x_1783.y, x_1785);
        let x_1792 : vec3<f32> = txVec28;
        let x_1794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1792.xy, x_1792.z);
        u_xlat8.x = x_1794;
        let x_1797 : f32 = u_xlat9.w;
        let x_1799 : f32 = u_xlat8.x;
        let x_1801 : f32 = u_xlat73;
        u_xlat51.x = ((x_1797 * x_1799) + x_1801);
      }
    }
  } else {
    let x_1806 : vec4<f32> = u_xlat5;
    let x_1807 : vec2<f32> = vec2<f32>(x_1806.x, x_1806.y);
    let x_1809 : f32 = u_xlat5.z;
    txVec29 = vec3<f32>(x_1807.x, x_1807.y, x_1809);
    let x_1816 : vec3<f32> = txVec29;
    let x_1818 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1816.xy, x_1816.z);
    u_xlat51.x = x_1818;
  }
  let x_1821 : f32 = x_198.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1821) + 1.0f);
  let x_1826 : f32 = u_xlat51.x;
  let x_1828 : f32 = x_198.x_MainLightShadowParams.x;
  let x_1831 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1826 * x_1828) + x_1831);
  let x_1836 : f32 = u_xlat5.z;
  u_xlatb27 = (0.0f >= x_1836);
  let x_1840 : f32 = u_xlat5.z;
  u_xlatb49 = (x_1840 >= 1.0f);
  let x_1842 : bool = u_xlatb49;
  let x_1843 : bool = u_xlatb27;
  u_xlatb27 = (x_1842 | x_1843);
  let x_1845 : bool = u_xlatb27;
  if (x_1845) {
    x_1846 = 1.0f;
  } else {
    let x_1851 : f32 = u_xlat5.x;
    x_1846 = x_1851;
  }
  let x_1852 : f32 = x_1846;
  u_xlat5.x = x_1852;
  let x_1854 : vec3<f32> = vs_TEXCOORD1;
  let x_1856 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1858 : vec3<f32> = (x_1854 + -(x_1856));
  let x_1859 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1858.x, x_1858.y, x_1858.z, x_1859.w);
  let x_1862 : vec4<f32> = u_xlat8;
  let x_1864 : vec4<f32> = u_xlat8;
  u_xlat27 = dot(vec3<f32>(x_1862.x, x_1862.y, x_1862.z), vec3<f32>(x_1864.x, x_1864.y, x_1864.z));
  let x_1867 : f32 = u_xlat27;
  let x_1869 : f32 = x_198.x_MainLightShadowParams.z;
  let x_1872 : f32 = x_198.x_MainLightShadowParams.w;
  u_xlat27 = ((x_1867 * x_1869) + x_1872);
  let x_1874 : f32 = u_xlat27;
  u_xlat27 = clamp(x_1874, 0.0f, 1.0f);
  let x_1878 : f32 = u_xlat5.x;
  u_xlat49 = (-(x_1878) + 1.0f);
  let x_1881 : f32 = u_xlat27;
  let x_1882 : f32 = u_xlat49;
  let x_1885 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1881 * x_1882) + x_1885);
  let x_1888 : f32 = u_xlat29;
  let x_1891 : vec4<f32> = x_44.x_MainLightColor;
  let x_1893 : vec3<f32> = (vec3<f32>(x_1888, x_1888, x_1888) * vec3<f32>(x_1891.x, x_1891.y, x_1891.z));
  let x_1894 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1893.x, x_1893.y, x_1893.z, x_1894.w);
  let x_1896 : vec3<f32> = u_xlat3;
  let x_1898 : vec3<f32> = u_xlat4;
  u_xlat27 = dot(-(x_1896), x_1898);
  let x_1900 : f32 = u_xlat27;
  let x_1901 : f32 = u_xlat27;
  u_xlat27 = (x_1900 + x_1901);
  let x_1903 : vec3<f32> = u_xlat4;
  let x_1904 : f32 = u_xlat27;
  let x_1908 : vec3<f32> = u_xlat3;
  let x_1910 : vec3<f32> = ((x_1903 * -(vec3<f32>(x_1904, x_1904, x_1904))) + -(x_1908));
  let x_1911 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);
  let x_1913 : vec3<f32> = u_xlat4;
  let x_1914 : vec3<f32> = u_xlat3;
  u_xlat27 = dot(x_1913, x_1914);
  let x_1916 : f32 = u_xlat27;
  u_xlat27 = clamp(x_1916, 0.0f, 1.0f);
  let x_1918 : f32 = u_xlat27;
  u_xlat27 = (-(x_1918) + 1.0f);
  let x_1921 : f32 = u_xlat27;
  let x_1922 : f32 = u_xlat27;
  u_xlat27 = (x_1921 * x_1922);
  let x_1924 : f32 = u_xlat27;
  let x_1925 : f32 = u_xlat27;
  u_xlat27 = (x_1924 * x_1925);
  let x_1927 : f32 = u_xlat68;
  u_xlat49 = ((-(x_1927) * 0.699999988f) + 1.700000048f);
  let x_1933 : f32 = u_xlat68;
  let x_1934 : f32 = u_xlat49;
  u_xlat68 = (x_1933 * x_1934);
  let x_1936 : f32 = u_xlat68;
  u_xlat68 = (x_1936 * 6.0f);
  let x_1947 : vec4<f32> = u_xlat9;
  let x_1949 : f32 = u_xlat68;
  let x_1950 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1947.x, x_1947.y, x_1947.z), x_1949);
  u_xlat9 = x_1950;
  let x_1952 : f32 = u_xlat9.w;
  u_xlat68 = (x_1952 + -1.0f);
  let x_1955 : f32 = x_106.unity_SpecCube0_HDR.w;
  let x_1956 : f32 = u_xlat68;
  u_xlat68 = ((x_1955 * x_1956) + 1.0f);
  let x_1959 : f32 = u_xlat68;
  u_xlat68 = max(x_1959, 0.0f);
  let x_1961 : f32 = u_xlat68;
  u_xlat68 = log2(x_1961);
  let x_1963 : f32 = u_xlat68;
  let x_1965 : f32 = x_106.unity_SpecCube0_HDR.y;
  u_xlat68 = (x_1963 * x_1965);
  let x_1967 : f32 = u_xlat68;
  u_xlat68 = exp2(x_1967);
  let x_1969 : f32 = u_xlat68;
  let x_1971 : f32 = x_106.unity_SpecCube0_HDR.x;
  u_xlat68 = (x_1969 * x_1971);
  let x_1973 : vec4<f32> = u_xlat9;
  let x_1975 : f32 = u_xlat68;
  let x_1977 : vec3<f32> = (vec3<f32>(x_1973.x, x_1973.y, x_1973.z) * vec3<f32>(x_1975, x_1975, x_1975));
  let x_1978 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1977.x, x_1977.y, x_1977.z, x_1978.w);
  let x_1980 : f32 = u_xlat70;
  let x_1982 : f32 = u_xlat70;
  u_xlat51 = ((vec2<f32>(x_1980, x_1980) * vec2<f32>(x_1982, x_1982)) + vec2<f32>(-1.0f, 1.0f));
  let x_1988 : f32 = u_xlat51.y;
  u_xlat68 = (1.0f / x_1988);
  let x_1990 : vec4<f32> = u_xlat0;
  let x_1993 : f32 = u_xlat69;
  let x_1995 : vec3<f32> = (-(vec3<f32>(x_1990.x, x_1990.y, x_1990.z)) + vec3<f32>(x_1993, x_1993, x_1993));
  let x_1996 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1995.x, x_1995.y, x_1995.z, x_1996.w);
  let x_1998 : f32 = u_xlat27;
  let x_2000 : vec4<f32> = u_xlat10;
  let x_2003 : vec4<f32> = u_xlat0;
  let x_2005 : vec3<f32> = ((vec3<f32>(x_1998, x_1998, x_1998) * vec3<f32>(x_2000.x, x_2000.y, x_2000.z)) + vec3<f32>(x_2003.x, x_2003.y, x_2003.z));
  let x_2006 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2005.x, x_2005.y, x_2005.z, x_2006.w);
  let x_2008 : f32 = u_xlat68;
  let x_2010 : vec4<f32> = u_xlat10;
  let x_2012 : vec3<f32> = (vec3<f32>(x_2008, x_2008, x_2008) * vec3<f32>(x_2010.x, x_2010.y, x_2010.z));
  let x_2013 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2012.x, x_2012.y, x_2012.z, x_2013.w);
  let x_2015 : vec4<f32> = u_xlat9;
  let x_2017 : vec4<f32> = u_xlat10;
  let x_2019 : vec3<f32> = (vec3<f32>(x_2015.x, x_2015.y, x_2015.z) * vec3<f32>(x_2017.x, x_2017.y, x_2017.z));
  let x_2020 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2019.x, x_2019.y, x_2019.z, x_2020.w);
  let x_2022 : vec4<f32> = u_xlat6;
  let x_2024 : vec3<f32> = u_xlat23;
  let x_2026 : vec4<f32> = u_xlat9;
  let x_2028 : vec3<f32> = ((vec3<f32>(x_2022.x, x_2022.y, x_2022.z) * x_2024) + vec3<f32>(x_2026.x, x_2026.y, x_2026.z));
  let x_2029 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2028.x, x_2028.y, x_2028.z, x_2029.w);
  let x_2032 : f32 = u_xlat5.x;
  let x_2034 : f32 = x_106.unity_LightData.z;
  u_xlat68 = (x_2032 * x_2034);
  let x_2036 : vec3<f32> = u_xlat4;
  let x_2038 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat69 = dot(x_2036, vec3<f32>(x_2038.x, x_2038.y, x_2038.z));
  let x_2041 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2041, 0.0f, 1.0f);
  let x_2043 : f32 = u_xlat68;
  let x_2044 : f32 = u_xlat69;
  u_xlat68 = (x_2043 * x_2044);
  let x_2046 : f32 = u_xlat68;
  let x_2048 : vec4<f32> = u_xlat8;
  let x_2050 : vec3<f32> = (vec3<f32>(x_2046, x_2046, x_2046) * vec3<f32>(x_2048.x, x_2048.y, x_2048.z));
  let x_2051 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2050.x, x_2050.y, x_2050.z, x_2051.w);
  let x_2053 : vec3<f32> = u_xlat3;
  let x_2055 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2057 : vec3<f32> = (x_2053 + vec3<f32>(x_2055.x, x_2055.y, x_2055.z));
  let x_2058 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2057.x, x_2057.y, x_2057.z, x_2058.w);
  let x_2060 : vec4<f32> = u_xlat8;
  let x_2062 : vec4<f32> = u_xlat8;
  u_xlat68 = dot(vec3<f32>(x_2060.x, x_2060.y, x_2060.z), vec3<f32>(x_2062.x, x_2062.y, x_2062.z));
  let x_2065 : f32 = u_xlat68;
  u_xlat68 = max(x_2065, 1.17549435e-37f);
  let x_2068 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_2068);
  let x_2070 : f32 = u_xlat68;
  let x_2072 : vec4<f32> = u_xlat8;
  let x_2074 : vec3<f32> = (vec3<f32>(x_2070, x_2070, x_2070) * vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
  let x_2075 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
  let x_2077 : vec3<f32> = u_xlat4;
  let x_2078 : vec4<f32> = u_xlat8;
  u_xlat68 = dot(x_2077, vec3<f32>(x_2078.x, x_2078.y, x_2078.z));
  let x_2081 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2081, 0.0f, 1.0f);
  let x_2084 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2086 : vec4<f32> = u_xlat8;
  u_xlat69 = dot(vec3<f32>(x_2084.x, x_2084.y, x_2084.z), vec3<f32>(x_2086.x, x_2086.y, x_2086.z));
  let x_2089 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2089, 0.0f, 1.0f);
  let x_2091 : f32 = u_xlat68;
  let x_2092 : f32 = u_xlat68;
  u_xlat68 = (x_2091 * x_2092);
  let x_2094 : f32 = u_xlat68;
  let x_2096 : f32 = u_xlat51.x;
  u_xlat68 = ((x_2094 * x_2096) + 1.000010014f);
  let x_2100 : f32 = u_xlat69;
  let x_2101 : f32 = u_xlat69;
  u_xlat69 = (x_2100 * x_2101);
  let x_2103 : f32 = u_xlat68;
  let x_2104 : f32 = u_xlat68;
  u_xlat68 = (x_2103 * x_2104);
  let x_2106 : f32 = u_xlat69;
  u_xlat69 = max(x_2106, 0.100000001f);
  let x_2109 : f32 = u_xlat68;
  let x_2110 : f32 = u_xlat69;
  u_xlat68 = (x_2109 * x_2110);
  let x_2112 : f32 = u_xlat72;
  let x_2113 : f32 = u_xlat68;
  u_xlat68 = (x_2112 * x_2113);
  let x_2115 : f32 = u_xlat71;
  let x_2116 : f32 = u_xlat68;
  u_xlat68 = (x_2115 / x_2116);
  let x_2118 : vec4<f32> = u_xlat0;
  let x_2120 : f32 = u_xlat68;
  let x_2123 : vec3<f32> = u_xlat23;
  let x_2124 : vec3<f32> = ((vec3<f32>(x_2118.x, x_2118.y, x_2118.z) * vec3<f32>(x_2120, x_2120, x_2120)) + x_2123);
  let x_2125 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2124.x, x_2124.y, x_2124.z, x_2125.w);
  let x_2127 : vec4<f32> = u_xlat5;
  let x_2129 : vec4<f32> = u_xlat8;
  let x_2131 : vec3<f32> = (vec3<f32>(x_2127.x, x_2127.y, x_2127.z) * vec3<f32>(x_2129.x, x_2129.y, x_2129.z));
  let x_2132 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2131.x, x_2131.y, x_2131.z, x_2132.w);
  let x_2135 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2137 : f32 = x_106.unity_LightData.y;
  u_xlat68 = min(x_2135, x_2137);
  let x_2140 : f32 = u_xlat68;
  u_xlatu68 = bitcast<u32>(i32(x_2140));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2152 : u32 = u_xlatu_loop_1;
    let x_2153 : u32 = u_xlatu68;
    if ((x_2152 < x_2153)) {
    } else {
      break;
    }
    let x_2156 : u32 = u_xlatu_loop_1;
    u_xlatu70 = (x_2156 >> 2u);
    let x_2159 : u32 = u_xlatu_loop_1;
    u_xlati73 = bitcast<i32>((x_2159 & 3u));
    let x_2162 : u32 = u_xlatu70;
    let x_2165 : vec4<f32> = x_106.unity_LightIndices[bitcast<i32>(x_2162)];
    let x_2175 : i32 = u_xlati73;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2180 : vec4<u32> = indexable[x_2175];
    u_xlat70 = dot(x_2165, bitcast<vec4<f32>>(x_2180));
    let x_2184 : f32 = u_xlat70;
    u_xlati70 = i32(x_2184);
    let x_2186 : vec3<f32> = vs_TEXCOORD1;
    let x_2198 : i32 = u_xlati70;
    let x_2200 : vec4<f32> = x_2197.x_AdditionalLightsPosition[x_2198];
    let x_2203 : i32 = u_xlati70;
    let x_2205 : vec4<f32> = x_2197.x_AdditionalLightsPosition[x_2203];
    let x_2207 : vec3<f32> = ((-(x_2186) * vec3<f32>(x_2200.w, x_2200.w, x_2200.w)) + vec3<f32>(x_2205.x, x_2205.y, x_2205.z));
    let x_2208 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2207.x, x_2207.y, x_2207.z, x_2208.w);
    let x_2210 : vec4<f32> = u_xlat9;
    let x_2212 : vec4<f32> = u_xlat9;
    u_xlat73 = dot(vec3<f32>(x_2210.x, x_2210.y, x_2210.z), vec3<f32>(x_2212.x, x_2212.y, x_2212.z));
    let x_2215 : f32 = u_xlat73;
    u_xlat73 = max(x_2215, 6.10351562e-05f);
    let x_2219 : f32 = u_xlat73;
    u_xlat74 = inverseSqrt(x_2219);
    let x_2221 : f32 = u_xlat74;
    let x_2223 : vec4<f32> = u_xlat9;
    let x_2225 : vec3<f32> = (vec3<f32>(x_2221, x_2221, x_2221) * vec3<f32>(x_2223.x, x_2223.y, x_2223.z));
    let x_2226 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2225.x, x_2225.y, x_2225.z, x_2226.w);
    let x_2229 : f32 = u_xlat73;
    u_xlat75 = (1.0f / x_2229);
    let x_2231 : f32 = u_xlat73;
    let x_2232 : i32 = u_xlati70;
    let x_2234 : f32 = x_2197.x_AdditionalLightsAttenuation[x_2232].x;
    u_xlat73 = (x_2231 * x_2234);
    let x_2236 : f32 = u_xlat73;
    let x_2238 : f32 = u_xlat73;
    u_xlat73 = ((-(x_2236) * x_2238) + 1.0f);
    let x_2241 : f32 = u_xlat73;
    u_xlat73 = max(x_2241, 0.0f);
    let x_2243 : f32 = u_xlat73;
    let x_2244 : f32 = u_xlat73;
    u_xlat73 = (x_2243 * x_2244);
    let x_2246 : f32 = u_xlat73;
    let x_2247 : f32 = u_xlat75;
    u_xlat73 = (x_2246 * x_2247);
    let x_2249 : i32 = u_xlati70;
    let x_2251 : vec4<f32> = x_2197.x_AdditionalLightsSpotDir[x_2249];
    let x_2253 : vec4<f32> = u_xlat10;
    u_xlat75 = dot(vec3<f32>(x_2251.x, x_2251.y, x_2251.z), vec3<f32>(x_2253.x, x_2253.y, x_2253.z));
    let x_2256 : f32 = u_xlat75;
    let x_2257 : i32 = u_xlati70;
    let x_2259 : f32 = x_2197.x_AdditionalLightsAttenuation[x_2257].z;
    let x_2261 : i32 = u_xlati70;
    let x_2263 : f32 = x_2197.x_AdditionalLightsAttenuation[x_2261].w;
    u_xlat75 = ((x_2256 * x_2259) + x_2263);
    let x_2265 : f32 = u_xlat75;
    u_xlat75 = clamp(x_2265, 0.0f, 1.0f);
    let x_2267 : f32 = u_xlat75;
    let x_2268 : f32 = u_xlat75;
    u_xlat75 = (x_2267 * x_2268);
    let x_2270 : f32 = u_xlat73;
    let x_2271 : f32 = u_xlat75;
    u_xlat73 = (x_2270 * x_2271);
    let x_2273 : f32 = u_xlat29;
    let x_2275 : i32 = u_xlati70;
    let x_2277 : vec4<f32> = x_2197.x_AdditionalLightsColor[x_2275];
    let x_2279 : vec3<f32> = (vec3<f32>(x_2273, x_2273, x_2273) * vec3<f32>(x_2277.x, x_2277.y, x_2277.z));
    let x_2280 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2280.w);
    let x_2282 : vec3<f32> = u_xlat4;
    let x_2283 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(x_2282, vec3<f32>(x_2283.x, x_2283.y, x_2283.z));
    let x_2286 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2286, 0.0f, 1.0f);
    let x_2288 : f32 = u_xlat70;
    let x_2289 : f32 = u_xlat73;
    u_xlat70 = (x_2288 * x_2289);
    let x_2291 : f32 = u_xlat70;
    let x_2293 : vec4<f32> = u_xlat11;
    let x_2295 : vec3<f32> = (vec3<f32>(x_2291, x_2291, x_2291) * vec3<f32>(x_2293.x, x_2293.y, x_2293.z));
    let x_2296 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2295.x, x_2295.y, x_2295.z, x_2296.w);
    let x_2298 : vec4<f32> = u_xlat9;
    let x_2300 : f32 = u_xlat74;
    let x_2303 : vec3<f32> = u_xlat3;
    let x_2304 : vec3<f32> = ((vec3<f32>(x_2298.x, x_2298.y, x_2298.z) * vec3<f32>(x_2300, x_2300, x_2300)) + x_2303);
    let x_2305 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2304.x, x_2304.y, x_2304.z, x_2305.w);
    let x_2307 : vec4<f32> = u_xlat9;
    let x_2309 : vec4<f32> = u_xlat9;
    u_xlat70 = dot(vec3<f32>(x_2307.x, x_2307.y, x_2307.z), vec3<f32>(x_2309.x, x_2309.y, x_2309.z));
    let x_2312 : f32 = u_xlat70;
    u_xlat70 = max(x_2312, 1.17549435e-37f);
    let x_2314 : f32 = u_xlat70;
    u_xlat70 = inverseSqrt(x_2314);
    let x_2316 : f32 = u_xlat70;
    let x_2318 : vec4<f32> = u_xlat9;
    let x_2320 : vec3<f32> = (vec3<f32>(x_2316, x_2316, x_2316) * vec3<f32>(x_2318.x, x_2318.y, x_2318.z));
    let x_2321 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2320.x, x_2320.y, x_2320.z, x_2321.w);
    let x_2323 : vec3<f32> = u_xlat4;
    let x_2324 : vec4<f32> = u_xlat9;
    u_xlat70 = dot(x_2323, vec3<f32>(x_2324.x, x_2324.y, x_2324.z));
    let x_2327 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2327, 0.0f, 1.0f);
    let x_2329 : vec4<f32> = u_xlat10;
    let x_2331 : vec4<f32> = u_xlat9;
    u_xlat73 = dot(vec3<f32>(x_2329.x, x_2329.y, x_2329.z), vec3<f32>(x_2331.x, x_2331.y, x_2331.z));
    let x_2334 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2334, 0.0f, 1.0f);
    let x_2336 : f32 = u_xlat70;
    let x_2337 : f32 = u_xlat70;
    u_xlat70 = (x_2336 * x_2337);
    let x_2339 : f32 = u_xlat70;
    let x_2341 : f32 = u_xlat51.x;
    u_xlat70 = ((x_2339 * x_2341) + 1.000010014f);
    let x_2344 : f32 = u_xlat73;
    let x_2345 : f32 = u_xlat73;
    u_xlat73 = (x_2344 * x_2345);
    let x_2347 : f32 = u_xlat70;
    let x_2348 : f32 = u_xlat70;
    u_xlat70 = (x_2347 * x_2348);
    let x_2350 : f32 = u_xlat73;
    u_xlat73 = max(x_2350, 0.100000001f);
    let x_2352 : f32 = u_xlat70;
    let x_2353 : f32 = u_xlat73;
    u_xlat70 = (x_2352 * x_2353);
    let x_2355 : f32 = u_xlat72;
    let x_2356 : f32 = u_xlat70;
    u_xlat70 = (x_2355 * x_2356);
    let x_2358 : f32 = u_xlat71;
    let x_2359 : f32 = u_xlat70;
    u_xlat70 = (x_2358 / x_2359);
    let x_2361 : vec4<f32> = u_xlat0;
    let x_2363 : f32 = u_xlat70;
    let x_2366 : vec3<f32> = u_xlat23;
    let x_2367 : vec3<f32> = ((vec3<f32>(x_2361.x, x_2361.y, x_2361.z) * vec3<f32>(x_2363, x_2363, x_2363)) + x_2366);
    let x_2368 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2367.x, x_2367.y, x_2367.z, x_2368.w);
    let x_2370 : vec4<f32> = u_xlat9;
    let x_2372 : vec4<f32> = u_xlat11;
    let x_2375 : vec4<f32> = u_xlat8;
    let x_2377 : vec3<f32> = ((vec3<f32>(x_2370.x, x_2370.y, x_2370.z) * vec3<f32>(x_2372.x, x_2372.y, x_2372.z)) + vec3<f32>(x_2375.x, x_2375.y, x_2375.z));
    let x_2378 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2377.x, x_2377.y, x_2377.z, x_2378.w);

    continuing {
      let x_2380 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2380 + bitcast<u32>(1i));
    }
  }
  let x_2382 : vec4<f32> = u_xlat6;
  let x_2384 : vec3<f32> = u_xlat7;
  let x_2387 : vec4<f32> = u_xlat5;
  let x_2389 : vec3<f32> = ((vec3<f32>(x_2382.x, x_2382.y, x_2382.z) * vec3<f32>(x_2384.x, x_2384.x, x_2384.x)) + vec3<f32>(x_2387.x, x_2387.y, x_2387.z));
  let x_2390 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2389.x, x_2389.y, x_2389.z, x_2390.w);
  let x_2392 : vec4<f32> = u_xlat8;
  let x_2394 : vec4<f32> = u_xlat0;
  let x_2396 : vec3<f32> = (vec3<f32>(x_2392.x, x_2392.y, x_2392.z) + vec3<f32>(x_2394.x, x_2394.y, x_2394.z));
  let x_2397 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2396.x, x_2396.y, x_2396.z, x_2397.w);
  let x_2399 : vec3<f32> = u_xlat2;
  let x_2401 : vec4<f32> = x_57.x_EmissionColor;
  let x_2404 : vec4<f32> = u_xlat0;
  let x_2406 : vec3<f32> = ((x_2399 * vec3<f32>(x_2401.x, x_2401.y, x_2401.z)) + vec3<f32>(x_2404.x, x_2404.y, x_2404.z));
  let x_2407 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2406.x, x_2406.y, x_2406.z, x_2407.w);
  let x_2409 : f32 = u_xlat66;
  let x_2410 : f32 = u_xlat66;
  u_xlat66 = (x_2409 * -(x_2410));
  let x_2413 : f32 = u_xlat66;
  u_xlat66 = exp2(x_2413);
  let x_2415 : vec4<f32> = u_xlat0;
  let x_2419 : vec4<f32> = x_44.unity_FogColor;
  let x_2422 : vec3<f32> = (vec3<f32>(x_2415.x, x_2415.y, x_2415.z) + -(vec3<f32>(x_2419.x, x_2419.y, x_2419.z)));
  let x_2423 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2422.x, x_2422.y, x_2422.z, x_2423.w);
  let x_2427 : f32 = u_xlat66;
  let x_2429 : vec4<f32> = u_xlat0;
  let x_2433 : vec4<f32> = x_44.unity_FogColor;
  let x_2435 : vec3<f32> = ((vec3<f32>(x_2427, x_2427, x_2427) * vec3<f32>(x_2429.x, x_2429.y, x_2429.z)) + vec3<f32>(x_2433.x, x_2433.y, x_2433.z));
  let x_2436 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2435.x, x_2435.y, x_2435.z, x_2436.w);
  let x_2441 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2441 == 1.0f);
  let x_2443 : bool = u_xlatb0;
  if (x_2443) {
    let x_2448 : f32 = u_xlat1.x;
    x_2444 = x_2448;
  } else {
    x_2444 = 1.0f;
  }
  let x_2450 : f32 = x_2444;
  SV_Target0.w = x_2450;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

