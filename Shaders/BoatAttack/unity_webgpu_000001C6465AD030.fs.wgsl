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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_190 : MainLightShadows;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2270 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat63 : f32;
  var u_xlatb2 : bool;
  var x_101 : f32;
  var u_xlatb63 : bool;
  var u_xlat65 : f32;
  var u_xlat3 : vec4<f32>;
  var x_164 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
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
  var x_1910 : f32;
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
  var x_2508 : f32;
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
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_44.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_82 : vec3<f32> = u_xlat2;
  let x_85 : f32 = x_44.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_82.x, x_82.y), x_85);
  u_xlat63 = x_86.w;
  let x_97 : f32 = x_95.unity_LODFade.x;
  u_xlatb2 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb2;
  if (x_100) {
    let x_104 : f32 = u_xlat63;
    x_101 = abs(x_104);
  } else {
    let x_107 : f32 = u_xlat63;
    x_101 = -(abs(x_107));
  }
  let x_110 : f32 = x_101;
  u_xlat63 = x_110;
  let x_111 : f32 = u_xlat63;
  let x_114 : f32 = x_95.unity_LODFade.x;
  u_xlat63 = (-(x_111) + x_114);
  let x_117 : f32 = u_xlat63;
  u_xlatb63 = (x_117 < 0.0f);
  let x_119 : bool = u_xlatb63;
  if (((select(0i, 1i, x_119) * -1i) != 0i)) {
    discard;
  }
  let x_130 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb63 = (x_130 == 0.0f);
  let x_134 : vec3<f32> = vs_TEXCOORD1;
  let x_139 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_134) + x_139);
  let x_142 : vec3<f32> = u_xlat2;
  let x_143 : vec3<f32> = u_xlat2;
  u_xlat65 = dot(x_142, x_143);
  let x_145 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_145);
  let x_147 : f32 = u_xlat65;
  let x_149 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_147, x_147, x_147) * x_149);
  let x_154 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_154;
  let x_157 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_157;
  let x_161 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_161;
  let x_163 : bool = u_xlatb63;
  if (x_163) {
    let x_167 : vec3<f32> = u_xlat2;
    x_164 = x_167;
  } else {
    let x_169 : vec4<f32> = u_xlat3;
    x_164 = vec3<f32>(x_169.x, x_169.y, x_169.z);
  }
  let x_171 : vec3<f32> = x_164;
  u_xlat2 = x_171;
  let x_173 : vec3<f32> = vs_TEXCOORD2;
  let x_174 : vec3<f32> = vs_TEXCOORD2;
  u_xlat63 = dot(x_173, x_174);
  let x_176 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_176);
  let x_178 : f32 = u_xlat63;
  let x_180 : vec3<f32> = vs_TEXCOORD2;
  let x_181 : vec3<f32> = (vec3<f32>(x_178, x_178, x_178) * x_180);
  let x_182 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_185 : vec3<f32> = vs_TEXCOORD1;
  let x_192 : vec4<f32> = x_190.x_CascadeShadowSplitSpheres0;
  let x_195 : vec3<f32> = (x_185 + -(vec3<f32>(x_192.x, x_192.y, x_192.z)));
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_199 : vec3<f32> = vs_TEXCOORD1;
  let x_201 : vec4<f32> = x_190.x_CascadeShadowSplitSpheres1;
  let x_204 : vec3<f32> = (x_199 + -(vec3<f32>(x_201.x, x_201.y, x_201.z)));
  let x_205 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_208 : vec3<f32> = vs_TEXCOORD1;
  let x_211 : vec4<f32> = x_190.x_CascadeShadowSplitSpheres2;
  let x_214 : vec3<f32> = (x_208 + -(vec3<f32>(x_211.x, x_211.y, x_211.z)));
  let x_215 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_218 : vec3<f32> = vs_TEXCOORD1;
  let x_221 : vec4<f32> = x_190.x_CascadeShadowSplitSpheres3;
  let x_224 : vec3<f32> = (x_218 + -(vec3<f32>(x_221.x, x_221.y, x_221.z)));
  let x_225 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_227 : vec4<f32> = u_xlat4;
  let x_229 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_227.x, x_227.y, x_227.z), vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_233 : vec4<f32> = u_xlat5;
  let x_235 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_233.x, x_233.y, x_233.z), vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_239 : vec4<f32> = u_xlat6;
  let x_241 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_239.x, x_239.y, x_239.z), vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_245 : vec4<f32> = u_xlat7;
  let x_247 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_254 : vec4<f32> = u_xlat4;
  let x_257 : vec4<f32> = x_190.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_254 < x_257);
  let x_260 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_260);
  let x_264 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_264);
  let x_268 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_268);
  let x_272 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_272);
  let x_276 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_276);
  let x_282 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_282);
  let x_286 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_286);
  let x_289 : vec4<f32> = u_xlat4;
  let x_291 : vec4<f32> = u_xlat5;
  let x_293 : vec3<f32> = (vec3<f32>(x_289.x, x_289.y, x_289.z) + vec3<f32>(x_291.y, x_291.z, x_291.w));
  let x_294 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : vec4<f32> = u_xlat4;
  let x_299 : vec3<f32> = max(vec3<f32>(x_296.x, x_296.y, x_296.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_300 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_300.x, x_299.x, x_299.y, x_299.z);
  let x_302 : vec4<f32> = u_xlat5;
  u_xlat63 = dot(x_302, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_308 : f32 = u_xlat63;
  u_xlat63 = (-(x_308) + 4.0f);
  let x_313 : f32 = u_xlat63;
  u_xlatu63 = u32(x_313);
  let x_317 : u32 = u_xlatu63;
  u_xlati63 = (bitcast<i32>(x_317) << bitcast<u32>(2i));
  let x_320 : vec3<f32> = vs_TEXCOORD1;
  let x_322 : i32 = u_xlati63;
  let x_325 : i32 = u_xlati63;
  let x_329 : vec4<f32> = x_190.x_MainLightWorldToShadow[((x_322 + 1i) / 4i)][((x_325 + 1i) % 4i)];
  let x_331 : vec3<f32> = (vec3<f32>(x_320.y, x_320.y, x_320.y) * vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : i32 = u_xlati63;
  let x_336 : i32 = u_xlati63;
  let x_339 : vec4<f32> = x_190.x_MainLightWorldToShadow[(x_334 / 4i)][(x_336 % 4i)];
  let x_341 : vec3<f32> = vs_TEXCOORD1;
  let x_344 : vec4<f32> = u_xlat4;
  let x_346 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.x, x_341.x, x_341.x)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : i32 = u_xlati63;
  let x_352 : i32 = u_xlati63;
  let x_356 : vec4<f32> = x_190.x_MainLightWorldToShadow[((x_349 + 2i) / 4i)][((x_352 + 2i) % 4i)];
  let x_358 : vec3<f32> = vs_TEXCOORD1;
  let x_361 : vec4<f32> = u_xlat4;
  let x_363 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.z, x_358.z, x_358.z)) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_366 : vec4<f32> = u_xlat4;
  let x_368 : i32 = u_xlati63;
  let x_371 : i32 = u_xlati63;
  let x_375 : vec4<f32> = x_190.x_MainLightWorldToShadow[((x_368 + 3i) / 4i)][((x_371 + 3i) % 4i)];
  let x_377 : vec3<f32> = (vec3<f32>(x_366.x, x_366.y, x_366.z) + vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : f32 = vs_TEXCOORD1.y;
  let x_383 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat63 = (x_381 * x_383);
  let x_386 : f32 = x_44.unity_MatrixV[0i].z;
  let x_388 : f32 = vs_TEXCOORD1.x;
  let x_390 : f32 = u_xlat63;
  u_xlat63 = ((x_386 * x_388) + x_390);
  let x_393 : f32 = x_44.unity_MatrixV[2i].z;
  let x_395 : f32 = vs_TEXCOORD1.z;
  let x_397 : f32 = u_xlat63;
  u_xlat63 = ((x_393 * x_395) + x_397);
  let x_399 : f32 = u_xlat63;
  let x_401 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat63 = (x_399 + x_401);
  let x_403 : f32 = u_xlat63;
  let x_407 : f32 = x_44.x_ProjectionParams.y;
  u_xlat63 = (-(x_403) + -(x_407));
  let x_410 : f32 = u_xlat63;
  u_xlat63 = max(x_410, 0.0f);
  let x_412 : f32 = u_xlat63;
  let x_415 : f32 = x_44.unity_FogParams.x;
  u_xlat63 = (x_412 * x_415);
  u_xlat3.w = 1.0f;
  let x_420 : vec4<f32> = x_95.unity_SHAr;
  let x_421 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_420, x_421);
  let x_426 : vec4<f32> = x_95.unity_SHAg;
  let x_427 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_426, x_427);
  let x_432 : vec4<f32> = x_95.unity_SHAb;
  let x_433 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_432, x_433);
  let x_436 : vec4<f32> = u_xlat3;
  let x_438 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_436.y, x_436.z, x_436.z, x_436.x) * vec4<f32>(x_438.x, x_438.y, x_438.z, x_438.z));
  let x_443 : vec4<f32> = x_95.unity_SHBr;
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_443, x_444);
  let x_449 : vec4<f32> = x_95.unity_SHBg;
  let x_450 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_449, x_450);
  let x_455 : vec4<f32> = x_95.unity_SHBb;
  let x_456 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_455, x_456);
  let x_460 : f32 = u_xlat3.y;
  let x_462 : f32 = u_xlat3.y;
  u_xlat65 = (x_460 * x_462);
  let x_465 : f32 = u_xlat3.x;
  let x_467 : f32 = u_xlat3.x;
  let x_469 : f32 = u_xlat65;
  u_xlat65 = ((x_465 * x_467) + -(x_469));
  let x_474 : vec4<f32> = x_95.unity_SHC;
  let x_476 : f32 = u_xlat65;
  let x_479 : vec4<f32> = u_xlat7;
  let x_481 : vec3<f32> = ((vec3<f32>(x_474.x, x_474.y, x_474.z) * vec3<f32>(x_476, x_476, x_476)) + vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat5;
  let x_486 : vec4<f32> = u_xlat6;
  let x_488 : vec3<f32> = (vec3<f32>(x_484.x, x_484.y, x_484.z) + vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec4<f32> = u_xlat5;
  let x_493 : vec3<f32> = max(vec3<f32>(x_491.x, x_491.y, x_491.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_494 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_498 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_499 : vec2<f32> = vec2<f32>(x_498.x, x_498.y);
  let x_503 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_499.x, x_499.y));
  let x_504 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_503.x, x_503.y, x_504.z, x_504.w);
  let x_506 : vec4<f32> = u_xlat6;
  let x_508 : vec4<f32> = hlslcc_FragCoord;
  let x_510 : vec2<f32> = (vec2<f32>(x_506.x, x_506.y) * vec2<f32>(x_508.x, x_508.y));
  let x_511 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_510.x, x_510.y, x_511.z, x_511.w);
  let x_514 : f32 = u_xlat6.y;
  let x_517 : f32 = x_44.x_ScaleBiasRt.x;
  let x_520 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat65 = ((x_514 * x_517) + x_520);
  let x_522 : f32 = u_xlat65;
  u_xlat6.z = (-(x_522) + 1.0f);
  let x_527 : f32 = x_57.x_Metallic;
  u_xlat65 = ((-(x_527) * 0.959999979f) + 0.959999979f);
  let x_533 : f32 = u_xlat65;
  u_xlat66 = (-(x_533) + 1.0f);
  let x_537 : vec4<f32> = u_xlat1;
  let x_539 : f32 = u_xlat65;
  u_xlat22 = (vec3<f32>(x_537.y, x_537.z, x_537.w) * vec3<f32>(x_539, x_539, x_539));
  let x_542 : vec4<f32> = u_xlat0;
  let x_545 : vec4<f32> = x_57.x_BaseColor;
  let x_550 : vec3<f32> = ((vec3<f32>(x_542.x, x_542.y, x_542.z) * vec3<f32>(x_545.x, x_545.y, x_545.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_551 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  let x_554 : f32 = x_57.x_Metallic;
  let x_556 : f32 = x_57.x_Metallic;
  let x_558 : f32 = x_57.x_Metallic;
  let x_559 : vec3<f32> = vec3<f32>(x_554, x_556, x_558);
  let x_564 : vec4<f32> = u_xlat0;
  let x_569 : vec3<f32> = ((vec3<f32>(x_559.x, x_559.y, x_559.z) * vec3<f32>(x_564.x, x_564.y, x_564.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_570 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_573 : f32 = x_57.x_Smoothness;
  u_xlat65 = (-(x_573) + 1.0f);
  let x_577 : f32 = u_xlat65;
  let x_578 : f32 = u_xlat65;
  u_xlat67 = (x_577 * x_578);
  let x_580 : f32 = u_xlat67;
  u_xlat67 = max(x_580, 0.0078125f);
  let x_584 : f32 = u_xlat67;
  let x_585 : f32 = u_xlat67;
  u_xlat68 = (x_584 * x_585);
  let x_587 : f32 = u_xlat66;
  let x_589 : f32 = x_57.x_Smoothness;
  u_xlat66 = (x_587 + x_589);
  let x_591 : f32 = u_xlat66;
  u_xlat66 = clamp(x_591, 0.0f, 1.0f);
  let x_594 : f32 = u_xlat67;
  u_xlat27 = ((x_594 * 4.0f) + 2.0f);
  let x_602 : vec4<f32> = u_xlat6;
  let x_605 : f32 = x_44.x_GlobalMipBias.x;
  let x_606 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_602.x, x_602.z), x_605);
  u_xlat6.x = x_606.x;
  let x_611 : f32 = u_xlat6.x;
  u_xlat48 = (x_611 + -1.0f);
  let x_614 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_615 : f32 = u_xlat48;
  u_xlat48 = ((x_614 * x_615) + 1.0f);
  let x_619 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_619, 1.0f);
  let x_624 : f32 = x_190.x_MainLightShadowParams.y;
  u_xlatb69 = (0.0f < x_624);
  let x_626 : bool = u_xlatb69;
  if (x_626) {
    let x_630 : f32 = x_190.x_MainLightShadowParams.y;
    u_xlatb69 = (x_630 == 1.0f);
    let x_632 : bool = u_xlatb69;
    if (x_632) {
      let x_635 : vec4<f32> = u_xlat4;
      let x_638 : vec4<f32> = x_190.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_635.x, x_635.y, x_635.x, x_635.y) + x_638);
      let x_641 : vec4<f32> = u_xlat7;
      let x_642 : vec2<f32> = vec2<f32>(x_641.x, x_641.y);
      let x_644 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_642.x, x_642.y, x_644);
      let x_657 : vec3<f32> = txVec0;
      let x_659 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_657.xy, x_657.z);
      u_xlat8.x = x_659;
      let x_662 : vec4<f32> = u_xlat7;
      let x_663 : vec2<f32> = vec2<f32>(x_662.z, x_662.w);
      let x_665 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_663.x, x_663.y, x_665);
      let x_672 : vec3<f32> = txVec1;
      let x_674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_672.xy, x_672.z);
      u_xlat8.y = x_674;
      let x_676 : vec4<f32> = u_xlat4;
      let x_679 : vec4<f32> = x_190.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_676.x, x_676.y, x_676.x, x_676.y) + x_679);
      let x_682 : vec4<f32> = u_xlat7;
      let x_683 : vec2<f32> = vec2<f32>(x_682.x, x_682.y);
      let x_685 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_683.x, x_683.y, x_685);
      let x_692 : vec3<f32> = txVec2;
      let x_694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_692.xy, x_692.z);
      u_xlat8.z = x_694;
      let x_697 : vec4<f32> = u_xlat7;
      let x_698 : vec2<f32> = vec2<f32>(x_697.z, x_697.w);
      let x_700 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_698.x, x_698.y, x_700);
      let x_707 : vec3<f32> = txVec3;
      let x_709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_707.xy, x_707.z);
      u_xlat8.w = x_709;
      let x_712 : vec4<f32> = u_xlat8;
      u_xlat69 = dot(x_712, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_719 : f32 = x_190.x_MainLightShadowParams.y;
      u_xlatb7 = (x_719 == 2.0f);
      let x_721 : bool = u_xlatb7;
      if (x_721) {
        let x_724 : vec4<f32> = u_xlat4;
        let x_727 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_732 : vec2<f32> = ((vec2<f32>(x_724.x, x_724.y) * vec2<f32>(x_727.z, x_727.w)) + vec2<f32>(0.5f, 0.5f));
        let x_733 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_732.x, x_732.y, x_733.z, x_733.w);
        let x_735 : vec4<f32> = u_xlat7;
        let x_737 : vec2<f32> = floor(vec2<f32>(x_735.x, x_735.y));
        let x_738 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_737.x, x_737.y, x_738.z, x_738.w);
        let x_742 : vec4<f32> = u_xlat4;
        let x_745 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_748 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_742.x, x_742.y) * vec2<f32>(x_745.z, x_745.w)) + -(vec2<f32>(x_748.x, x_748.y)));
        let x_752 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_752.x, x_752.x, x_752.y, x_752.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_757 : vec4<f32> = u_xlat8;
        let x_759 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_757.x, x_757.x, x_757.z, x_757.z) * vec4<f32>(x_759.x, x_759.x, x_759.z, x_759.z));
        let x_762 : vec4<f32> = u_xlat9;
        let x_766 : vec2<f32> = (vec2<f32>(x_762.y, x_762.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_767 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_766.x, x_767.y, x_766.y, x_767.w);
        let x_769 : vec4<f32> = u_xlat9;
        let x_772 : vec2<f32> = u_xlat49;
        let x_774 : vec2<f32> = ((vec2<f32>(x_769.x, x_769.z) * vec2<f32>(0.5f, 0.5f)) + -(x_772));
        let x_775 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_774.x, x_774.y, x_775.z, x_775.w);
        let x_778 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_778) + vec2<f32>(1.0f, 1.0f));
        let x_782 : vec2<f32> = u_xlat49;
        let x_784 : vec2<f32> = min(x_782, vec2<f32>(0.0f, 0.0f));
        let x_785 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_784.x, x_784.y, x_785.z, x_785.w);
        let x_787 : vec4<f32> = u_xlat10;
        let x_790 : vec4<f32> = u_xlat10;
        let x_793 : vec2<f32> = u_xlat51;
        let x_794 : vec2<f32> = ((-(vec2<f32>(x_787.x, x_787.y)) * vec2<f32>(x_790.x, x_790.y)) + x_793);
        let x_795 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_794.x, x_794.y, x_795.z, x_795.w);
        let x_797 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_797, vec2<f32>(0.0f, 0.0f));
        let x_799 : vec2<f32> = u_xlat49;
        let x_801 : vec2<f32> = u_xlat49;
        let x_803 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_799) * x_801) + vec2<f32>(x_803.y, x_803.w));
        let x_806 : vec4<f32> = u_xlat10;
        let x_808 : vec2<f32> = (vec2<f32>(x_806.x, x_806.y) + vec2<f32>(1.0f, 1.0f));
        let x_809 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_808.x, x_808.y, x_809.z, x_809.w);
        let x_811 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_811 + vec2<f32>(1.0f, 1.0f));
        let x_814 : vec4<f32> = u_xlat9;
        let x_818 : vec2<f32> = (vec2<f32>(x_814.x, x_814.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_819 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_818.x, x_818.y, x_819.z, x_819.w);
        let x_821 : vec2<f32> = u_xlat51;
        let x_822 : vec2<f32> = (x_821 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_823 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_822.x, x_822.y, x_823.z, x_823.w);
        let x_825 : vec4<f32> = u_xlat10;
        let x_827 : vec2<f32> = (vec2<f32>(x_825.x, x_825.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_828 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_827.x, x_827.y, x_828.z, x_828.w);
        let x_831 : vec2<f32> = u_xlat49;
        let x_832 : vec2<f32> = (x_831 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_833 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_832.x, x_832.y, x_833.z, x_833.w);
        let x_835 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_835.y, x_835.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_839 : f32 = u_xlat10.x;
        u_xlat11.z = x_839;
        let x_842 : f32 = u_xlat49.x;
        u_xlat11.w = x_842;
        let x_845 : f32 = u_xlat12.x;
        u_xlat9.z = x_845;
        let x_848 : f32 = u_xlat8.x;
        u_xlat9.w = x_848;
        let x_851 : vec4<f32> = u_xlat9;
        let x_853 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_851.z, x_851.w, x_851.x, x_851.z) + vec4<f32>(x_853.z, x_853.w, x_853.x, x_853.z));
        let x_857 : f32 = u_xlat11.y;
        u_xlat10.z = x_857;
        let x_860 : f32 = u_xlat49.y;
        u_xlat10.w = x_860;
        let x_863 : f32 = u_xlat9.y;
        u_xlat12.z = x_863;
        let x_866 : f32 = u_xlat8.z;
        u_xlat12.w = x_866;
        let x_868 : vec4<f32> = u_xlat10;
        let x_870 : vec4<f32> = u_xlat12;
        let x_872 : vec3<f32> = (vec3<f32>(x_868.z, x_868.y, x_868.w) + vec3<f32>(x_870.z, x_870.y, x_870.w));
        let x_873 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
        let x_875 : vec4<f32> = u_xlat9;
        let x_877 : vec4<f32> = u_xlat13;
        let x_879 : vec3<f32> = (vec3<f32>(x_875.x, x_875.z, x_875.w) / vec3<f32>(x_877.z, x_877.w, x_877.y));
        let x_880 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
        let x_882 : vec4<f32> = u_xlat9;
        let x_888 : vec3<f32> = (vec3<f32>(x_882.x, x_882.y, x_882.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_889 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
        let x_891 : vec4<f32> = u_xlat12;
        let x_893 : vec4<f32> = u_xlat8;
        let x_895 : vec3<f32> = (vec3<f32>(x_891.z, x_891.y, x_891.w) / vec3<f32>(x_893.x, x_893.y, x_893.z));
        let x_896 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
        let x_898 : vec4<f32> = u_xlat10;
        let x_900 : vec3<f32> = (vec3<f32>(x_898.x, x_898.y, x_898.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_901 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
        let x_903 : vec4<f32> = u_xlat9;
        let x_906 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_908 : vec3<f32> = (vec3<f32>(x_903.y, x_903.x, x_903.z) * vec3<f32>(x_906.x, x_906.x, x_906.x));
        let x_909 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
        let x_911 : vec4<f32> = u_xlat10;
        let x_914 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_916 : vec3<f32> = (vec3<f32>(x_911.x, x_911.y, x_911.z) * vec3<f32>(x_914.y, x_914.y, x_914.y));
        let x_917 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
        let x_920 : f32 = u_xlat10.x;
        u_xlat9.w = x_920;
        let x_922 : vec4<f32> = u_xlat7;
        let x_925 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_928 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_922.x, x_922.y, x_922.x, x_922.y) * vec4<f32>(x_925.x, x_925.y, x_925.x, x_925.y)) + vec4<f32>(x_928.y, x_928.w, x_928.x, x_928.w));
        let x_931 : vec4<f32> = u_xlat7;
        let x_934 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_937 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_931.x, x_931.y) * vec2<f32>(x_934.x, x_934.y)) + vec2<f32>(x_937.z, x_937.w));
        let x_941 : f32 = u_xlat9.y;
        u_xlat10.w = x_941;
        let x_943 : vec4<f32> = u_xlat10;
        let x_944 : vec2<f32> = vec2<f32>(x_943.y, x_943.z);
        let x_945 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_945.x, x_944.x, x_945.z, x_944.y);
        let x_947 : vec4<f32> = u_xlat7;
        let x_950 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_953 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_947.x, x_947.y, x_947.x, x_947.y) * vec4<f32>(x_950.x, x_950.y, x_950.x, x_950.y)) + vec4<f32>(x_953.x, x_953.y, x_953.z, x_953.y));
        let x_956 : vec4<f32> = u_xlat7;
        let x_959 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_962 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_956.x, x_956.y, x_956.x, x_956.y) * vec4<f32>(x_959.x, x_959.y, x_959.x, x_959.y)) + vec4<f32>(x_962.w, x_962.y, x_962.w, x_962.z));
        let x_965 : vec4<f32> = u_xlat7;
        let x_968 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_971 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_965.x, x_965.y, x_965.x, x_965.y) * vec4<f32>(x_968.x, x_968.y, x_968.x, x_968.y)) + vec4<f32>(x_971.x, x_971.w, x_971.z, x_971.w));
        let x_975 : vec4<f32> = u_xlat8;
        let x_977 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_975.x, x_975.x, x_975.x, x_975.y) * vec4<f32>(x_977.z, x_977.w, x_977.y, x_977.z));
        let x_981 : vec4<f32> = u_xlat8;
        let x_983 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_981.y, x_981.y, x_981.z, x_981.z) * x_983);
        let x_986 : f32 = u_xlat8.z;
        let x_988 : f32 = u_xlat13.y;
        u_xlat7.x = (x_986 * x_988);
        let x_992 : vec4<f32> = u_xlat11;
        let x_993 : vec2<f32> = vec2<f32>(x_992.x, x_992.y);
        let x_995 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_993.x, x_993.y, x_995);
        let x_1003 : vec3<f32> = txVec4;
        let x_1005 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1003.xy, x_1003.z);
        u_xlat28 = x_1005;
        let x_1007 : vec4<f32> = u_xlat11;
        let x_1008 : vec2<f32> = vec2<f32>(x_1007.z, x_1007.w);
        let x_1010 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
        let x_1017 : vec3<f32> = txVec5;
        let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1017.xy, x_1017.z);
        u_xlat8.x = x_1019;
        let x_1022 : f32 = u_xlat8.x;
        let x_1024 : f32 = u_xlat14.y;
        u_xlat8.x = (x_1022 * x_1024);
        let x_1028 : f32 = u_xlat14.x;
        let x_1029 : f32 = u_xlat28;
        let x_1032 : f32 = u_xlat8.x;
        u_xlat28 = ((x_1028 * x_1029) + x_1032);
        let x_1035 : vec2<f32> = u_xlat49;
        let x_1037 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1035.x, x_1035.y, x_1037);
        let x_1044 : vec3<f32> = txVec6;
        let x_1046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1044.xy, x_1044.z);
        u_xlat49.x = x_1046;
        let x_1049 : f32 = u_xlat14.z;
        let x_1051 : f32 = u_xlat49.x;
        let x_1053 : f32 = u_xlat28;
        u_xlat28 = ((x_1049 * x_1051) + x_1053);
        let x_1056 : vec4<f32> = u_xlat10;
        let x_1057 : vec2<f32> = vec2<f32>(x_1056.x, x_1056.y);
        let x_1059 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1057.x, x_1057.y, x_1059);
        let x_1066 : vec3<f32> = txVec7;
        let x_1068 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1066.xy, x_1066.z);
        u_xlat49.x = x_1068;
        let x_1071 : f32 = u_xlat14.w;
        let x_1073 : f32 = u_xlat49.x;
        let x_1075 : f32 = u_xlat28;
        u_xlat28 = ((x_1071 * x_1073) + x_1075);
        let x_1078 : vec4<f32> = u_xlat12;
        let x_1079 : vec2<f32> = vec2<f32>(x_1078.x, x_1078.y);
        let x_1081 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1079.x, x_1079.y, x_1081);
        let x_1088 : vec3<f32> = txVec8;
        let x_1090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1088.xy, x_1088.z);
        u_xlat49.x = x_1090;
        let x_1093 : f32 = u_xlat15.x;
        let x_1095 : f32 = u_xlat49.x;
        let x_1097 : f32 = u_xlat28;
        u_xlat28 = ((x_1093 * x_1095) + x_1097);
        let x_1100 : vec4<f32> = u_xlat12;
        let x_1101 : vec2<f32> = vec2<f32>(x_1100.z, x_1100.w);
        let x_1103 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1101.x, x_1101.y, x_1103);
        let x_1110 : vec3<f32> = txVec9;
        let x_1112 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1110.xy, x_1110.z);
        u_xlat49.x = x_1112;
        let x_1115 : f32 = u_xlat15.y;
        let x_1117 : f32 = u_xlat49.x;
        let x_1119 : f32 = u_xlat28;
        u_xlat28 = ((x_1115 * x_1117) + x_1119);
        let x_1122 : vec4<f32> = u_xlat10;
        let x_1123 : vec2<f32> = vec2<f32>(x_1122.z, x_1122.w);
        let x_1125 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1123.x, x_1123.y, x_1125);
        let x_1132 : vec3<f32> = txVec10;
        let x_1134 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1132.xy, x_1132.z);
        u_xlat49.x = x_1134;
        let x_1137 : f32 = u_xlat15.z;
        let x_1139 : f32 = u_xlat49.x;
        let x_1141 : f32 = u_xlat28;
        u_xlat28 = ((x_1137 * x_1139) + x_1141);
        let x_1144 : vec4<f32> = u_xlat9;
        let x_1145 : vec2<f32> = vec2<f32>(x_1144.x, x_1144.y);
        let x_1147 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1145.x, x_1145.y, x_1147);
        let x_1154 : vec3<f32> = txVec11;
        let x_1156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1154.xy, x_1154.z);
        u_xlat49.x = x_1156;
        let x_1159 : f32 = u_xlat15.w;
        let x_1161 : f32 = u_xlat49.x;
        let x_1163 : f32 = u_xlat28;
        u_xlat28 = ((x_1159 * x_1161) + x_1163);
        let x_1166 : vec4<f32> = u_xlat9;
        let x_1167 : vec2<f32> = vec2<f32>(x_1166.z, x_1166.w);
        let x_1169 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1167.x, x_1167.y, x_1169);
        let x_1176 : vec3<f32> = txVec12;
        let x_1178 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1176.xy, x_1176.z);
        u_xlat49.x = x_1178;
        let x_1181 : f32 = u_xlat7.x;
        let x_1183 : f32 = u_xlat49.x;
        let x_1185 : f32 = u_xlat28;
        u_xlat69 = ((x_1181 * x_1183) + x_1185);
      } else {
        let x_1188 : vec4<f32> = u_xlat4;
        let x_1191 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1194 : vec2<f32> = ((vec2<f32>(x_1188.x, x_1188.y) * vec2<f32>(x_1191.z, x_1191.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1195 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1194.x, x_1194.y, x_1195.z, x_1195.w);
        let x_1197 : vec4<f32> = u_xlat7;
        let x_1199 : vec2<f32> = floor(vec2<f32>(x_1197.x, x_1197.y));
        let x_1200 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1199.x, x_1199.y, x_1200.z, x_1200.w);
        let x_1202 : vec4<f32> = u_xlat4;
        let x_1205 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1208 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1202.x, x_1202.y) * vec2<f32>(x_1205.z, x_1205.w)) + -(vec2<f32>(x_1208.x, x_1208.y)));
        let x_1212 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1212.x, x_1212.x, x_1212.y, x_1212.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1215 : vec4<f32> = u_xlat8;
        let x_1217 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1215.x, x_1215.x, x_1215.z, x_1215.z) * vec4<f32>(x_1217.x, x_1217.x, x_1217.z, x_1217.z));
        let x_1220 : vec4<f32> = u_xlat9;
        let x_1224 : vec2<f32> = (vec2<f32>(x_1220.y, x_1220.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1225 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1225.x, x_1224.x, x_1225.z, x_1224.y);
        let x_1227 : vec4<f32> = u_xlat9;
        let x_1230 : vec2<f32> = u_xlat49;
        let x_1232 : vec2<f32> = ((vec2<f32>(x_1227.x, x_1227.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1230));
        let x_1233 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1232.x, x_1233.y, x_1232.y, x_1233.w);
        let x_1235 : vec2<f32> = u_xlat49;
        let x_1237 : vec2<f32> = (-(x_1235) + vec2<f32>(1.0f, 1.0f));
        let x_1238 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1237.x, x_1237.y, x_1238.z, x_1238.w);
        let x_1240 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1240, vec2<f32>(0.0f, 0.0f));
        let x_1242 : vec2<f32> = u_xlat51;
        let x_1244 : vec2<f32> = u_xlat51;
        let x_1246 : vec4<f32> = u_xlat9;
        let x_1248 : vec2<f32> = ((-(x_1242) * x_1244) + vec2<f32>(x_1246.x, x_1246.y));
        let x_1249 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1248.x, x_1248.y, x_1249.z, x_1249.w);
        let x_1251 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1251, vec2<f32>(0.0f, 0.0f));
        let x_1254 : vec2<f32> = u_xlat51;
        let x_1256 : vec2<f32> = u_xlat51;
        let x_1258 : vec4<f32> = u_xlat8;
        let x_1260 : vec2<f32> = ((-(x_1254) * x_1256) + vec2<f32>(x_1258.y, x_1258.w));
        let x_1261 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1260.x, x_1261.y, x_1260.y);
        let x_1263 : vec4<f32> = u_xlat9;
        let x_1266 : vec2<f32> = (vec2<f32>(x_1263.x, x_1263.y) + vec2<f32>(2.0f, 2.0f));
        let x_1267 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1266.x, x_1266.y, x_1267.z, x_1267.w);
        let x_1269 : vec3<f32> = u_xlat29;
        let x_1271 : vec2<f32> = (vec2<f32>(x_1269.x, x_1269.z) + vec2<f32>(2.0f, 2.0f));
        let x_1272 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1272.x, x_1271.x, x_1272.z, x_1271.y);
        let x_1275 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1275 * 0.081632003f);
        let x_1279 : vec4<f32> = u_xlat8;
        let x_1282 : vec3<f32> = (vec3<f32>(x_1279.z, x_1279.x, x_1279.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1283 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
        let x_1285 : vec4<f32> = u_xlat9;
        let x_1288 : vec2<f32> = (vec2<f32>(x_1285.x, x_1285.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1289 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1288.x, x_1288.y, x_1289.z, x_1289.w);
        let x_1292 : f32 = u_xlat12.y;
        u_xlat11.x = x_1292;
        let x_1294 : vec2<f32> = u_xlat49;
        let x_1301 : vec2<f32> = ((vec2<f32>(x_1294.x, x_1294.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1302 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1302.x, x_1301.x, x_1302.z, x_1301.y);
        let x_1304 : vec2<f32> = u_xlat49;
        let x_1308 : vec2<f32> = ((vec2<f32>(x_1304.x, x_1304.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1309 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1308.x, x_1309.y, x_1308.y, x_1309.w);
        let x_1312 : f32 = u_xlat8.x;
        u_xlat9.y = x_1312;
        let x_1315 : f32 = u_xlat10.y;
        u_xlat9.w = x_1315;
        let x_1317 : vec4<f32> = u_xlat9;
        let x_1318 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1317 + x_1318);
        let x_1320 : vec2<f32> = u_xlat49;
        let x_1323 : vec2<f32> = ((vec2<f32>(x_1320.y, x_1320.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1324 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1324.x, x_1323.x, x_1324.z, x_1323.y);
        let x_1326 : vec2<f32> = u_xlat49;
        let x_1329 : vec2<f32> = ((vec2<f32>(x_1326.y, x_1326.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1330 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1329.x, x_1330.y, x_1329.y, x_1330.w);
        let x_1333 : f32 = u_xlat8.y;
        u_xlat10.y = x_1333;
        let x_1335 : vec4<f32> = u_xlat10;
        let x_1336 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1335 + x_1336);
        let x_1338 : vec4<f32> = u_xlat9;
        let x_1339 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1338 / x_1339);
        let x_1341 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1341 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1347 : vec4<f32> = u_xlat10;
        let x_1348 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1347 / x_1348);
        let x_1350 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1350 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1352 : vec4<f32> = u_xlat9;
        let x_1355 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1352.w, x_1352.x, x_1352.y, x_1352.z) * vec4<f32>(x_1355.x, x_1355.x, x_1355.x, x_1355.x));
        let x_1358 : vec4<f32> = u_xlat10;
        let x_1361 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1358.x, x_1358.w, x_1358.y, x_1358.z) * vec4<f32>(x_1361.y, x_1361.y, x_1361.y, x_1361.y));
        let x_1364 : vec4<f32> = u_xlat9;
        let x_1365 : vec3<f32> = vec3<f32>(x_1364.y, x_1364.z, x_1364.w);
        let x_1366 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1365.x, x_1366.y, x_1365.y, x_1365.z);
        let x_1369 : f32 = u_xlat10.x;
        u_xlat12.y = x_1369;
        let x_1371 : vec4<f32> = u_xlat7;
        let x_1374 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1377 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1371.x, x_1371.y, x_1371.x, x_1371.y) * vec4<f32>(x_1374.x, x_1374.y, x_1374.x, x_1374.y)) + vec4<f32>(x_1377.x, x_1377.y, x_1377.z, x_1377.y));
        let x_1380 : vec4<f32> = u_xlat7;
        let x_1383 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1386 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1380.x, x_1380.y) * vec2<f32>(x_1383.x, x_1383.y)) + vec2<f32>(x_1386.w, x_1386.y));
        let x_1390 : f32 = u_xlat12.y;
        u_xlat9.y = x_1390;
        let x_1393 : f32 = u_xlat10.z;
        u_xlat12.y = x_1393;
        let x_1395 : vec4<f32> = u_xlat7;
        let x_1398 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1401 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1395.x, x_1395.y, x_1395.x, x_1395.y) * vec4<f32>(x_1398.x, x_1398.y, x_1398.x, x_1398.y)) + vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1401.y));
        let x_1404 : vec4<f32> = u_xlat7;
        let x_1407 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1410 : vec4<f32> = u_xlat12;
        let x_1412 : vec2<f32> = ((vec2<f32>(x_1404.x, x_1404.y) * vec2<f32>(x_1407.x, x_1407.y)) + vec2<f32>(x_1410.w, x_1410.y));
        let x_1413 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1412.x, x_1412.y, x_1413.z, x_1413.w);
        let x_1416 : f32 = u_xlat12.y;
        u_xlat9.z = x_1416;
        let x_1419 : vec4<f32> = u_xlat7;
        let x_1422 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1425 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1419.x, x_1419.y, x_1419.x, x_1419.y) * vec4<f32>(x_1422.x, x_1422.y, x_1422.x, x_1422.y)) + vec4<f32>(x_1425.x, x_1425.y, x_1425.x, x_1425.z));
        let x_1429 : f32 = u_xlat10.w;
        u_xlat12.y = x_1429;
        let x_1432 : vec4<f32> = u_xlat7;
        let x_1435 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1438 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1432.x, x_1432.y, x_1432.x, x_1432.y) * vec4<f32>(x_1435.x, x_1435.y, x_1435.x, x_1435.y)) + vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1438.y));
        let x_1442 : vec4<f32> = u_xlat7;
        let x_1445 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1448 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1442.x, x_1442.y) * vec2<f32>(x_1445.x, x_1445.y)) + vec2<f32>(x_1448.w, x_1448.y));
        let x_1452 : f32 = u_xlat12.y;
        u_xlat9.w = x_1452;
        let x_1455 : vec4<f32> = u_xlat7;
        let x_1458 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1461 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1455.x, x_1455.y) * vec2<f32>(x_1458.x, x_1458.y)) + vec2<f32>(x_1461.x, x_1461.w));
        let x_1464 : vec4<f32> = u_xlat12;
        let x_1465 : vec3<f32> = vec3<f32>(x_1464.x, x_1464.z, x_1464.w);
        let x_1466 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1465.x, x_1466.y, x_1465.y, x_1465.z);
        let x_1468 : vec4<f32> = u_xlat7;
        let x_1471 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1474 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1468.x, x_1468.y, x_1468.x, x_1468.y) * vec4<f32>(x_1471.x, x_1471.y, x_1471.x, x_1471.y)) + vec4<f32>(x_1474.x, x_1474.y, x_1474.z, x_1474.y));
        let x_1478 : vec4<f32> = u_xlat7;
        let x_1481 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1484 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1478.x, x_1478.y) * vec2<f32>(x_1481.x, x_1481.y)) + vec2<f32>(x_1484.w, x_1484.y));
        let x_1488 : f32 = u_xlat9.x;
        u_xlat10.x = x_1488;
        let x_1490 : vec4<f32> = u_xlat7;
        let x_1493 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1496 : vec4<f32> = u_xlat10;
        let x_1498 : vec2<f32> = ((vec2<f32>(x_1490.x, x_1490.y) * vec2<f32>(x_1493.x, x_1493.y)) + vec2<f32>(x_1496.x, x_1496.y));
        let x_1499 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1498.x, x_1498.y, x_1499.z, x_1499.w);
        let x_1502 : vec4<f32> = u_xlat8;
        let x_1504 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1502.x, x_1502.x, x_1502.x, x_1502.x) * x_1504);
        let x_1507 : vec4<f32> = u_xlat8;
        let x_1509 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1507.y, x_1507.y, x_1507.y, x_1507.y) * x_1509);
        let x_1512 : vec4<f32> = u_xlat8;
        let x_1514 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1512.z, x_1512.z, x_1512.z, x_1512.z) * x_1514);
        let x_1516 : vec4<f32> = u_xlat8;
        let x_1518 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1516.w, x_1516.w, x_1516.w, x_1516.w) * x_1518);
        let x_1521 : vec4<f32> = u_xlat13;
        let x_1522 : vec2<f32> = vec2<f32>(x_1521.x, x_1521.y);
        let x_1524 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec13;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1531.xy, x_1531.z);
        u_xlat9.x = x_1533;
        let x_1536 : vec4<f32> = u_xlat13;
        let x_1537 : vec2<f32> = vec2<f32>(x_1536.z, x_1536.w);
        let x_1539 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1547 : vec3<f32> = txVec14;
        let x_1549 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1547.xy, x_1547.z);
        u_xlat72 = x_1549;
        let x_1550 : f32 = u_xlat72;
        let x_1552 : f32 = u_xlat18.y;
        u_xlat72 = (x_1550 * x_1552);
        let x_1555 : f32 = u_xlat18.x;
        let x_1557 : f32 = u_xlat9.x;
        let x_1559 : f32 = u_xlat72;
        u_xlat9.x = ((x_1555 * x_1557) + x_1559);
        let x_1563 : vec2<f32> = u_xlat49;
        let x_1565 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1563.x, x_1563.y, x_1565);
        let x_1572 : vec3<f32> = txVec15;
        let x_1574 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1572.xy, x_1572.z);
        u_xlat49.x = x_1574;
        let x_1577 : f32 = u_xlat18.z;
        let x_1579 : f32 = u_xlat49.x;
        let x_1582 : f32 = u_xlat9.x;
        u_xlat49.x = ((x_1577 * x_1579) + x_1582);
        let x_1586 : vec4<f32> = u_xlat16;
        let x_1587 : vec2<f32> = vec2<f32>(x_1586.x, x_1586.y);
        let x_1589 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1597 : vec3<f32> = txVec16;
        let x_1599 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1597.xy, x_1597.z);
        u_xlat70 = x_1599;
        let x_1601 : f32 = u_xlat18.w;
        let x_1602 : f32 = u_xlat70;
        let x_1605 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1601 * x_1602) + x_1605);
        let x_1609 : vec4<f32> = u_xlat14;
        let x_1610 : vec2<f32> = vec2<f32>(x_1609.x, x_1609.y);
        let x_1612 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1610.x, x_1610.y, x_1612);
        let x_1619 : vec3<f32> = txVec17;
        let x_1621 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1619.xy, x_1619.z);
        u_xlat70 = x_1621;
        let x_1623 : f32 = u_xlat19.x;
        let x_1624 : f32 = u_xlat70;
        let x_1627 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1623 * x_1624) + x_1627);
        let x_1631 : vec4<f32> = u_xlat14;
        let x_1632 : vec2<f32> = vec2<f32>(x_1631.z, x_1631.w);
        let x_1634 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1632.x, x_1632.y, x_1634);
        let x_1641 : vec3<f32> = txVec18;
        let x_1643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1641.xy, x_1641.z);
        u_xlat70 = x_1643;
        let x_1645 : f32 = u_xlat19.y;
        let x_1646 : f32 = u_xlat70;
        let x_1649 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1645 * x_1646) + x_1649);
        let x_1653 : vec4<f32> = u_xlat15;
        let x_1654 : vec2<f32> = vec2<f32>(x_1653.x, x_1653.y);
        let x_1656 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec19;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1663.xy, x_1663.z);
        u_xlat70 = x_1665;
        let x_1667 : f32 = u_xlat19.z;
        let x_1668 : f32 = u_xlat70;
        let x_1671 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1667 * x_1668) + x_1671);
        let x_1675 : vec4<f32> = u_xlat16;
        let x_1676 : vec2<f32> = vec2<f32>(x_1675.z, x_1675.w);
        let x_1678 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1676.x, x_1676.y, x_1678);
        let x_1685 : vec3<f32> = txVec20;
        let x_1687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1685.xy, x_1685.z);
        u_xlat70 = x_1687;
        let x_1689 : f32 = u_xlat19.w;
        let x_1690 : f32 = u_xlat70;
        let x_1693 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1689 * x_1690) + x_1693);
        let x_1697 : vec4<f32> = u_xlat17;
        let x_1698 : vec2<f32> = vec2<f32>(x_1697.x, x_1697.y);
        let x_1700 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1698.x, x_1698.y, x_1700);
        let x_1707 : vec3<f32> = txVec21;
        let x_1709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1707.xy, x_1707.z);
        u_xlat70 = x_1709;
        let x_1711 : f32 = u_xlat20.x;
        let x_1712 : f32 = u_xlat70;
        let x_1715 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1711 * x_1712) + x_1715);
        let x_1719 : vec4<f32> = u_xlat17;
        let x_1720 : vec2<f32> = vec2<f32>(x_1719.z, x_1719.w);
        let x_1722 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1720.x, x_1720.y, x_1722);
        let x_1729 : vec3<f32> = txVec22;
        let x_1731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1729.xy, x_1729.z);
        u_xlat70 = x_1731;
        let x_1733 : f32 = u_xlat20.y;
        let x_1734 : f32 = u_xlat70;
        let x_1737 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1733 * x_1734) + x_1737);
        let x_1741 : vec2<f32> = u_xlat30;
        let x_1743 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1741.x, x_1741.y, x_1743);
        let x_1750 : vec3<f32> = txVec23;
        let x_1752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1750.xy, x_1750.z);
        u_xlat70 = x_1752;
        let x_1754 : f32 = u_xlat20.z;
        let x_1755 : f32 = u_xlat70;
        let x_1758 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1754 * x_1755) + x_1758);
        let x_1762 : vec2<f32> = u_xlat57;
        let x_1764 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1762.x, x_1762.y, x_1764);
        let x_1771 : vec3<f32> = txVec24;
        let x_1773 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1771.xy, x_1771.z);
        u_xlat70 = x_1773;
        let x_1775 : f32 = u_xlat20.w;
        let x_1776 : f32 = u_xlat70;
        let x_1779 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1775 * x_1776) + x_1779);
        let x_1783 : vec4<f32> = u_xlat12;
        let x_1784 : vec2<f32> = vec2<f32>(x_1783.x, x_1783.y);
        let x_1786 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1784.x, x_1784.y, x_1786);
        let x_1793 : vec3<f32> = txVec25;
        let x_1795 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1793.xy, x_1793.z);
        u_xlat70 = x_1795;
        let x_1797 : f32 = u_xlat8.x;
        let x_1798 : f32 = u_xlat70;
        let x_1801 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1797 * x_1798) + x_1801);
        let x_1805 : vec4<f32> = u_xlat12;
        let x_1806 : vec2<f32> = vec2<f32>(x_1805.z, x_1805.w);
        let x_1808 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1806.x, x_1806.y, x_1808);
        let x_1815 : vec3<f32> = txVec26;
        let x_1817 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1815.xy, x_1815.z);
        u_xlat70 = x_1817;
        let x_1819 : f32 = u_xlat8.y;
        let x_1820 : f32 = u_xlat70;
        let x_1823 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1819 * x_1820) + x_1823);
        let x_1827 : vec2<f32> = u_xlat52;
        let x_1829 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1827.x, x_1827.y, x_1829);
        let x_1836 : vec3<f32> = txVec27;
        let x_1838 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1836.xy, x_1836.z);
        u_xlat70 = x_1838;
        let x_1840 : f32 = u_xlat8.z;
        let x_1841 : f32 = u_xlat70;
        let x_1844 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1840 * x_1841) + x_1844);
        let x_1848 : vec4<f32> = u_xlat7;
        let x_1849 : vec2<f32> = vec2<f32>(x_1848.x, x_1848.y);
        let x_1851 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1849.x, x_1849.y, x_1851);
        let x_1858 : vec3<f32> = txVec28;
        let x_1860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1858.xy, x_1858.z);
        u_xlat7.x = x_1860;
        let x_1863 : f32 = u_xlat8.w;
        let x_1865 : f32 = u_xlat7.x;
        let x_1868 : f32 = u_xlat49.x;
        u_xlat69 = ((x_1863 * x_1865) + x_1868);
      }
    }
  } else {
    let x_1872 : vec4<f32> = u_xlat4;
    let x_1873 : vec2<f32> = vec2<f32>(x_1872.x, x_1872.y);
    let x_1875 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1873.x, x_1873.y, x_1875);
    let x_1882 : vec3<f32> = txVec29;
    let x_1884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1882.xy, x_1882.z);
    u_xlat69 = x_1884;
  }
  let x_1886 : f32 = x_190.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1886) + 1.0f);
  let x_1890 : f32 = u_xlat69;
  let x_1892 : f32 = x_190.x_MainLightShadowParams.x;
  let x_1895 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1890 * x_1892) + x_1895);
  let x_1900 : f32 = u_xlat4.z;
  u_xlatb25 = (0.0f >= x_1900);
  let x_1904 : f32 = u_xlat4.z;
  u_xlatb46 = (x_1904 >= 1.0f);
  let x_1906 : bool = u_xlatb46;
  let x_1907 : bool = u_xlatb25;
  u_xlatb25 = (x_1906 | x_1907);
  let x_1909 : bool = u_xlatb25;
  if (x_1909) {
    x_1910 = 1.0f;
  } else {
    let x_1915 : f32 = u_xlat4.x;
    x_1910 = x_1915;
  }
  let x_1916 : f32 = x_1910;
  u_xlat4.x = x_1916;
  let x_1918 : vec3<f32> = vs_TEXCOORD1;
  let x_1920 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1922 : vec3<f32> = (x_1918 + -(x_1920));
  let x_1923 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);
  let x_1926 : vec4<f32> = u_xlat7;
  let x_1928 : vec4<f32> = u_xlat7;
  u_xlat25 = dot(vec3<f32>(x_1926.x, x_1926.y, x_1926.z), vec3<f32>(x_1928.x, x_1928.y, x_1928.z));
  let x_1931 : f32 = u_xlat25;
  let x_1933 : f32 = x_190.x_MainLightShadowParams.z;
  let x_1936 : f32 = x_190.x_MainLightShadowParams.w;
  u_xlat25 = ((x_1931 * x_1933) + x_1936);
  let x_1938 : f32 = u_xlat25;
  u_xlat25 = clamp(x_1938, 0.0f, 1.0f);
  let x_1942 : f32 = u_xlat4.x;
  u_xlat46.x = (-(x_1942) + 1.0f);
  let x_1946 : f32 = u_xlat25;
  let x_1948 : f32 = u_xlat46.x;
  let x_1951 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1946 * x_1948) + x_1951);
  let x_1954 : f32 = u_xlat48;
  let x_1957 : vec4<f32> = x_44.x_MainLightColor;
  let x_1959 : vec3<f32> = (vec3<f32>(x_1954, x_1954, x_1954) * vec3<f32>(x_1957.x, x_1957.y, x_1957.z));
  let x_1960 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1959.x, x_1959.y, x_1959.z, x_1960.w);
  let x_1962 : vec3<f32> = u_xlat2;
  let x_1964 : vec4<f32> = u_xlat3;
  u_xlat25 = dot(-(x_1962), vec3<f32>(x_1964.x, x_1964.y, x_1964.z));
  let x_1967 : f32 = u_xlat25;
  let x_1968 : f32 = u_xlat25;
  u_xlat25 = (x_1967 + x_1968);
  let x_1970 : vec4<f32> = u_xlat3;
  let x_1972 : f32 = u_xlat25;
  let x_1976 : vec3<f32> = u_xlat2;
  let x_1978 : vec3<f32> = ((vec3<f32>(x_1970.x, x_1970.y, x_1970.z) * -(vec3<f32>(x_1972, x_1972, x_1972))) + -(x_1976));
  let x_1979 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
  let x_1981 : vec4<f32> = u_xlat3;
  let x_1983 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(vec3<f32>(x_1981.x, x_1981.y, x_1981.z), x_1983);
  let x_1985 : f32 = u_xlat25;
  u_xlat25 = clamp(x_1985, 0.0f, 1.0f);
  let x_1987 : f32 = u_xlat25;
  u_xlat25 = (-(x_1987) + 1.0f);
  let x_1990 : f32 = u_xlat25;
  let x_1991 : f32 = u_xlat25;
  u_xlat25 = (x_1990 * x_1991);
  let x_1993 : f32 = u_xlat25;
  let x_1994 : f32 = u_xlat25;
  u_xlat25 = (x_1993 * x_1994);
  let x_1996 : f32 = u_xlat65;
  u_xlat46.x = ((-(x_1996) * 0.699999988f) + 1.700000048f);
  let x_2003 : f32 = u_xlat65;
  let x_2005 : f32 = u_xlat46.x;
  u_xlat65 = (x_2003 * x_2005);
  let x_2007 : f32 = u_xlat65;
  u_xlat65 = (x_2007 * 6.0f);
  let x_2018 : vec4<f32> = u_xlat8;
  let x_2020 : f32 = u_xlat65;
  let x_2021 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2018.x, x_2018.y, x_2018.z), x_2020);
  u_xlat8 = x_2021;
  let x_2023 : f32 = u_xlat8.w;
  u_xlat65 = (x_2023 + -1.0f);
  let x_2026 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_2027 : f32 = u_xlat65;
  u_xlat65 = ((x_2026 * x_2027) + 1.0f);
  let x_2030 : f32 = u_xlat65;
  u_xlat65 = max(x_2030, 0.0f);
  let x_2032 : f32 = u_xlat65;
  u_xlat65 = log2(x_2032);
  let x_2034 : f32 = u_xlat65;
  let x_2036 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat65 = (x_2034 * x_2036);
  let x_2038 : f32 = u_xlat65;
  u_xlat65 = exp2(x_2038);
  let x_2040 : f32 = u_xlat65;
  let x_2042 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat65 = (x_2040 * x_2042);
  let x_2044 : vec4<f32> = u_xlat8;
  let x_2046 : f32 = u_xlat65;
  let x_2048 : vec3<f32> = (vec3<f32>(x_2044.x, x_2044.y, x_2044.z) * vec3<f32>(x_2046, x_2046, x_2046));
  let x_2049 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2048.x, x_2048.y, x_2048.z, x_2049.w);
  let x_2051 : f32 = u_xlat67;
  let x_2053 : f32 = u_xlat67;
  u_xlat46 = ((vec2<f32>(x_2051, x_2051) * vec2<f32>(x_2053, x_2053)) + vec2<f32>(-1.0f, 1.0f));
  let x_2059 : f32 = u_xlat46.y;
  u_xlat65 = (1.0f / x_2059);
  let x_2061 : vec4<f32> = u_xlat0;
  let x_2064 : f32 = u_xlat66;
  let x_2066 : vec3<f32> = (-(vec3<f32>(x_2061.x, x_2061.y, x_2061.z)) + vec3<f32>(x_2064, x_2064, x_2064));
  let x_2067 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2066.x, x_2066.y, x_2066.z, x_2067.w);
  let x_2069 : f32 = u_xlat25;
  let x_2071 : vec4<f32> = u_xlat9;
  let x_2074 : vec4<f32> = u_xlat0;
  let x_2076 : vec3<f32> = ((vec3<f32>(x_2069, x_2069, x_2069) * vec3<f32>(x_2071.x, x_2071.y, x_2071.z)) + vec3<f32>(x_2074.x, x_2074.y, x_2074.z));
  let x_2077 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2076.x, x_2076.y, x_2076.z, x_2077.w);
  let x_2079 : f32 = u_xlat65;
  let x_2081 : vec4<f32> = u_xlat9;
  let x_2083 : vec3<f32> = (vec3<f32>(x_2079, x_2079, x_2079) * vec3<f32>(x_2081.x, x_2081.y, x_2081.z));
  let x_2084 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2083.x, x_2083.y, x_2083.z, x_2084.w);
  let x_2086 : vec4<f32> = u_xlat8;
  let x_2088 : vec4<f32> = u_xlat9;
  let x_2090 : vec3<f32> = (vec3<f32>(x_2086.x, x_2086.y, x_2086.z) * vec3<f32>(x_2088.x, x_2088.y, x_2088.z));
  let x_2091 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2090.x, x_2090.y, x_2090.z, x_2091.w);
  let x_2093 : vec4<f32> = u_xlat5;
  let x_2095 : vec3<f32> = u_xlat22;
  let x_2097 : vec4<f32> = u_xlat8;
  let x_2099 : vec3<f32> = ((vec3<f32>(x_2093.x, x_2093.y, x_2093.z) * x_2095) + vec3<f32>(x_2097.x, x_2097.y, x_2097.z));
  let x_2100 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2099.x, x_2099.y, x_2099.z, x_2100.w);
  let x_2103 : f32 = u_xlat4.x;
  let x_2105 : f32 = x_95.unity_LightData.z;
  u_xlat65 = (x_2103 * x_2105);
  let x_2107 : vec4<f32> = u_xlat3;
  let x_2110 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat66 = dot(vec3<f32>(x_2107.x, x_2107.y, x_2107.z), vec3<f32>(x_2110.x, x_2110.y, x_2110.z));
  let x_2113 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2113, 0.0f, 1.0f);
  let x_2115 : f32 = u_xlat65;
  let x_2116 : f32 = u_xlat66;
  u_xlat65 = (x_2115 * x_2116);
  let x_2118 : f32 = u_xlat65;
  let x_2120 : vec4<f32> = u_xlat7;
  let x_2122 : vec3<f32> = (vec3<f32>(x_2118, x_2118, x_2118) * vec3<f32>(x_2120.x, x_2120.y, x_2120.z));
  let x_2123 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2122.x, x_2122.y, x_2123.z, x_2122.z);
  let x_2125 : vec3<f32> = u_xlat2;
  let x_2127 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2129 : vec3<f32> = (x_2125 + vec3<f32>(x_2127.x, x_2127.y, x_2127.z));
  let x_2130 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2129.x, x_2129.y, x_2129.z, x_2130.w);
  let x_2132 : vec4<f32> = u_xlat7;
  let x_2134 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2132.x, x_2132.y, x_2132.z), vec3<f32>(x_2134.x, x_2134.y, x_2134.z));
  let x_2137 : f32 = u_xlat65;
  u_xlat65 = max(x_2137, 1.17549435e-37f);
  let x_2140 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_2140);
  let x_2142 : f32 = u_xlat65;
  let x_2144 : vec4<f32> = u_xlat7;
  let x_2146 : vec3<f32> = (vec3<f32>(x_2142, x_2142, x_2142) * vec3<f32>(x_2144.x, x_2144.y, x_2144.z));
  let x_2147 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2146.x, x_2146.y, x_2146.z, x_2147.w);
  let x_2149 : vec4<f32> = u_xlat3;
  let x_2151 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2149.x, x_2149.y, x_2149.z), vec3<f32>(x_2151.x, x_2151.y, x_2151.z));
  let x_2154 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2154, 0.0f, 1.0f);
  let x_2157 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2159 : vec4<f32> = u_xlat7;
  u_xlat66 = dot(vec3<f32>(x_2157.x, x_2157.y, x_2157.z), vec3<f32>(x_2159.x, x_2159.y, x_2159.z));
  let x_2162 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2162, 0.0f, 1.0f);
  let x_2164 : f32 = u_xlat65;
  let x_2165 : f32 = u_xlat65;
  u_xlat65 = (x_2164 * x_2165);
  let x_2167 : f32 = u_xlat65;
  let x_2169 : f32 = u_xlat46.x;
  u_xlat65 = ((x_2167 * x_2169) + 1.000010014f);
  let x_2173 : f32 = u_xlat66;
  let x_2174 : f32 = u_xlat66;
  u_xlat66 = (x_2173 * x_2174);
  let x_2176 : f32 = u_xlat65;
  let x_2177 : f32 = u_xlat65;
  u_xlat65 = (x_2176 * x_2177);
  let x_2179 : f32 = u_xlat66;
  u_xlat66 = max(x_2179, 0.100000001f);
  let x_2182 : f32 = u_xlat65;
  let x_2183 : f32 = u_xlat66;
  u_xlat65 = (x_2182 * x_2183);
  let x_2185 : f32 = u_xlat27;
  let x_2186 : f32 = u_xlat65;
  u_xlat65 = (x_2185 * x_2186);
  let x_2188 : f32 = u_xlat68;
  let x_2189 : f32 = u_xlat65;
  u_xlat65 = (x_2188 / x_2189);
  let x_2191 : vec4<f32> = u_xlat0;
  let x_2193 : f32 = u_xlat65;
  let x_2196 : vec3<f32> = u_xlat22;
  let x_2197 : vec3<f32> = ((vec3<f32>(x_2191.x, x_2191.y, x_2191.z) * vec3<f32>(x_2193, x_2193, x_2193)) + x_2196);
  let x_2198 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2197.x, x_2197.y, x_2197.z, x_2198.w);
  let x_2200 : vec4<f32> = u_xlat4;
  let x_2202 : vec4<f32> = u_xlat7;
  let x_2204 : vec3<f32> = (vec3<f32>(x_2200.x, x_2200.y, x_2200.w) * vec3<f32>(x_2202.x, x_2202.y, x_2202.z));
  let x_2205 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2204.x, x_2204.y, x_2205.z, x_2204.z);
  let x_2208 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2210 : f32 = x_95.unity_LightData.y;
  u_xlat65 = min(x_2208, x_2210);
  let x_2213 : f32 = u_xlat65;
  u_xlatu65 = bitcast<u32>(i32(x_2213));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2225 : u32 = u_xlatu_loop_1;
    let x_2226 : u32 = u_xlatu65;
    if ((x_2225 < x_2226)) {
    } else {
      break;
    }
    let x_2229 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2229 >> 2u);
    let x_2232 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2232 & 3u));
    let x_2235 : u32 = u_xlatu69;
    let x_2238 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_2235)];
    let x_2248 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2253 : vec4<u32> = indexable[x_2248];
    u_xlat69 = dot(x_2238, bitcast<vec4<f32>>(x_2253));
    let x_2257 : f32 = u_xlat69;
    u_xlati69 = i32(x_2257);
    let x_2259 : vec3<f32> = vs_TEXCOORD1;
    let x_2271 : i32 = u_xlati69;
    let x_2273 : vec4<f32> = x_2270.x_AdditionalLightsPosition[x_2271];
    let x_2276 : i32 = u_xlati69;
    let x_2278 : vec4<f32> = x_2270.x_AdditionalLightsPosition[x_2276];
    let x_2280 : vec3<f32> = ((-(x_2259) * vec3<f32>(x_2273.w, x_2273.w, x_2273.w)) + vec3<f32>(x_2278.x, x_2278.y, x_2278.z));
    let x_2281 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2280.x, x_2280.y, x_2280.z, x_2281.w);
    let x_2283 : vec4<f32> = u_xlat8;
    let x_2285 : vec4<f32> = u_xlat8;
    u_xlat70 = dot(vec3<f32>(x_2283.x, x_2283.y, x_2283.z), vec3<f32>(x_2285.x, x_2285.y, x_2285.z));
    let x_2288 : f32 = u_xlat70;
    u_xlat70 = max(x_2288, 6.10351562e-05f);
    let x_2292 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_2292);
    let x_2294 : f32 = u_xlat71;
    let x_2296 : vec4<f32> = u_xlat8;
    let x_2298 : vec3<f32> = (vec3<f32>(x_2294, x_2294, x_2294) * vec3<f32>(x_2296.x, x_2296.y, x_2296.z));
    let x_2299 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2298.x, x_2298.y, x_2298.z, x_2299.w);
    let x_2301 : f32 = u_xlat70;
    u_xlat72 = (1.0f / x_2301);
    let x_2303 : f32 = u_xlat70;
    let x_2304 : i32 = u_xlati69;
    let x_2306 : f32 = x_2270.x_AdditionalLightsAttenuation[x_2304].x;
    u_xlat70 = (x_2303 * x_2306);
    let x_2308 : f32 = u_xlat70;
    let x_2310 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2308) * x_2310) + 1.0f);
    let x_2313 : f32 = u_xlat70;
    u_xlat70 = max(x_2313, 0.0f);
    let x_2315 : f32 = u_xlat70;
    let x_2316 : f32 = u_xlat70;
    u_xlat70 = (x_2315 * x_2316);
    let x_2318 : f32 = u_xlat70;
    let x_2319 : f32 = u_xlat72;
    u_xlat70 = (x_2318 * x_2319);
    let x_2321 : i32 = u_xlati69;
    let x_2323 : vec4<f32> = x_2270.x_AdditionalLightsSpotDir[x_2321];
    let x_2325 : vec4<f32> = u_xlat9;
    u_xlat72 = dot(vec3<f32>(x_2323.x, x_2323.y, x_2323.z), vec3<f32>(x_2325.x, x_2325.y, x_2325.z));
    let x_2328 : f32 = u_xlat72;
    let x_2329 : i32 = u_xlati69;
    let x_2331 : f32 = x_2270.x_AdditionalLightsAttenuation[x_2329].z;
    let x_2333 : i32 = u_xlati69;
    let x_2335 : f32 = x_2270.x_AdditionalLightsAttenuation[x_2333].w;
    u_xlat72 = ((x_2328 * x_2331) + x_2335);
    let x_2337 : f32 = u_xlat72;
    u_xlat72 = clamp(x_2337, 0.0f, 1.0f);
    let x_2339 : f32 = u_xlat72;
    let x_2340 : f32 = u_xlat72;
    u_xlat72 = (x_2339 * x_2340);
    let x_2342 : f32 = u_xlat70;
    let x_2343 : f32 = u_xlat72;
    u_xlat70 = (x_2342 * x_2343);
    let x_2345 : f32 = u_xlat48;
    let x_2347 : i32 = u_xlati69;
    let x_2349 : vec4<f32> = x_2270.x_AdditionalLightsColor[x_2347];
    let x_2351 : vec3<f32> = (vec3<f32>(x_2345, x_2345, x_2345) * vec3<f32>(x_2349.x, x_2349.y, x_2349.z));
    let x_2352 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2351.x, x_2351.y, x_2351.z, x_2352.w);
    let x_2354 : vec4<f32> = u_xlat3;
    let x_2356 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2354.x, x_2354.y, x_2354.z), vec3<f32>(x_2356.x, x_2356.y, x_2356.z));
    let x_2359 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2359, 0.0f, 1.0f);
    let x_2361 : f32 = u_xlat69;
    let x_2362 : f32 = u_xlat70;
    u_xlat69 = (x_2361 * x_2362);
    let x_2364 : f32 = u_xlat69;
    let x_2366 : vec4<f32> = u_xlat10;
    let x_2368 : vec3<f32> = (vec3<f32>(x_2364, x_2364, x_2364) * vec3<f32>(x_2366.x, x_2366.y, x_2366.z));
    let x_2369 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2368.x, x_2368.y, x_2368.z, x_2369.w);
    let x_2371 : vec4<f32> = u_xlat8;
    let x_2373 : f32 = u_xlat71;
    let x_2376 : vec3<f32> = u_xlat2;
    let x_2377 : vec3<f32> = ((vec3<f32>(x_2371.x, x_2371.y, x_2371.z) * vec3<f32>(x_2373, x_2373, x_2373)) + x_2376);
    let x_2378 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2377.x, x_2377.y, x_2377.z, x_2378.w);
    let x_2380 : vec4<f32> = u_xlat8;
    let x_2382 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2380.x, x_2380.y, x_2380.z), vec3<f32>(x_2382.x, x_2382.y, x_2382.z));
    let x_2385 : f32 = u_xlat69;
    u_xlat69 = max(x_2385, 1.17549435e-37f);
    let x_2387 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_2387);
    let x_2389 : f32 = u_xlat69;
    let x_2391 : vec4<f32> = u_xlat8;
    let x_2393 : vec3<f32> = (vec3<f32>(x_2389, x_2389, x_2389) * vec3<f32>(x_2391.x, x_2391.y, x_2391.z));
    let x_2394 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2393.x, x_2393.y, x_2393.z, x_2394.w);
    let x_2396 : vec4<f32> = u_xlat3;
    let x_2398 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2396.x, x_2396.y, x_2396.z), vec3<f32>(x_2398.x, x_2398.y, x_2398.z));
    let x_2401 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2401, 0.0f, 1.0f);
    let x_2403 : vec4<f32> = u_xlat9;
    let x_2405 : vec4<f32> = u_xlat8;
    u_xlat70 = dot(vec3<f32>(x_2403.x, x_2403.y, x_2403.z), vec3<f32>(x_2405.x, x_2405.y, x_2405.z));
    let x_2408 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2408, 0.0f, 1.0f);
    let x_2410 : f32 = u_xlat69;
    let x_2411 : f32 = u_xlat69;
    u_xlat69 = (x_2410 * x_2411);
    let x_2413 : f32 = u_xlat69;
    let x_2415 : f32 = u_xlat46.x;
    u_xlat69 = ((x_2413 * x_2415) + 1.000010014f);
    let x_2418 : f32 = u_xlat70;
    let x_2419 : f32 = u_xlat70;
    u_xlat70 = (x_2418 * x_2419);
    let x_2421 : f32 = u_xlat69;
    let x_2422 : f32 = u_xlat69;
    u_xlat69 = (x_2421 * x_2422);
    let x_2424 : f32 = u_xlat70;
    u_xlat70 = max(x_2424, 0.100000001f);
    let x_2426 : f32 = u_xlat69;
    let x_2427 : f32 = u_xlat70;
    u_xlat69 = (x_2426 * x_2427);
    let x_2429 : f32 = u_xlat27;
    let x_2430 : f32 = u_xlat69;
    u_xlat69 = (x_2429 * x_2430);
    let x_2432 : f32 = u_xlat68;
    let x_2433 : f32 = u_xlat69;
    u_xlat69 = (x_2432 / x_2433);
    let x_2435 : vec4<f32> = u_xlat0;
    let x_2437 : f32 = u_xlat69;
    let x_2440 : vec3<f32> = u_xlat22;
    let x_2441 : vec3<f32> = ((vec3<f32>(x_2435.x, x_2435.y, x_2435.z) * vec3<f32>(x_2437, x_2437, x_2437)) + x_2440);
    let x_2442 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2441.x, x_2441.y, x_2441.z, x_2442.w);
    let x_2444 : vec4<f32> = u_xlat8;
    let x_2446 : vec4<f32> = u_xlat10;
    let x_2449 : vec4<f32> = u_xlat7;
    let x_2451 : vec3<f32> = ((vec3<f32>(x_2444.x, x_2444.y, x_2444.z) * vec3<f32>(x_2446.x, x_2446.y, x_2446.z)) + vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
    let x_2452 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2451.x, x_2451.y, x_2451.z, x_2452.w);

    continuing {
      let x_2454 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2454 + bitcast<u32>(1i));
    }
  }
  let x_2456 : vec4<f32> = u_xlat5;
  let x_2458 : vec4<f32> = u_xlat6;
  let x_2461 : vec4<f32> = u_xlat4;
  let x_2463 : vec3<f32> = ((vec3<f32>(x_2456.x, x_2456.y, x_2456.z) * vec3<f32>(x_2458.x, x_2458.x, x_2458.x)) + vec3<f32>(x_2461.x, x_2461.y, x_2461.w));
  let x_2464 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
  let x_2466 : vec4<f32> = u_xlat7;
  let x_2468 : vec4<f32> = u_xlat0;
  let x_2470 : vec3<f32> = (vec3<f32>(x_2466.x, x_2466.y, x_2466.z) + vec3<f32>(x_2468.x, x_2468.y, x_2468.z));
  let x_2471 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2470.x, x_2470.y, x_2470.z, x_2471.w);
  let x_2473 : f32 = u_xlat63;
  let x_2474 : f32 = u_xlat63;
  u_xlat63 = (x_2473 * -(x_2474));
  let x_2477 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2477);
  let x_2479 : vec4<f32> = u_xlat0;
  let x_2483 : vec4<f32> = x_44.unity_FogColor;
  let x_2486 : vec3<f32> = (vec3<f32>(x_2479.x, x_2479.y, x_2479.z) + -(vec3<f32>(x_2483.x, x_2483.y, x_2483.z)));
  let x_2487 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2487.w);
  let x_2491 : f32 = u_xlat63;
  let x_2493 : vec4<f32> = u_xlat0;
  let x_2497 : vec4<f32> = x_44.unity_FogColor;
  let x_2499 : vec3<f32> = ((vec3<f32>(x_2491, x_2491, x_2491) * vec3<f32>(x_2493.x, x_2493.y, x_2493.z)) + vec3<f32>(x_2497.x, x_2497.y, x_2497.z));
  let x_2500 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2499.x, x_2499.y, x_2499.z, x_2500.w);
  let x_2505 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2505 == 1.0f);
  let x_2507 : bool = u_xlatb0;
  if (x_2507) {
    let x_2512 : f32 = u_xlat1.x;
    x_2508 = x_2512;
  } else {
    x_2508 = 1.0f;
  }
  let x_2514 : f32 = x_2508;
  SV_Target0.w = x_2514;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

