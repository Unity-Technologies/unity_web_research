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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_133 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1898 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2142 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb63 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlat3 : vec3<f32>;
  var x_109 : vec3<f32>;
  var u_xlat63 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu63 : u32;
  var u_xlati63 : i32;
  var u_xlat66 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlat27 : f32;
  var u_xlat48 : f32;
  var u_xlatb69 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat69 : f32;
  var u_xlatb7 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat28 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat30 : vec2<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat72 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat70 : f32;
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
  var u_xlatb25 : bool;
  var u_xlatb46 : bool;
  var x_1783 : f32;
  var u_xlat25 : f32;
  var u_xlat46 : vec2<f32>;
  var u_xlatu65 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu69 : u32;
  var u_xlati70 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati69 : i32;
  var u_xlat71 : f32;
  var u_xlatb0 : bool;
  var x_2378 : f32;
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
  let x_69 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb63 = (x_69 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD1;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_76) + x_81);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat65 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat65;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_102;
  let x_106 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_106;
  let x_108 : bool = u_xlatb63;
  if (x_108) {
    let x_112 : vec3<f32> = u_xlat2;
    x_109 = x_112;
  } else {
    let x_114 : vec3<f32> = u_xlat3;
    x_109 = x_114;
  }
  let x_115 : vec3<f32> = x_109;
  u_xlat2 = x_115;
  let x_118 : vec3<f32> = vs_TEXCOORD2;
  let x_119 : vec3<f32> = vs_TEXCOORD2;
  u_xlat63 = dot(x_118, x_119);
  let x_121 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_121);
  let x_123 : f32 = u_xlat63;
  let x_125 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_123, x_123, x_123) * x_125);
  let x_128 : vec3<f32> = vs_TEXCOORD1;
  let x_135 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres0;
  let x_138 : vec3<f32> = (x_128 + -(vec3<f32>(x_135.x, x_135.y, x_135.z)));
  let x_139 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : vec3<f32> = vs_TEXCOORD1;
  let x_144 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres1;
  let x_147 : vec3<f32> = (x_142 + -(vec3<f32>(x_144.x, x_144.y, x_144.z)));
  let x_148 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec3<f32> = vs_TEXCOORD1;
  let x_154 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_151 + -(vec3<f32>(x_154.x, x_154.y, x_154.z)));
  let x_159 : vec3<f32> = vs_TEXCOORD1;
  let x_162 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres3;
  let x_165 : vec3<f32> = (x_159 + -(vec3<f32>(x_162.x, x_162.y, x_162.z)));
  let x_166 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat4;
  let x_170 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_174 : vec4<f32> = u_xlat5;
  let x_176 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_174.x, x_174.y, x_174.z), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : vec3<f32> = u_xlat6;
  let x_181 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_180, x_181);
  let x_184 : vec4<f32> = u_xlat7;
  let x_186 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_184.x, x_184.y, x_184.z), vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_193 : vec4<f32> = u_xlat4;
  let x_196 : vec4<f32> = x_133.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_193 < x_196);
  let x_199 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_199);
  let x_203 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_203);
  let x_207 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_207);
  let x_211 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_211);
  let x_215 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_215);
  let x_221 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_221);
  let x_225 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_225);
  let x_228 : vec4<f32> = u_xlat4;
  let x_230 : vec4<f32> = u_xlat5;
  let x_232 : vec3<f32> = (vec3<f32>(x_228.x, x_228.y, x_228.z) + vec3<f32>(x_230.y, x_230.z, x_230.w));
  let x_233 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_235 : vec4<f32> = u_xlat4;
  let x_238 : vec3<f32> = max(vec3<f32>(x_235.x, x_235.y, x_235.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_239 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_239.x, x_238.x, x_238.y, x_238.z);
  let x_241 : vec4<f32> = u_xlat5;
  u_xlat63 = dot(x_241, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_247 : f32 = u_xlat63;
  u_xlat63 = (-(x_247) + 4.0f);
  let x_252 : f32 = u_xlat63;
  u_xlatu63 = u32(x_252);
  let x_256 : u32 = u_xlatu63;
  u_xlati63 = (bitcast<i32>(x_256) << bitcast<u32>(2i));
  let x_259 : vec3<f32> = vs_TEXCOORD1;
  let x_261 : i32 = u_xlati63;
  let x_264 : i32 = u_xlati63;
  let x_268 : vec4<f32> = x_133.x_MainLightWorldToShadow[((x_261 + 1i) / 4i)][((x_264 + 1i) % 4i)];
  let x_270 : vec3<f32> = (vec3<f32>(x_259.y, x_259.y, x_259.y) * vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : i32 = u_xlati63;
  let x_275 : i32 = u_xlati63;
  let x_278 : vec4<f32> = x_133.x_MainLightWorldToShadow[(x_273 / 4i)][(x_275 % 4i)];
  let x_280 : vec3<f32> = vs_TEXCOORD1;
  let x_283 : vec4<f32> = u_xlat4;
  let x_285 : vec3<f32> = ((vec3<f32>(x_278.x, x_278.y, x_278.z) * vec3<f32>(x_280.x, x_280.x, x_280.x)) + vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_288 : i32 = u_xlati63;
  let x_291 : i32 = u_xlati63;
  let x_295 : vec4<f32> = x_133.x_MainLightWorldToShadow[((x_288 + 2i) / 4i)][((x_291 + 2i) % 4i)];
  let x_297 : vec3<f32> = vs_TEXCOORD1;
  let x_300 : vec4<f32> = u_xlat4;
  let x_302 : vec3<f32> = ((vec3<f32>(x_295.x, x_295.y, x_295.z) * vec3<f32>(x_297.z, x_297.z, x_297.z)) + vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat4;
  let x_307 : i32 = u_xlati63;
  let x_310 : i32 = u_xlati63;
  let x_314 : vec4<f32> = x_133.x_MainLightWorldToShadow[((x_307 + 3i) / 4i)][((x_310 + 3i) % 4i)];
  let x_316 : vec3<f32> = (vec3<f32>(x_305.x, x_305.y, x_305.z) + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_320 : f32 = vs_TEXCOORD1.y;
  let x_322 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat63 = (x_320 * x_322);
  let x_325 : f32 = x_44.unity_MatrixV[0i].z;
  let x_327 : f32 = vs_TEXCOORD1.x;
  let x_329 : f32 = u_xlat63;
  u_xlat63 = ((x_325 * x_327) + x_329);
  let x_332 : f32 = x_44.unity_MatrixV[2i].z;
  let x_334 : f32 = vs_TEXCOORD1.z;
  let x_336 : f32 = u_xlat63;
  u_xlat63 = ((x_332 * x_334) + x_336);
  let x_338 : f32 = u_xlat63;
  let x_340 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat63 = (x_338 + x_340);
  let x_342 : f32 = u_xlat63;
  let x_346 : f32 = x_44.x_ProjectionParams.y;
  u_xlat63 = (-(x_342) + -(x_346));
  let x_349 : f32 = u_xlat63;
  u_xlat63 = max(x_349, 0.0f);
  let x_351 : f32 = u_xlat63;
  let x_354 : f32 = x_44.unity_FogParams.x;
  u_xlat63 = (x_351 * x_354);
  let x_362 : vec2<f32> = vs_TEXCOORD8;
  let x_364 : f32 = x_44.x_GlobalMipBias.x;
  let x_365 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_362, x_364);
  let x_366 : vec3<f32> = vec3<f32>(x_365.x, x_365.y, x_365.z);
  let x_367 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_371 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_372 : vec2<f32> = vec2<f32>(x_371.x, x_371.y);
  let x_376 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_372.x, x_372.y));
  let x_377 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_376.x, x_376.y, x_377.z);
  let x_379 : vec3<f32> = u_xlat6;
  let x_381 : vec4<f32> = hlslcc_FragCoord;
  let x_383 : vec2<f32> = (vec2<f32>(x_379.x, x_379.y) * vec2<f32>(x_381.x, x_381.y));
  let x_384 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_383.x, x_383.y, x_384.z);
  let x_387 : f32 = u_xlat6.y;
  let x_390 : f32 = x_44.x_ScaleBiasRt.x;
  let x_393 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat65 = ((x_387 * x_390) + x_393);
  let x_395 : f32 = u_xlat65;
  u_xlat6.z = (-(x_395) + 1.0f);
  let x_400 : f32 = x_57.x_Metallic;
  u_xlat65 = ((-(x_400) * 0.959999979f) + 0.959999979f);
  let x_406 : f32 = u_xlat65;
  let x_409 : f32 = x_57.x_Smoothness;
  u_xlat66 = (-(x_406) + x_409);
  let x_412 : vec4<f32> = u_xlat1;
  let x_414 : f32 = u_xlat65;
  u_xlat22 = (vec3<f32>(x_412.y, x_412.z, x_412.w) * vec3<f32>(x_414, x_414, x_414));
  let x_417 : vec4<f32> = u_xlat0;
  let x_420 : vec4<f32> = x_57.x_BaseColor;
  let x_425 : vec3<f32> = ((vec3<f32>(x_417.x, x_417.y, x_417.z) * vec3<f32>(x_420.x, x_420.y, x_420.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_426 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_429 : f32 = x_57.x_Metallic;
  let x_431 : f32 = x_57.x_Metallic;
  let x_433 : f32 = x_57.x_Metallic;
  let x_434 : vec3<f32> = vec3<f32>(x_429, x_431, x_433);
  let x_439 : vec4<f32> = u_xlat0;
  let x_444 : vec3<f32> = ((vec3<f32>(x_434.x, x_434.y, x_434.z) * vec3<f32>(x_439.x, x_439.y, x_439.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_445 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_448 : f32 = x_57.x_Smoothness;
  u_xlat65 = (-(x_448) + 1.0f);
  let x_452 : f32 = u_xlat65;
  let x_453 : f32 = u_xlat65;
  u_xlat67 = (x_452 * x_453);
  let x_455 : f32 = u_xlat67;
  u_xlat67 = max(x_455, 0.0078125f);
  let x_459 : f32 = u_xlat67;
  let x_460 : f32 = u_xlat67;
  u_xlat68 = (x_459 * x_460);
  let x_462 : f32 = u_xlat66;
  u_xlat66 = (x_462 + 1.0f);
  let x_464 : f32 = u_xlat66;
  u_xlat66 = clamp(x_464, 0.0f, 1.0f);
  let x_467 : f32 = u_xlat67;
  u_xlat27 = ((x_467 * 4.0f) + 2.0f);
  let x_475 : vec3<f32> = u_xlat6;
  let x_478 : f32 = x_44.x_GlobalMipBias.x;
  let x_479 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_475.x, x_475.z), x_478);
  u_xlat6.x = x_479.x;
  let x_484 : f32 = u_xlat6.x;
  u_xlat48 = (x_484 + -1.0f);
  let x_487 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_488 : f32 = u_xlat48;
  u_xlat48 = ((x_487 * x_488) + 1.0f);
  let x_492 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_492, 1.0f);
  let x_497 : f32 = x_133.x_MainLightShadowParams.y;
  u_xlatb69 = (0.0f < x_497);
  let x_499 : bool = u_xlatb69;
  if (x_499) {
    let x_503 : f32 = x_133.x_MainLightShadowParams.y;
    u_xlatb69 = (x_503 == 1.0f);
    let x_505 : bool = u_xlatb69;
    if (x_505) {
      let x_508 : vec4<f32> = u_xlat4;
      let x_511 : vec4<f32> = x_133.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_508.x, x_508.y, x_508.x, x_508.y) + x_511);
      let x_514 : vec4<f32> = u_xlat7;
      let x_515 : vec2<f32> = vec2<f32>(x_514.x, x_514.y);
      let x_517 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_515.x, x_515.y, x_517);
      let x_530 : vec3<f32> = txVec0;
      let x_532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_530.xy, x_530.z);
      u_xlat8.x = x_532;
      let x_535 : vec4<f32> = u_xlat7;
      let x_536 : vec2<f32> = vec2<f32>(x_535.z, x_535.w);
      let x_538 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_536.x, x_536.y, x_538);
      let x_545 : vec3<f32> = txVec1;
      let x_547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_545.xy, x_545.z);
      u_xlat8.y = x_547;
      let x_549 : vec4<f32> = u_xlat4;
      let x_552 : vec4<f32> = x_133.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_549.x, x_549.y, x_549.x, x_549.y) + x_552);
      let x_555 : vec4<f32> = u_xlat7;
      let x_556 : vec2<f32> = vec2<f32>(x_555.x, x_555.y);
      let x_558 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_556.x, x_556.y, x_558);
      let x_565 : vec3<f32> = txVec2;
      let x_567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_565.xy, x_565.z);
      u_xlat8.z = x_567;
      let x_570 : vec4<f32> = u_xlat7;
      let x_571 : vec2<f32> = vec2<f32>(x_570.z, x_570.w);
      let x_573 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_571.x, x_571.y, x_573);
      let x_580 : vec3<f32> = txVec3;
      let x_582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_580.xy, x_580.z);
      u_xlat8.w = x_582;
      let x_585 : vec4<f32> = u_xlat8;
      u_xlat69 = dot(x_585, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_592 : f32 = x_133.x_MainLightShadowParams.y;
      u_xlatb7 = (x_592 == 2.0f);
      let x_594 : bool = u_xlatb7;
      if (x_594) {
        let x_597 : vec4<f32> = u_xlat4;
        let x_600 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_605 : vec2<f32> = ((vec2<f32>(x_597.x, x_597.y) * vec2<f32>(x_600.z, x_600.w)) + vec2<f32>(0.5f, 0.5f));
        let x_606 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
        let x_608 : vec4<f32> = u_xlat7;
        let x_610 : vec2<f32> = floor(vec2<f32>(x_608.x, x_608.y));
        let x_611 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_610.x, x_610.y, x_611.z, x_611.w);
        let x_615 : vec4<f32> = u_xlat4;
        let x_618 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_621 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_615.x, x_615.y) * vec2<f32>(x_618.z, x_618.w)) + -(vec2<f32>(x_621.x, x_621.y)));
        let x_625 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_625.x, x_625.x, x_625.y, x_625.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_630 : vec4<f32> = u_xlat8;
        let x_632 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_630.x, x_630.x, x_630.z, x_630.z) * vec4<f32>(x_632.x, x_632.x, x_632.z, x_632.z));
        let x_635 : vec4<f32> = u_xlat9;
        let x_639 : vec2<f32> = (vec2<f32>(x_635.y, x_635.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_640 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_639.x, x_640.y, x_639.y, x_640.w);
        let x_642 : vec4<f32> = u_xlat9;
        let x_645 : vec2<f32> = u_xlat49;
        let x_647 : vec2<f32> = ((vec2<f32>(x_642.x, x_642.z) * vec2<f32>(0.5f, 0.5f)) + -(x_645));
        let x_648 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_647.x, x_647.y, x_648.z, x_648.w);
        let x_651 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_651) + vec2<f32>(1.0f, 1.0f));
        let x_655 : vec2<f32> = u_xlat49;
        let x_657 : vec2<f32> = min(x_655, vec2<f32>(0.0f, 0.0f));
        let x_658 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_657.x, x_657.y, x_658.z, x_658.w);
        let x_660 : vec4<f32> = u_xlat10;
        let x_663 : vec4<f32> = u_xlat10;
        let x_666 : vec2<f32> = u_xlat51;
        let x_667 : vec2<f32> = ((-(vec2<f32>(x_660.x, x_660.y)) * vec2<f32>(x_663.x, x_663.y)) + x_666);
        let x_668 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
        let x_670 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_670, vec2<f32>(0.0f, 0.0f));
        let x_672 : vec2<f32> = u_xlat49;
        let x_674 : vec2<f32> = u_xlat49;
        let x_676 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_672) * x_674) + vec2<f32>(x_676.y, x_676.w));
        let x_679 : vec4<f32> = u_xlat10;
        let x_681 : vec2<f32> = (vec2<f32>(x_679.x, x_679.y) + vec2<f32>(1.0f, 1.0f));
        let x_682 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_681.x, x_681.y, x_682.z, x_682.w);
        let x_684 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_684 + vec2<f32>(1.0f, 1.0f));
        let x_687 : vec4<f32> = u_xlat9;
        let x_691 : vec2<f32> = (vec2<f32>(x_687.x, x_687.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_692 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_691.x, x_691.y, x_692.z, x_692.w);
        let x_694 : vec2<f32> = u_xlat51;
        let x_695 : vec2<f32> = (x_694 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_696 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_695.x, x_695.y, x_696.z, x_696.w);
        let x_698 : vec4<f32> = u_xlat10;
        let x_700 : vec2<f32> = (vec2<f32>(x_698.x, x_698.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_701 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_700.x, x_700.y, x_701.z, x_701.w);
        let x_704 : vec2<f32> = u_xlat49;
        let x_705 : vec2<f32> = (x_704 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_706 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_705.x, x_705.y, x_706.z, x_706.w);
        let x_708 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_708.y, x_708.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_712 : f32 = u_xlat10.x;
        u_xlat11.z = x_712;
        let x_715 : f32 = u_xlat49.x;
        u_xlat11.w = x_715;
        let x_718 : f32 = u_xlat12.x;
        u_xlat9.z = x_718;
        let x_721 : f32 = u_xlat8.x;
        u_xlat9.w = x_721;
        let x_724 : vec4<f32> = u_xlat9;
        let x_726 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_724.z, x_724.w, x_724.x, x_724.z) + vec4<f32>(x_726.z, x_726.w, x_726.x, x_726.z));
        let x_730 : f32 = u_xlat11.y;
        u_xlat10.z = x_730;
        let x_733 : f32 = u_xlat49.y;
        u_xlat10.w = x_733;
        let x_736 : f32 = u_xlat9.y;
        u_xlat12.z = x_736;
        let x_739 : f32 = u_xlat8.z;
        u_xlat12.w = x_739;
        let x_741 : vec4<f32> = u_xlat10;
        let x_743 : vec4<f32> = u_xlat12;
        let x_745 : vec3<f32> = (vec3<f32>(x_741.z, x_741.y, x_741.w) + vec3<f32>(x_743.z, x_743.y, x_743.w));
        let x_746 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
        let x_748 : vec4<f32> = u_xlat9;
        let x_750 : vec4<f32> = u_xlat13;
        let x_752 : vec3<f32> = (vec3<f32>(x_748.x, x_748.z, x_748.w) / vec3<f32>(x_750.z, x_750.w, x_750.y));
        let x_753 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
        let x_755 : vec4<f32> = u_xlat9;
        let x_761 : vec3<f32> = (vec3<f32>(x_755.x, x_755.y, x_755.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_762 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
        let x_764 : vec4<f32> = u_xlat12;
        let x_766 : vec4<f32> = u_xlat8;
        let x_768 : vec3<f32> = (vec3<f32>(x_764.z, x_764.y, x_764.w) / vec3<f32>(x_766.x, x_766.y, x_766.z));
        let x_769 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
        let x_771 : vec4<f32> = u_xlat10;
        let x_773 : vec3<f32> = (vec3<f32>(x_771.x, x_771.y, x_771.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_774 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
        let x_776 : vec4<f32> = u_xlat9;
        let x_779 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_781 : vec3<f32> = (vec3<f32>(x_776.y, x_776.x, x_776.z) * vec3<f32>(x_779.x, x_779.x, x_779.x));
        let x_782 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
        let x_784 : vec4<f32> = u_xlat10;
        let x_787 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_789 : vec3<f32> = (vec3<f32>(x_784.x, x_784.y, x_784.z) * vec3<f32>(x_787.y, x_787.y, x_787.y));
        let x_790 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
        let x_793 : f32 = u_xlat10.x;
        u_xlat9.w = x_793;
        let x_795 : vec4<f32> = u_xlat7;
        let x_798 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_801 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_795.x, x_795.y, x_795.x, x_795.y) * vec4<f32>(x_798.x, x_798.y, x_798.x, x_798.y)) + vec4<f32>(x_801.y, x_801.w, x_801.x, x_801.w));
        let x_804 : vec4<f32> = u_xlat7;
        let x_807 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_810 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_804.x, x_804.y) * vec2<f32>(x_807.x, x_807.y)) + vec2<f32>(x_810.z, x_810.w));
        let x_814 : f32 = u_xlat9.y;
        u_xlat10.w = x_814;
        let x_816 : vec4<f32> = u_xlat10;
        let x_817 : vec2<f32> = vec2<f32>(x_816.y, x_816.z);
        let x_818 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_818.x, x_817.x, x_818.z, x_817.y);
        let x_820 : vec4<f32> = u_xlat7;
        let x_823 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_826 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_820.x, x_820.y, x_820.x, x_820.y) * vec4<f32>(x_823.x, x_823.y, x_823.x, x_823.y)) + vec4<f32>(x_826.x, x_826.y, x_826.z, x_826.y));
        let x_829 : vec4<f32> = u_xlat7;
        let x_832 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_835 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_829.x, x_829.y, x_829.x, x_829.y) * vec4<f32>(x_832.x, x_832.y, x_832.x, x_832.y)) + vec4<f32>(x_835.w, x_835.y, x_835.w, x_835.z));
        let x_838 : vec4<f32> = u_xlat7;
        let x_841 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_844 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_838.x, x_838.y, x_838.x, x_838.y) * vec4<f32>(x_841.x, x_841.y, x_841.x, x_841.y)) + vec4<f32>(x_844.x, x_844.w, x_844.z, x_844.w));
        let x_848 : vec4<f32> = u_xlat8;
        let x_850 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_848.x, x_848.x, x_848.x, x_848.y) * vec4<f32>(x_850.z, x_850.w, x_850.y, x_850.z));
        let x_854 : vec4<f32> = u_xlat8;
        let x_856 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_854.y, x_854.y, x_854.z, x_854.z) * x_856);
        let x_859 : f32 = u_xlat8.z;
        let x_861 : f32 = u_xlat13.y;
        u_xlat7.x = (x_859 * x_861);
        let x_865 : vec4<f32> = u_xlat11;
        let x_866 : vec2<f32> = vec2<f32>(x_865.x, x_865.y);
        let x_868 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_866.x, x_866.y, x_868);
        let x_876 : vec3<f32> = txVec4;
        let x_878 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_876.xy, x_876.z);
        u_xlat28 = x_878;
        let x_880 : vec4<f32> = u_xlat11;
        let x_881 : vec2<f32> = vec2<f32>(x_880.z, x_880.w);
        let x_883 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_881.x, x_881.y, x_883);
        let x_890 : vec3<f32> = txVec5;
        let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_890.xy, x_890.z);
        u_xlat8.x = x_892;
        let x_895 : f32 = u_xlat8.x;
        let x_897 : f32 = u_xlat14.y;
        u_xlat8.x = (x_895 * x_897);
        let x_901 : f32 = u_xlat14.x;
        let x_902 : f32 = u_xlat28;
        let x_905 : f32 = u_xlat8.x;
        u_xlat28 = ((x_901 * x_902) + x_905);
        let x_908 : vec2<f32> = u_xlat49;
        let x_910 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_908.x, x_908.y, x_910);
        let x_917 : vec3<f32> = txVec6;
        let x_919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_917.xy, x_917.z);
        u_xlat49.x = x_919;
        let x_922 : f32 = u_xlat14.z;
        let x_924 : f32 = u_xlat49.x;
        let x_926 : f32 = u_xlat28;
        u_xlat28 = ((x_922 * x_924) + x_926);
        let x_929 : vec4<f32> = u_xlat10;
        let x_930 : vec2<f32> = vec2<f32>(x_929.x, x_929.y);
        let x_932 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_930.x, x_930.y, x_932);
        let x_939 : vec3<f32> = txVec7;
        let x_941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_939.xy, x_939.z);
        u_xlat49.x = x_941;
        let x_944 : f32 = u_xlat14.w;
        let x_946 : f32 = u_xlat49.x;
        let x_948 : f32 = u_xlat28;
        u_xlat28 = ((x_944 * x_946) + x_948);
        let x_951 : vec4<f32> = u_xlat12;
        let x_952 : vec2<f32> = vec2<f32>(x_951.x, x_951.y);
        let x_954 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_952.x, x_952.y, x_954);
        let x_961 : vec3<f32> = txVec8;
        let x_963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_961.xy, x_961.z);
        u_xlat49.x = x_963;
        let x_966 : f32 = u_xlat15.x;
        let x_968 : f32 = u_xlat49.x;
        let x_970 : f32 = u_xlat28;
        u_xlat28 = ((x_966 * x_968) + x_970);
        let x_973 : vec4<f32> = u_xlat12;
        let x_974 : vec2<f32> = vec2<f32>(x_973.z, x_973.w);
        let x_976 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_974.x, x_974.y, x_976);
        let x_983 : vec3<f32> = txVec9;
        let x_985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_983.xy, x_983.z);
        u_xlat49.x = x_985;
        let x_988 : f32 = u_xlat15.y;
        let x_990 : f32 = u_xlat49.x;
        let x_992 : f32 = u_xlat28;
        u_xlat28 = ((x_988 * x_990) + x_992);
        let x_995 : vec4<f32> = u_xlat10;
        let x_996 : vec2<f32> = vec2<f32>(x_995.z, x_995.w);
        let x_998 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_996.x, x_996.y, x_998);
        let x_1005 : vec3<f32> = txVec10;
        let x_1007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1005.xy, x_1005.z);
        u_xlat49.x = x_1007;
        let x_1010 : f32 = u_xlat15.z;
        let x_1012 : f32 = u_xlat49.x;
        let x_1014 : f32 = u_xlat28;
        u_xlat28 = ((x_1010 * x_1012) + x_1014);
        let x_1017 : vec4<f32> = u_xlat9;
        let x_1018 : vec2<f32> = vec2<f32>(x_1017.x, x_1017.y);
        let x_1020 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1018.x, x_1018.y, x_1020);
        let x_1027 : vec3<f32> = txVec11;
        let x_1029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1027.xy, x_1027.z);
        u_xlat49.x = x_1029;
        let x_1032 : f32 = u_xlat15.w;
        let x_1034 : f32 = u_xlat49.x;
        let x_1036 : f32 = u_xlat28;
        u_xlat28 = ((x_1032 * x_1034) + x_1036);
        let x_1039 : vec4<f32> = u_xlat9;
        let x_1040 : vec2<f32> = vec2<f32>(x_1039.z, x_1039.w);
        let x_1042 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1040.x, x_1040.y, x_1042);
        let x_1049 : vec3<f32> = txVec12;
        let x_1051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1049.xy, x_1049.z);
        u_xlat49.x = x_1051;
        let x_1054 : f32 = u_xlat7.x;
        let x_1056 : f32 = u_xlat49.x;
        let x_1058 : f32 = u_xlat28;
        u_xlat69 = ((x_1054 * x_1056) + x_1058);
      } else {
        let x_1061 : vec4<f32> = u_xlat4;
        let x_1064 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1067 : vec2<f32> = ((vec2<f32>(x_1061.x, x_1061.y) * vec2<f32>(x_1064.z, x_1064.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1068 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1067.x, x_1067.y, x_1068.z, x_1068.w);
        let x_1070 : vec4<f32> = u_xlat7;
        let x_1072 : vec2<f32> = floor(vec2<f32>(x_1070.x, x_1070.y));
        let x_1073 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1072.x, x_1072.y, x_1073.z, x_1073.w);
        let x_1075 : vec4<f32> = u_xlat4;
        let x_1078 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1081 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1075.x, x_1075.y) * vec2<f32>(x_1078.z, x_1078.w)) + -(vec2<f32>(x_1081.x, x_1081.y)));
        let x_1085 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1085.x, x_1085.x, x_1085.y, x_1085.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1088 : vec4<f32> = u_xlat8;
        let x_1090 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1088.x, x_1088.x, x_1088.z, x_1088.z) * vec4<f32>(x_1090.x, x_1090.x, x_1090.z, x_1090.z));
        let x_1093 : vec4<f32> = u_xlat9;
        let x_1097 : vec2<f32> = (vec2<f32>(x_1093.y, x_1093.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1098 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1098.x, x_1097.x, x_1098.z, x_1097.y);
        let x_1100 : vec4<f32> = u_xlat9;
        let x_1103 : vec2<f32> = u_xlat49;
        let x_1105 : vec2<f32> = ((vec2<f32>(x_1100.x, x_1100.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1103));
        let x_1106 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1105.x, x_1106.y, x_1105.y, x_1106.w);
        let x_1108 : vec2<f32> = u_xlat49;
        let x_1110 : vec2<f32> = (-(x_1108) + vec2<f32>(1.0f, 1.0f));
        let x_1111 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1110.x, x_1110.y, x_1111.z, x_1111.w);
        let x_1113 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1113, vec2<f32>(0.0f, 0.0f));
        let x_1115 : vec2<f32> = u_xlat51;
        let x_1117 : vec2<f32> = u_xlat51;
        let x_1119 : vec4<f32> = u_xlat9;
        let x_1121 : vec2<f32> = ((-(x_1115) * x_1117) + vec2<f32>(x_1119.x, x_1119.y));
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
        let x_1124 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1124, vec2<f32>(0.0f, 0.0f));
        let x_1127 : vec2<f32> = u_xlat51;
        let x_1129 : vec2<f32> = u_xlat51;
        let x_1131 : vec4<f32> = u_xlat8;
        let x_1133 : vec2<f32> = ((-(x_1127) * x_1129) + vec2<f32>(x_1131.y, x_1131.w));
        let x_1134 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1133.x, x_1134.y, x_1133.y);
        let x_1136 : vec4<f32> = u_xlat9;
        let x_1139 : vec2<f32> = (vec2<f32>(x_1136.x, x_1136.y) + vec2<f32>(2.0f, 2.0f));
        let x_1140 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1139.x, x_1139.y, x_1140.z, x_1140.w);
        let x_1142 : vec3<f32> = u_xlat29;
        let x_1144 : vec2<f32> = (vec2<f32>(x_1142.x, x_1142.z) + vec2<f32>(2.0f, 2.0f));
        let x_1145 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1145.x, x_1144.x, x_1145.z, x_1144.y);
        let x_1148 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1148 * 0.081632003f);
        let x_1152 : vec4<f32> = u_xlat8;
        let x_1155 : vec3<f32> = (vec3<f32>(x_1152.z, x_1152.x, x_1152.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1156 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
        let x_1158 : vec4<f32> = u_xlat9;
        let x_1161 : vec2<f32> = (vec2<f32>(x_1158.x, x_1158.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1162 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1161.x, x_1161.y, x_1162.z, x_1162.w);
        let x_1165 : f32 = u_xlat12.y;
        u_xlat11.x = x_1165;
        let x_1167 : vec2<f32> = u_xlat49;
        let x_1174 : vec2<f32> = ((vec2<f32>(x_1167.x, x_1167.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1175 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1175.x, x_1174.x, x_1175.z, x_1174.y);
        let x_1177 : vec2<f32> = u_xlat49;
        let x_1181 : vec2<f32> = ((vec2<f32>(x_1177.x, x_1177.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1182 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1181.x, x_1182.y, x_1181.y, x_1182.w);
        let x_1185 : f32 = u_xlat8.x;
        u_xlat9.y = x_1185;
        let x_1188 : f32 = u_xlat10.y;
        u_xlat9.w = x_1188;
        let x_1190 : vec4<f32> = u_xlat9;
        let x_1191 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1190 + x_1191);
        let x_1193 : vec2<f32> = u_xlat49;
        let x_1196 : vec2<f32> = ((vec2<f32>(x_1193.y, x_1193.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1197 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1197.x, x_1196.x, x_1197.z, x_1196.y);
        let x_1199 : vec2<f32> = u_xlat49;
        let x_1202 : vec2<f32> = ((vec2<f32>(x_1199.y, x_1199.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1203 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1202.x, x_1203.y, x_1202.y, x_1203.w);
        let x_1206 : f32 = u_xlat8.y;
        u_xlat10.y = x_1206;
        let x_1208 : vec4<f32> = u_xlat10;
        let x_1209 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1208 + x_1209);
        let x_1211 : vec4<f32> = u_xlat9;
        let x_1212 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1211 / x_1212);
        let x_1214 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1214 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1220 : vec4<f32> = u_xlat10;
        let x_1221 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1220 / x_1221);
        let x_1223 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1223 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1225 : vec4<f32> = u_xlat9;
        let x_1228 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1225.w, x_1225.x, x_1225.y, x_1225.z) * vec4<f32>(x_1228.x, x_1228.x, x_1228.x, x_1228.x));
        let x_1231 : vec4<f32> = u_xlat10;
        let x_1234 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1231.x, x_1231.w, x_1231.y, x_1231.z) * vec4<f32>(x_1234.y, x_1234.y, x_1234.y, x_1234.y));
        let x_1237 : vec4<f32> = u_xlat9;
        let x_1238 : vec3<f32> = vec3<f32>(x_1237.y, x_1237.z, x_1237.w);
        let x_1239 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1238.x, x_1239.y, x_1238.y, x_1238.z);
        let x_1242 : f32 = u_xlat10.x;
        u_xlat12.y = x_1242;
        let x_1244 : vec4<f32> = u_xlat7;
        let x_1247 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1250 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y) * vec4<f32>(x_1247.x, x_1247.y, x_1247.x, x_1247.y)) + vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1250.y));
        let x_1253 : vec4<f32> = u_xlat7;
        let x_1256 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1253.x, x_1253.y) * vec2<f32>(x_1256.x, x_1256.y)) + vec2<f32>(x_1259.w, x_1259.y));
        let x_1263 : f32 = u_xlat12.y;
        u_xlat9.y = x_1263;
        let x_1266 : f32 = u_xlat10.z;
        u_xlat12.y = x_1266;
        let x_1268 : vec4<f32> = u_xlat7;
        let x_1271 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1274 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y) * vec4<f32>(x_1271.x, x_1271.y, x_1271.x, x_1271.y)) + vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1274.y));
        let x_1277 : vec4<f32> = u_xlat7;
        let x_1280 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1283 : vec4<f32> = u_xlat12;
        let x_1285 : vec2<f32> = ((vec2<f32>(x_1277.x, x_1277.y) * vec2<f32>(x_1280.x, x_1280.y)) + vec2<f32>(x_1283.w, x_1283.y));
        let x_1286 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1285.x, x_1285.y, x_1286.z, x_1286.w);
        let x_1289 : f32 = u_xlat12.y;
        u_xlat9.z = x_1289;
        let x_1292 : vec4<f32> = u_xlat7;
        let x_1295 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1298 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y) * vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.y)) + vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.z));
        let x_1302 : f32 = u_xlat10.w;
        u_xlat12.y = x_1302;
        let x_1305 : vec4<f32> = u_xlat7;
        let x_1308 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1305.x, x_1305.y, x_1305.x, x_1305.y) * vec4<f32>(x_1308.x, x_1308.y, x_1308.x, x_1308.y)) + vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1311.y));
        let x_1315 : vec4<f32> = u_xlat7;
        let x_1318 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1321 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1315.x, x_1315.y) * vec2<f32>(x_1318.x, x_1318.y)) + vec2<f32>(x_1321.w, x_1321.y));
        let x_1325 : f32 = u_xlat12.y;
        u_xlat9.w = x_1325;
        let x_1328 : vec4<f32> = u_xlat7;
        let x_1331 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1334 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1328.x, x_1328.y) * vec2<f32>(x_1331.x, x_1331.y)) + vec2<f32>(x_1334.x, x_1334.w));
        let x_1337 : vec4<f32> = u_xlat12;
        let x_1338 : vec3<f32> = vec3<f32>(x_1337.x, x_1337.z, x_1337.w);
        let x_1339 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1338.x, x_1339.y, x_1338.y, x_1338.z);
        let x_1341 : vec4<f32> = u_xlat7;
        let x_1344 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1347 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1341.x, x_1341.y, x_1341.x, x_1341.y) * vec4<f32>(x_1344.x, x_1344.y, x_1344.x, x_1344.y)) + vec4<f32>(x_1347.x, x_1347.y, x_1347.z, x_1347.y));
        let x_1351 : vec4<f32> = u_xlat7;
        let x_1354 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1357 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1351.x, x_1351.y) * vec2<f32>(x_1354.x, x_1354.y)) + vec2<f32>(x_1357.w, x_1357.y));
        let x_1361 : f32 = u_xlat9.x;
        u_xlat10.x = x_1361;
        let x_1363 : vec4<f32> = u_xlat7;
        let x_1366 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1369 : vec4<f32> = u_xlat10;
        let x_1371 : vec2<f32> = ((vec2<f32>(x_1363.x, x_1363.y) * vec2<f32>(x_1366.x, x_1366.y)) + vec2<f32>(x_1369.x, x_1369.y));
        let x_1372 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1371.x, x_1371.y, x_1372.z, x_1372.w);
        let x_1375 : vec4<f32> = u_xlat8;
        let x_1377 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1375.x, x_1375.x, x_1375.x, x_1375.x) * x_1377);
        let x_1380 : vec4<f32> = u_xlat8;
        let x_1382 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1380.y, x_1380.y, x_1380.y, x_1380.y) * x_1382);
        let x_1385 : vec4<f32> = u_xlat8;
        let x_1387 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1385.z, x_1385.z, x_1385.z, x_1385.z) * x_1387);
        let x_1389 : vec4<f32> = u_xlat8;
        let x_1391 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1389.w, x_1389.w, x_1389.w, x_1389.w) * x_1391);
        let x_1394 : vec4<f32> = u_xlat13;
        let x_1395 : vec2<f32> = vec2<f32>(x_1394.x, x_1394.y);
        let x_1397 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec13;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1404.xy, x_1404.z);
        u_xlat9.x = x_1406;
        let x_1409 : vec4<f32> = u_xlat13;
        let x_1410 : vec2<f32> = vec2<f32>(x_1409.z, x_1409.w);
        let x_1412 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1410.x, x_1410.y, x_1412);
        let x_1420 : vec3<f32> = txVec14;
        let x_1422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1420.xy, x_1420.z);
        u_xlat72 = x_1422;
        let x_1423 : f32 = u_xlat72;
        let x_1425 : f32 = u_xlat18.y;
        u_xlat72 = (x_1423 * x_1425);
        let x_1428 : f32 = u_xlat18.x;
        let x_1430 : f32 = u_xlat9.x;
        let x_1432 : f32 = u_xlat72;
        u_xlat9.x = ((x_1428 * x_1430) + x_1432);
        let x_1436 : vec2<f32> = u_xlat49;
        let x_1438 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1436.x, x_1436.y, x_1438);
        let x_1445 : vec3<f32> = txVec15;
        let x_1447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1445.xy, x_1445.z);
        u_xlat49.x = x_1447;
        let x_1450 : f32 = u_xlat18.z;
        let x_1452 : f32 = u_xlat49.x;
        let x_1455 : f32 = u_xlat9.x;
        u_xlat49.x = ((x_1450 * x_1452) + x_1455);
        let x_1459 : vec4<f32> = u_xlat16;
        let x_1460 : vec2<f32> = vec2<f32>(x_1459.x, x_1459.y);
        let x_1462 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1460.x, x_1460.y, x_1462);
        let x_1470 : vec3<f32> = txVec16;
        let x_1472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1470.xy, x_1470.z);
        u_xlat70 = x_1472;
        let x_1474 : f32 = u_xlat18.w;
        let x_1475 : f32 = u_xlat70;
        let x_1478 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1474 * x_1475) + x_1478);
        let x_1482 : vec4<f32> = u_xlat14;
        let x_1483 : vec2<f32> = vec2<f32>(x_1482.x, x_1482.y);
        let x_1485 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1492 : vec3<f32> = txVec17;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1492.xy, x_1492.z);
        u_xlat70 = x_1494;
        let x_1496 : f32 = u_xlat19.x;
        let x_1497 : f32 = u_xlat70;
        let x_1500 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1496 * x_1497) + x_1500);
        let x_1504 : vec4<f32> = u_xlat14;
        let x_1505 : vec2<f32> = vec2<f32>(x_1504.z, x_1504.w);
        let x_1507 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1514 : vec3<f32> = txVec18;
        let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1514.xy, x_1514.z);
        u_xlat70 = x_1516;
        let x_1518 : f32 = u_xlat19.y;
        let x_1519 : f32 = u_xlat70;
        let x_1522 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1518 * x_1519) + x_1522);
        let x_1526 : vec4<f32> = u_xlat15;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.x, x_1526.y);
        let x_1529 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1536 : vec3<f32> = txVec19;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1536.xy, x_1536.z);
        u_xlat70 = x_1538;
        let x_1540 : f32 = u_xlat19.z;
        let x_1541 : f32 = u_xlat70;
        let x_1544 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1540 * x_1541) + x_1544);
        let x_1548 : vec4<f32> = u_xlat16;
        let x_1549 : vec2<f32> = vec2<f32>(x_1548.z, x_1548.w);
        let x_1551 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec20;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1558.xy, x_1558.z);
        u_xlat70 = x_1560;
        let x_1562 : f32 = u_xlat19.w;
        let x_1563 : f32 = u_xlat70;
        let x_1566 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1562 * x_1563) + x_1566);
        let x_1570 : vec4<f32> = u_xlat17;
        let x_1571 : vec2<f32> = vec2<f32>(x_1570.x, x_1570.y);
        let x_1573 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1571.x, x_1571.y, x_1573);
        let x_1580 : vec3<f32> = txVec21;
        let x_1582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1580.xy, x_1580.z);
        u_xlat70 = x_1582;
        let x_1584 : f32 = u_xlat20.x;
        let x_1585 : f32 = u_xlat70;
        let x_1588 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1584 * x_1585) + x_1588);
        let x_1592 : vec4<f32> = u_xlat17;
        let x_1593 : vec2<f32> = vec2<f32>(x_1592.z, x_1592.w);
        let x_1595 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1593.x, x_1593.y, x_1595);
        let x_1602 : vec3<f32> = txVec22;
        let x_1604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1602.xy, x_1602.z);
        u_xlat70 = x_1604;
        let x_1606 : f32 = u_xlat20.y;
        let x_1607 : f32 = u_xlat70;
        let x_1610 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1606 * x_1607) + x_1610);
        let x_1614 : vec2<f32> = u_xlat30;
        let x_1616 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
        let x_1623 : vec3<f32> = txVec23;
        let x_1625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1623.xy, x_1623.z);
        u_xlat70 = x_1625;
        let x_1627 : f32 = u_xlat20.z;
        let x_1628 : f32 = u_xlat70;
        let x_1631 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1627 * x_1628) + x_1631);
        let x_1635 : vec2<f32> = u_xlat57;
        let x_1637 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec24;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1644.xy, x_1644.z);
        u_xlat70 = x_1646;
        let x_1648 : f32 = u_xlat20.w;
        let x_1649 : f32 = u_xlat70;
        let x_1652 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1648 * x_1649) + x_1652);
        let x_1656 : vec4<f32> = u_xlat12;
        let x_1657 : vec2<f32> = vec2<f32>(x_1656.x, x_1656.y);
        let x_1659 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
        let x_1666 : vec3<f32> = txVec25;
        let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1666.xy, x_1666.z);
        u_xlat70 = x_1668;
        let x_1670 : f32 = u_xlat8.x;
        let x_1671 : f32 = u_xlat70;
        let x_1674 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1670 * x_1671) + x_1674);
        let x_1678 : vec4<f32> = u_xlat12;
        let x_1679 : vec2<f32> = vec2<f32>(x_1678.z, x_1678.w);
        let x_1681 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec26;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1688.xy, x_1688.z);
        u_xlat70 = x_1690;
        let x_1692 : f32 = u_xlat8.y;
        let x_1693 : f32 = u_xlat70;
        let x_1696 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1692 * x_1693) + x_1696);
        let x_1700 : vec2<f32> = u_xlat52;
        let x_1702 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1700.x, x_1700.y, x_1702);
        let x_1709 : vec3<f32> = txVec27;
        let x_1711 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1709.xy, x_1709.z);
        u_xlat70 = x_1711;
        let x_1713 : f32 = u_xlat8.z;
        let x_1714 : f32 = u_xlat70;
        let x_1717 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1713 * x_1714) + x_1717);
        let x_1721 : vec4<f32> = u_xlat7;
        let x_1722 : vec2<f32> = vec2<f32>(x_1721.x, x_1721.y);
        let x_1724 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1722.x, x_1722.y, x_1724);
        let x_1731 : vec3<f32> = txVec28;
        let x_1733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1731.xy, x_1731.z);
        u_xlat7.x = x_1733;
        let x_1736 : f32 = u_xlat8.w;
        let x_1738 : f32 = u_xlat7.x;
        let x_1741 : f32 = u_xlat49.x;
        u_xlat69 = ((x_1736 * x_1738) + x_1741);
      }
    }
  } else {
    let x_1745 : vec4<f32> = u_xlat4;
    let x_1746 : vec2<f32> = vec2<f32>(x_1745.x, x_1745.y);
    let x_1748 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1746.x, x_1746.y, x_1748);
    let x_1755 : vec3<f32> = txVec29;
    let x_1757 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1755.xy, x_1755.z);
    u_xlat69 = x_1757;
  }
  let x_1759 : f32 = x_133.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1759) + 1.0f);
  let x_1763 : f32 = u_xlat69;
  let x_1765 : f32 = x_133.x_MainLightShadowParams.x;
  let x_1768 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1763 * x_1765) + x_1768);
  let x_1773 : f32 = u_xlat4.z;
  u_xlatb25 = (0.0f >= x_1773);
  let x_1777 : f32 = u_xlat4.z;
  u_xlatb46 = (x_1777 >= 1.0f);
  let x_1779 : bool = u_xlatb46;
  let x_1780 : bool = u_xlatb25;
  u_xlatb25 = (x_1779 | x_1780);
  let x_1782 : bool = u_xlatb25;
  if (x_1782) {
    x_1783 = 1.0f;
  } else {
    let x_1788 : f32 = u_xlat4.x;
    x_1783 = x_1788;
  }
  let x_1789 : f32 = x_1783;
  u_xlat4.x = x_1789;
  let x_1791 : vec3<f32> = vs_TEXCOORD1;
  let x_1793 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1795 : vec3<f32> = (x_1791 + -(x_1793));
  let x_1796 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1796.w);
  let x_1799 : vec4<f32> = u_xlat7;
  let x_1801 : vec4<f32> = u_xlat7;
  u_xlat25 = dot(vec3<f32>(x_1799.x, x_1799.y, x_1799.z), vec3<f32>(x_1801.x, x_1801.y, x_1801.z));
  let x_1804 : f32 = u_xlat25;
  let x_1806 : f32 = x_133.x_MainLightShadowParams.z;
  let x_1809 : f32 = x_133.x_MainLightShadowParams.w;
  u_xlat25 = ((x_1804 * x_1806) + x_1809);
  let x_1811 : f32 = u_xlat25;
  u_xlat25 = clamp(x_1811, 0.0f, 1.0f);
  let x_1815 : f32 = u_xlat4.x;
  u_xlat46.x = (-(x_1815) + 1.0f);
  let x_1819 : f32 = u_xlat25;
  let x_1821 : f32 = u_xlat46.x;
  let x_1824 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1819 * x_1821) + x_1824);
  let x_1827 : f32 = u_xlat48;
  let x_1830 : vec4<f32> = x_44.x_MainLightColor;
  let x_1832 : vec3<f32> = (vec3<f32>(x_1827, x_1827, x_1827) * vec3<f32>(x_1830.x, x_1830.y, x_1830.z));
  let x_1833 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1832.x, x_1832.y, x_1832.z, x_1833.w);
  let x_1835 : vec3<f32> = u_xlat2;
  let x_1837 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(-(x_1835), x_1837);
  let x_1839 : f32 = u_xlat25;
  let x_1840 : f32 = u_xlat25;
  u_xlat25 = (x_1839 + x_1840);
  let x_1842 : vec3<f32> = u_xlat3;
  let x_1843 : f32 = u_xlat25;
  let x_1847 : vec3<f32> = u_xlat2;
  let x_1849 : vec3<f32> = ((x_1842 * -(vec3<f32>(x_1843, x_1843, x_1843))) + -(x_1847));
  let x_1850 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1849.x, x_1849.y, x_1849.z, x_1850.w);
  let x_1852 : vec3<f32> = u_xlat3;
  let x_1853 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(x_1852, x_1853);
  let x_1855 : f32 = u_xlat25;
  u_xlat25 = clamp(x_1855, 0.0f, 1.0f);
  let x_1857 : f32 = u_xlat25;
  u_xlat25 = (-(x_1857) + 1.0f);
  let x_1860 : f32 = u_xlat25;
  let x_1861 : f32 = u_xlat25;
  u_xlat25 = (x_1860 * x_1861);
  let x_1863 : f32 = u_xlat25;
  let x_1864 : f32 = u_xlat25;
  u_xlat25 = (x_1863 * x_1864);
  let x_1866 : f32 = u_xlat65;
  u_xlat46.x = ((-(x_1866) * 0.699999988f) + 1.700000048f);
  let x_1873 : f32 = u_xlat65;
  let x_1875 : f32 = u_xlat46.x;
  u_xlat65 = (x_1873 * x_1875);
  let x_1877 : f32 = u_xlat65;
  u_xlat65 = (x_1877 * 6.0f);
  let x_1888 : vec4<f32> = u_xlat8;
  let x_1890 : f32 = u_xlat65;
  let x_1891 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1888.x, x_1888.y, x_1888.z), x_1890);
  u_xlat8 = x_1891;
  let x_1893 : f32 = u_xlat8.w;
  u_xlat65 = (x_1893 + -1.0f);
  let x_1900 : f32 = x_1898.unity_SpecCube0_HDR.w;
  let x_1901 : f32 = u_xlat65;
  u_xlat65 = ((x_1900 * x_1901) + 1.0f);
  let x_1904 : f32 = u_xlat65;
  u_xlat65 = max(x_1904, 0.0f);
  let x_1906 : f32 = u_xlat65;
  u_xlat65 = log2(x_1906);
  let x_1908 : f32 = u_xlat65;
  let x_1910 : f32 = x_1898.unity_SpecCube0_HDR.y;
  u_xlat65 = (x_1908 * x_1910);
  let x_1912 : f32 = u_xlat65;
  u_xlat65 = exp2(x_1912);
  let x_1914 : f32 = u_xlat65;
  let x_1916 : f32 = x_1898.unity_SpecCube0_HDR.x;
  u_xlat65 = (x_1914 * x_1916);
  let x_1918 : vec4<f32> = u_xlat8;
  let x_1920 : f32 = u_xlat65;
  let x_1922 : vec3<f32> = (vec3<f32>(x_1918.x, x_1918.y, x_1918.z) * vec3<f32>(x_1920, x_1920, x_1920));
  let x_1923 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);
  let x_1925 : f32 = u_xlat67;
  let x_1927 : f32 = u_xlat67;
  u_xlat46 = ((vec2<f32>(x_1925, x_1925) * vec2<f32>(x_1927, x_1927)) + vec2<f32>(-1.0f, 1.0f));
  let x_1933 : f32 = u_xlat46.y;
  u_xlat65 = (1.0f / x_1933);
  let x_1935 : vec4<f32> = u_xlat0;
  let x_1938 : f32 = u_xlat66;
  let x_1940 : vec3<f32> = (-(vec3<f32>(x_1935.x, x_1935.y, x_1935.z)) + vec3<f32>(x_1938, x_1938, x_1938));
  let x_1941 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1940.x, x_1940.y, x_1940.z, x_1941.w);
  let x_1943 : f32 = u_xlat25;
  let x_1945 : vec4<f32> = u_xlat9;
  let x_1948 : vec4<f32> = u_xlat0;
  let x_1950 : vec3<f32> = ((vec3<f32>(x_1943, x_1943, x_1943) * vec3<f32>(x_1945.x, x_1945.y, x_1945.z)) + vec3<f32>(x_1948.x, x_1948.y, x_1948.z));
  let x_1951 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1950.x, x_1950.y, x_1950.z, x_1951.w);
  let x_1953 : f32 = u_xlat65;
  let x_1955 : vec4<f32> = u_xlat9;
  let x_1957 : vec3<f32> = (vec3<f32>(x_1953, x_1953, x_1953) * vec3<f32>(x_1955.x, x_1955.y, x_1955.z));
  let x_1958 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1957.x, x_1957.y, x_1957.z, x_1958.w);
  let x_1960 : vec4<f32> = u_xlat8;
  let x_1962 : vec4<f32> = u_xlat9;
  let x_1964 : vec3<f32> = (vec3<f32>(x_1960.x, x_1960.y, x_1960.z) * vec3<f32>(x_1962.x, x_1962.y, x_1962.z));
  let x_1965 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1964.x, x_1964.y, x_1964.z, x_1965.w);
  let x_1967 : vec4<f32> = u_xlat5;
  let x_1969 : vec3<f32> = u_xlat22;
  let x_1971 : vec4<f32> = u_xlat8;
  let x_1973 : vec3<f32> = ((vec3<f32>(x_1967.x, x_1967.y, x_1967.z) * x_1969) + vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
  let x_1974 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
  let x_1977 : f32 = u_xlat4.x;
  let x_1979 : f32 = x_1898.unity_LightData.z;
  u_xlat65 = (x_1977 * x_1979);
  let x_1981 : vec3<f32> = u_xlat3;
  let x_1983 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat66 = dot(x_1981, vec3<f32>(x_1983.x, x_1983.y, x_1983.z));
  let x_1986 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1986, 0.0f, 1.0f);
  let x_1988 : f32 = u_xlat65;
  let x_1989 : f32 = u_xlat66;
  u_xlat65 = (x_1988 * x_1989);
  let x_1991 : f32 = u_xlat65;
  let x_1993 : vec4<f32> = u_xlat7;
  let x_1995 : vec3<f32> = (vec3<f32>(x_1991, x_1991, x_1991) * vec3<f32>(x_1993.x, x_1993.y, x_1993.z));
  let x_1996 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1995.x, x_1995.y, x_1996.z, x_1995.z);
  let x_1998 : vec3<f32> = u_xlat2;
  let x_2000 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2002 : vec3<f32> = (x_1998 + vec3<f32>(x_2000.x, x_2000.y, x_2000.z));
  let x_2003 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2002.x, x_2002.y, x_2002.z, x_2003.w);
  let x_2005 : vec4<f32> = u_xlat7;
  let x_2007 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2005.x, x_2005.y, x_2005.z), vec3<f32>(x_2007.x, x_2007.y, x_2007.z));
  let x_2010 : f32 = u_xlat65;
  u_xlat65 = max(x_2010, 1.17549435e-37f);
  let x_2013 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_2013);
  let x_2015 : f32 = u_xlat65;
  let x_2017 : vec4<f32> = u_xlat7;
  let x_2019 : vec3<f32> = (vec3<f32>(x_2015, x_2015, x_2015) * vec3<f32>(x_2017.x, x_2017.y, x_2017.z));
  let x_2020 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2019.x, x_2019.y, x_2019.z, x_2020.w);
  let x_2022 : vec3<f32> = u_xlat3;
  let x_2023 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(x_2022, vec3<f32>(x_2023.x, x_2023.y, x_2023.z));
  let x_2026 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2026, 0.0f, 1.0f);
  let x_2029 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2031 : vec4<f32> = u_xlat7;
  u_xlat66 = dot(vec3<f32>(x_2029.x, x_2029.y, x_2029.z), vec3<f32>(x_2031.x, x_2031.y, x_2031.z));
  let x_2034 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2034, 0.0f, 1.0f);
  let x_2036 : f32 = u_xlat65;
  let x_2037 : f32 = u_xlat65;
  u_xlat65 = (x_2036 * x_2037);
  let x_2039 : f32 = u_xlat65;
  let x_2041 : f32 = u_xlat46.x;
  u_xlat65 = ((x_2039 * x_2041) + 1.000010014f);
  let x_2045 : f32 = u_xlat66;
  let x_2046 : f32 = u_xlat66;
  u_xlat66 = (x_2045 * x_2046);
  let x_2048 : f32 = u_xlat65;
  let x_2049 : f32 = u_xlat65;
  u_xlat65 = (x_2048 * x_2049);
  let x_2051 : f32 = u_xlat66;
  u_xlat66 = max(x_2051, 0.100000001f);
  let x_2054 : f32 = u_xlat65;
  let x_2055 : f32 = u_xlat66;
  u_xlat65 = (x_2054 * x_2055);
  let x_2057 : f32 = u_xlat27;
  let x_2058 : f32 = u_xlat65;
  u_xlat65 = (x_2057 * x_2058);
  let x_2060 : f32 = u_xlat68;
  let x_2061 : f32 = u_xlat65;
  u_xlat65 = (x_2060 / x_2061);
  let x_2063 : vec4<f32> = u_xlat0;
  let x_2065 : f32 = u_xlat65;
  let x_2068 : vec3<f32> = u_xlat22;
  let x_2069 : vec3<f32> = ((vec3<f32>(x_2063.x, x_2063.y, x_2063.z) * vec3<f32>(x_2065, x_2065, x_2065)) + x_2068);
  let x_2070 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2069.x, x_2069.y, x_2069.z, x_2070.w);
  let x_2072 : vec4<f32> = u_xlat4;
  let x_2074 : vec4<f32> = u_xlat7;
  let x_2076 : vec3<f32> = (vec3<f32>(x_2072.x, x_2072.y, x_2072.w) * vec3<f32>(x_2074.x, x_2074.y, x_2074.z));
  let x_2077 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2076.x, x_2076.y, x_2077.z, x_2076.z);
  let x_2080 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2082 : f32 = x_1898.unity_LightData.y;
  u_xlat65 = min(x_2080, x_2082);
  let x_2085 : f32 = u_xlat65;
  u_xlatu65 = bitcast<u32>(i32(x_2085));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2097 : u32 = u_xlatu_loop_1;
    let x_2098 : u32 = u_xlatu65;
    if ((x_2097 < x_2098)) {
    } else {
      break;
    }
    let x_2101 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2101 >> 2u);
    let x_2104 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2104 & 3u));
    let x_2107 : u32 = u_xlatu69;
    let x_2110 : vec4<f32> = x_1898.unity_LightIndices[bitcast<i32>(x_2107)];
    let x_2120 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2125 : vec4<u32> = indexable[x_2120];
    u_xlat69 = dot(x_2110, bitcast<vec4<f32>>(x_2125));
    let x_2129 : f32 = u_xlat69;
    u_xlati69 = i32(x_2129);
    let x_2131 : vec3<f32> = vs_TEXCOORD1;
    let x_2143 : i32 = u_xlati69;
    let x_2145 : vec4<f32> = x_2142.x_AdditionalLightsPosition[x_2143];
    let x_2148 : i32 = u_xlati69;
    let x_2150 : vec4<f32> = x_2142.x_AdditionalLightsPosition[x_2148];
    let x_2152 : vec3<f32> = ((-(x_2131) * vec3<f32>(x_2145.w, x_2145.w, x_2145.w)) + vec3<f32>(x_2150.x, x_2150.y, x_2150.z));
    let x_2153 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2152.x, x_2152.y, x_2152.z, x_2153.w);
    let x_2155 : vec4<f32> = u_xlat8;
    let x_2157 : vec4<f32> = u_xlat8;
    u_xlat70 = dot(vec3<f32>(x_2155.x, x_2155.y, x_2155.z), vec3<f32>(x_2157.x, x_2157.y, x_2157.z));
    let x_2160 : f32 = u_xlat70;
    u_xlat70 = max(x_2160, 6.10351562e-05f);
    let x_2164 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_2164);
    let x_2166 : f32 = u_xlat71;
    let x_2168 : vec4<f32> = u_xlat8;
    let x_2170 : vec3<f32> = (vec3<f32>(x_2166, x_2166, x_2166) * vec3<f32>(x_2168.x, x_2168.y, x_2168.z));
    let x_2171 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2170.x, x_2170.y, x_2170.z, x_2171.w);
    let x_2173 : f32 = u_xlat70;
    u_xlat72 = (1.0f / x_2173);
    let x_2175 : f32 = u_xlat70;
    let x_2176 : i32 = u_xlati69;
    let x_2178 : f32 = x_2142.x_AdditionalLightsAttenuation[x_2176].x;
    u_xlat70 = (x_2175 * x_2178);
    let x_2180 : f32 = u_xlat70;
    let x_2182 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2180) * x_2182) + 1.0f);
    let x_2185 : f32 = u_xlat70;
    u_xlat70 = max(x_2185, 0.0f);
    let x_2187 : f32 = u_xlat70;
    let x_2188 : f32 = u_xlat70;
    u_xlat70 = (x_2187 * x_2188);
    let x_2190 : f32 = u_xlat70;
    let x_2191 : f32 = u_xlat72;
    u_xlat70 = (x_2190 * x_2191);
    let x_2193 : i32 = u_xlati69;
    let x_2195 : vec4<f32> = x_2142.x_AdditionalLightsSpotDir[x_2193];
    let x_2197 : vec4<f32> = u_xlat9;
    u_xlat72 = dot(vec3<f32>(x_2195.x, x_2195.y, x_2195.z), vec3<f32>(x_2197.x, x_2197.y, x_2197.z));
    let x_2200 : f32 = u_xlat72;
    let x_2201 : i32 = u_xlati69;
    let x_2203 : f32 = x_2142.x_AdditionalLightsAttenuation[x_2201].z;
    let x_2205 : i32 = u_xlati69;
    let x_2207 : f32 = x_2142.x_AdditionalLightsAttenuation[x_2205].w;
    u_xlat72 = ((x_2200 * x_2203) + x_2207);
    let x_2209 : f32 = u_xlat72;
    u_xlat72 = clamp(x_2209, 0.0f, 1.0f);
    let x_2211 : f32 = u_xlat72;
    let x_2212 : f32 = u_xlat72;
    u_xlat72 = (x_2211 * x_2212);
    let x_2214 : f32 = u_xlat70;
    let x_2215 : f32 = u_xlat72;
    u_xlat70 = (x_2214 * x_2215);
    let x_2217 : f32 = u_xlat48;
    let x_2219 : i32 = u_xlati69;
    let x_2221 : vec4<f32> = x_2142.x_AdditionalLightsColor[x_2219];
    let x_2223 : vec3<f32> = (vec3<f32>(x_2217, x_2217, x_2217) * vec3<f32>(x_2221.x, x_2221.y, x_2221.z));
    let x_2224 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2223.x, x_2223.y, x_2223.z, x_2224.w);
    let x_2226 : vec3<f32> = u_xlat3;
    let x_2227 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(x_2226, vec3<f32>(x_2227.x, x_2227.y, x_2227.z));
    let x_2230 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2230, 0.0f, 1.0f);
    let x_2232 : f32 = u_xlat69;
    let x_2233 : f32 = u_xlat70;
    u_xlat69 = (x_2232 * x_2233);
    let x_2235 : f32 = u_xlat69;
    let x_2237 : vec4<f32> = u_xlat10;
    let x_2239 : vec3<f32> = (vec3<f32>(x_2235, x_2235, x_2235) * vec3<f32>(x_2237.x, x_2237.y, x_2237.z));
    let x_2240 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2239.x, x_2239.y, x_2239.z, x_2240.w);
    let x_2242 : vec4<f32> = u_xlat8;
    let x_2244 : f32 = u_xlat71;
    let x_2247 : vec3<f32> = u_xlat2;
    let x_2248 : vec3<f32> = ((vec3<f32>(x_2242.x, x_2242.y, x_2242.z) * vec3<f32>(x_2244, x_2244, x_2244)) + x_2247);
    let x_2249 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2248.x, x_2248.y, x_2248.z, x_2249.w);
    let x_2251 : vec4<f32> = u_xlat8;
    let x_2253 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2251.x, x_2251.y, x_2251.z), vec3<f32>(x_2253.x, x_2253.y, x_2253.z));
    let x_2256 : f32 = u_xlat69;
    u_xlat69 = max(x_2256, 1.17549435e-37f);
    let x_2258 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_2258);
    let x_2260 : f32 = u_xlat69;
    let x_2262 : vec4<f32> = u_xlat8;
    let x_2264 : vec3<f32> = (vec3<f32>(x_2260, x_2260, x_2260) * vec3<f32>(x_2262.x, x_2262.y, x_2262.z));
    let x_2265 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2264.x, x_2264.y, x_2264.z, x_2265.w);
    let x_2267 : vec3<f32> = u_xlat3;
    let x_2268 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(x_2267, vec3<f32>(x_2268.x, x_2268.y, x_2268.z));
    let x_2271 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2271, 0.0f, 1.0f);
    let x_2273 : vec4<f32> = u_xlat9;
    let x_2275 : vec4<f32> = u_xlat8;
    u_xlat70 = dot(vec3<f32>(x_2273.x, x_2273.y, x_2273.z), vec3<f32>(x_2275.x, x_2275.y, x_2275.z));
    let x_2278 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2278, 0.0f, 1.0f);
    let x_2280 : f32 = u_xlat69;
    let x_2281 : f32 = u_xlat69;
    u_xlat69 = (x_2280 * x_2281);
    let x_2283 : f32 = u_xlat69;
    let x_2285 : f32 = u_xlat46.x;
    u_xlat69 = ((x_2283 * x_2285) + 1.000010014f);
    let x_2288 : f32 = u_xlat70;
    let x_2289 : f32 = u_xlat70;
    u_xlat70 = (x_2288 * x_2289);
    let x_2291 : f32 = u_xlat69;
    let x_2292 : f32 = u_xlat69;
    u_xlat69 = (x_2291 * x_2292);
    let x_2294 : f32 = u_xlat70;
    u_xlat70 = max(x_2294, 0.100000001f);
    let x_2296 : f32 = u_xlat69;
    let x_2297 : f32 = u_xlat70;
    u_xlat69 = (x_2296 * x_2297);
    let x_2299 : f32 = u_xlat27;
    let x_2300 : f32 = u_xlat69;
    u_xlat69 = (x_2299 * x_2300);
    let x_2302 : f32 = u_xlat68;
    let x_2303 : f32 = u_xlat69;
    u_xlat69 = (x_2302 / x_2303);
    let x_2305 : vec4<f32> = u_xlat0;
    let x_2307 : f32 = u_xlat69;
    let x_2310 : vec3<f32> = u_xlat22;
    let x_2311 : vec3<f32> = ((vec3<f32>(x_2305.x, x_2305.y, x_2305.z) * vec3<f32>(x_2307, x_2307, x_2307)) + x_2310);
    let x_2312 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2311.x, x_2311.y, x_2311.z, x_2312.w);
    let x_2314 : vec4<f32> = u_xlat8;
    let x_2316 : vec4<f32> = u_xlat10;
    let x_2319 : vec4<f32> = u_xlat7;
    let x_2321 : vec3<f32> = ((vec3<f32>(x_2314.x, x_2314.y, x_2314.z) * vec3<f32>(x_2316.x, x_2316.y, x_2316.z)) + vec3<f32>(x_2319.x, x_2319.y, x_2319.z));
    let x_2322 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2321.x, x_2321.y, x_2321.z, x_2322.w);

    continuing {
      let x_2324 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2324 + bitcast<u32>(1i));
    }
  }
  let x_2326 : vec4<f32> = u_xlat5;
  let x_2328 : vec3<f32> = u_xlat6;
  let x_2331 : vec4<f32> = u_xlat4;
  let x_2333 : vec3<f32> = ((vec3<f32>(x_2326.x, x_2326.y, x_2326.z) * vec3<f32>(x_2328.x, x_2328.x, x_2328.x)) + vec3<f32>(x_2331.x, x_2331.y, x_2331.w));
  let x_2334 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2333.x, x_2333.y, x_2333.z, x_2334.w);
  let x_2336 : vec4<f32> = u_xlat7;
  let x_2338 : vec4<f32> = u_xlat0;
  let x_2340 : vec3<f32> = (vec3<f32>(x_2336.x, x_2336.y, x_2336.z) + vec3<f32>(x_2338.x, x_2338.y, x_2338.z));
  let x_2341 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2340.x, x_2340.y, x_2340.z, x_2341.w);
  let x_2343 : f32 = u_xlat63;
  let x_2344 : f32 = u_xlat63;
  u_xlat63 = (x_2343 * -(x_2344));
  let x_2347 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2347);
  let x_2349 : vec4<f32> = u_xlat0;
  let x_2353 : vec4<f32> = x_44.unity_FogColor;
  let x_2356 : vec3<f32> = (vec3<f32>(x_2349.x, x_2349.y, x_2349.z) + -(vec3<f32>(x_2353.x, x_2353.y, x_2353.z)));
  let x_2357 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2356.x, x_2356.y, x_2356.z, x_2357.w);
  let x_2361 : f32 = u_xlat63;
  let x_2363 : vec4<f32> = u_xlat0;
  let x_2367 : vec4<f32> = x_44.unity_FogColor;
  let x_2369 : vec3<f32> = ((vec3<f32>(x_2361, x_2361, x_2361) * vec3<f32>(x_2363.x, x_2363.y, x_2363.z)) + vec3<f32>(x_2367.x, x_2367.y, x_2367.z));
  let x_2370 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2369.x, x_2369.y, x_2369.z, x_2370.w);
  let x_2375 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2375 == 1.0f);
  let x_2377 : bool = u_xlatb0;
  if (x_2377) {
    let x_2382 : f32 = u_xlat1.x;
    x_2378 = x_2382;
  } else {
    x_2378 = 1.0f;
  }
  let x_2384 : f32 = x_2378;
  SV_Target0.w = x_2384;
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

