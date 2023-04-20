diagnostic(off, derivative_uniformity);

struct UnityDrawCallInfo {
  /* @offset(0) */
  unity_BaseInstanceID : i32,
  /* @offset(4) */
  unity_InstanceCount : i32,
}

struct TerrainArray_Type {
  /* @offset(0) */
  x_TerrainPatchInstanceData : vec4<f32>,
}

alias Arr = array<TerrainArray_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_Terrain {
  /* @offset(0) */
  TerrainArray : Arr,
}

struct x_Terrain {
  /* @offset(0) */
  x_NormalScale0 : f32,
  /* @offset(4) */
  x_NormalScale1 : f32,
  /* @offset(8) */
  x_NormalScale2 : f32,
  /* @offset(12) */
  x_NormalScale3 : f32,
  /* @offset(16) */
  x_Metallic0 : f32,
  /* @offset(20) */
  x_Metallic1 : f32,
  /* @offset(24) */
  x_Metallic2 : f32,
  /* @offset(28) */
  x_Metallic3 : f32,
  /* @offset(32) */
  x_Smoothness0 : f32,
  /* @offset(36) */
  x_Smoothness1 : f32,
  /* @offset(40) */
  x_Smoothness2 : f32,
  /* @offset(44) */
  x_Smoothness3 : f32,
  /* @offset(48) */
  x_DiffuseRemapScale0 : vec4<f32>,
  /* @offset(64) */
  x_DiffuseRemapScale1 : vec4<f32>,
  /* @offset(80) */
  x_DiffuseRemapScale2 : vec4<f32>,
  /* @offset(96) */
  x_DiffuseRemapScale3 : vec4<f32>,
  /* @offset(112) */
  x_MaskMapRemapOffset0 : vec4<f32>,
  /* @offset(128) */
  x_MaskMapRemapOffset1 : vec4<f32>,
  /* @offset(144) */
  x_MaskMapRemapOffset2 : vec4<f32>,
  /* @offset(160) */
  x_MaskMapRemapOffset3 : vec4<f32>,
  /* @offset(176) */
  x_MaskMapRemapScale0 : vec4<f32>,
  /* @offset(192) */
  x_MaskMapRemapScale1 : vec4<f32>,
  /* @offset(208) */
  x_MaskMapRemapScale2 : vec4<f32>,
  /* @offset(224) */
  x_MaskMapRemapScale3 : vec4<f32>,
  /* @offset(240) */
  x_Control_ST : vec4<f32>,
  /* @offset(256) */
  x_Control_TexelSize : vec4<f32>,
  /* @offset(272) */
  x_DiffuseHasAlpha0 : f32,
  /* @offset(276) */
  x_DiffuseHasAlpha1 : f32,
  /* @offset(280) */
  x_DiffuseHasAlpha2 : f32,
  /* @offset(284) */
  x_DiffuseHasAlpha3 : f32,
  /* @offset(288) */
  x_LayerHasMask0 : f32,
  /* @offset(292) */
  x_LayerHasMask1 : f32,
  /* @offset(296) */
  x_LayerHasMask2 : f32,
  /* @offset(300) */
  x_LayerHasMask3 : f32,
  /* @offset(304) */
  x_Splat0_ST : vec4<f32>,
  /* @offset(320) */
  x_Splat1_ST : vec4<f32>,
  /* @offset(336) */
  x_Splat2_ST : vec4<f32>,
  /* @offset(352) */
  x_Splat3_ST : vec4<f32>,
  /* @offset(368) */
  x_HeightTransition : f32,
  /* @offset(372) */
  x_NumLayersCount : f32,
  /* @offset(384) */
  x_TerrainHeightmapRecipSize : vec4<f32>,
  /* @offset(400) */
  x_TerrainHeightmapScale : vec4<f32>,
}

alias Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr_1,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(32) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(96) */
  unity_MatrixVP : mat4x4<f32>,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(6) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat4 : vec2<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(8) var<uniform> x_35 : UnityInstancing_Terrain;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat8 : vec2<f32>;

@group(1) @binding(7) var<uniform> x_57 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_71 : UnityPerDraw;

var<private> u_xlatu1 : vec4<u32>;

@group(0) @binding(15) var x_TerrainHeightmapTexture : texture_2d<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(16) var x_TerrainNormalmapTexture : texture_2d<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_212 : VGlobals;

var<private> u_xlat12 : f32;

var<private> u_xlatb12 : bool;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_237 : f32;
  var x_346 : f32;
  var x_358 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_InstanceIndex;
  let x_18 : i32 = x_14.unity_BaseInstanceID;
  u_xlati0 = (x_11 + x_18);
  let x_27 : vec4<f32> = in_POSITION0;
  let x_36 : i32 = u_xlati0;
  let x_39 : vec4<f32> = x_35.TerrainArray[x_36].x_TerrainPatchInstanceData;
  u_xlat4 = (vec2<f32>(x_27.x, x_27.y) + vec2<f32>(x_39.x, x_39.y));
  let x_44 : vec2<f32> = u_xlat4;
  let x_45 : i32 = u_xlati0;
  let x_47 : vec4<f32> = x_35.TerrainArray[x_45].x_TerrainPatchInstanceData;
  let x_49 : vec2<f32> = (x_44 * vec2<f32>(x_47.z, x_47.z));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_50.z, x_50.w);
  let x_53 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_57.x_TerrainHeightmapRecipSize;
  u_xlat8 = (vec2<f32>(x_53.x, x_53.y) * vec2<f32>(x_60.z, x_60.w));
  let x_65 : vec2<f32> = u_xlat8;
  let x_74 : vec4<f32> = x_71.unity_LightmapST;
  let x_78 : vec4<f32> = x_71.unity_LightmapST;
  let x_80 : vec2<f32> = ((x_65 * vec2<f32>(x_74.x, x_74.y)) + vec2<f32>(x_78.z, x_78.w));
  let x_81 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_81.x, x_81.y, x_80.x, x_80.y);
  let x_83 : vec2<f32> = u_xlat8;
  let x_84 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_89 : vec4<f32> = u_xlat0;
  let x_94 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_89.x, x_89.y)));
  let x_95 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_94.x, x_94.y, x_95.z, x_95.w);
  let x_97 : vec4<f32> = u_xlat0;
  let x_101 : vec4<f32> = x_57.x_TerrainHeightmapScale;
  let x_103 : vec2<f32> = (vec2<f32>(x_97.x, x_97.y) * vec2<f32>(x_101.x, x_101.z));
  let x_104 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_103.x, x_103.y, x_104.z, x_104.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_115 : vec4<u32> = u_xlatu1;
  let x_119 : u32 = u_xlatu1.w;
  let x_121 : vec4<f32> = textureLoad(x_TerrainHeightmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_115.x, x_115.y)), bitcast<i32>(x_119));
  u_xlat8 = vec2<f32>(x_121.x, x_121.y);
  let x_126 : vec4<u32> = u_xlatu1;
  let x_130 : u32 = u_xlatu1.w;
  let x_132 : vec4<f32> = textureLoad(x_TerrainNormalmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_126.x, x_126.y)), bitcast<i32>(x_130));
  let x_134 : vec3<f32> = vec3<f32>(x_132.x, x_132.y, x_132.z);
  let x_135 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_137 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_137.z, x_137.x, x_137.y, x_137.z) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_148 : f32 = u_xlat8.y;
  let x_152 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_148 * 256.0f) + x_152);
  let x_156 : f32 = u_xlat8.x;
  let x_159 : f32 = x_57.x_TerrainHeightmapScale.y;
  u_xlat8.x = (x_156 * x_159);
  let x_163 : f32 = u_xlat8.x;
  u_xlat8.x = (x_163 * 0.00389105058275163174f);
  let x_169 : vec2<f32> = u_xlat8;
  let x_173 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_169.x, x_169.x, x_169.x) * vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_177 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_179 : vec4<f32> = u_xlat0;
  let x_182 : vec3<f32> = u_xlat2;
  let x_183 : vec3<f32> = ((vec3<f32>(x_177.x, x_177.y, x_177.z) * vec3<f32>(x_179.x, x_179.x, x_179.x)) + x_182);
  let x_184 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_183.x, x_184.y, x_183.y, x_183.z);
  let x_188 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_190 : vec4<f32> = u_xlat0;
  let x_193 : vec4<f32> = u_xlat0;
  let x_195 : vec3<f32> = ((vec3<f32>(x_188.x, x_188.y, x_188.z) * vec3<f32>(x_190.y, x_190.y, x_190.y)) + vec3<f32>(x_193.x, x_193.z, x_193.w));
  let x_196 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_198 : vec4<f32> = u_xlat0;
  let x_202 : vec4<f32> = x_71.unity_ObjectToWorld[3i];
  let x_204 : vec3<f32> = (vec3<f32>(x_198.x, x_198.y, x_198.z) + vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_207 : vec4<f32> = u_xlat0;
  let x_215 : vec3<f32> = x_212.x_WorldSpaceCameraPos;
  u_xlat2 = (-(vec3<f32>(x_207.x, x_207.y, x_207.z)) + x_215);
  let x_218 : vec3<f32> = u_xlat2;
  let x_219 : vec3<f32> = u_xlat2;
  u_xlat12 = dot(x_218, x_219);
  let x_221 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_221);
  let x_223 : f32 = u_xlat12;
  let x_225 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_223, x_223, x_223) * x_225);
  let x_231 : f32 = x_212.unity_OrthoParams.w;
  u_xlatb12 = (x_231 == 0.0f);
  let x_235 : bool = u_xlatb12;
  if (x_235) {
    let x_241 : f32 = u_xlat2.x;
    x_237 = x_241;
  } else {
    let x_244 : f32 = x_212.unity_MatrixV[0i].z;
    x_237 = x_244;
  }
  let x_245 : f32 = x_237;
  vs_TEXCOORD3.w = x_245;
  let x_249 : vec4<f32> = u_xlat1;
  let x_252 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_249.z, x_249.z, x_249.z) * vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_256 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_258 : vec4<f32> = u_xlat1;
  let x_261 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_258.y, x_258.y, x_258.y)) + x_261);
  let x_264 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_266 : vec4<f32> = u_xlat1;
  let x_269 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_264.x, x_264.y, x_264.z) * vec3<f32>(x_266.w, x_266.w, x_266.w)) + x_269);
  let x_271 : vec3<f32> = u_xlat3;
  let x_272 : vec3<f32> = u_xlat3;
  u_xlat2.x = dot(x_271, x_272);
  let x_276 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_276, 1.17549435e-38f);
  let x_281 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_281);
  let x_284 : vec3<f32> = u_xlat2;
  let x_286 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_284.x, x_284.x, x_284.x) * x_286);
  let x_288 : vec3<f32> = u_xlat3;
  let x_289 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_292 : vec4<f32> = u_xlat1;
  u_xlat9 = (vec2<f32>(x_292.z, x_292.w) * vec2<f32>(1.0f, 0.0f));
  let x_297 : vec4<f32> = u_xlat1;
  let x_301 : vec2<f32> = u_xlat9;
  let x_303 : vec2<f32> = ((vec2<f32>(x_297.x, x_297.y) * vec2<f32>(0.0f, 1.0f)) + -(x_301));
  let x_304 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_303.x, x_303.y, x_304.z, x_304.w);
  let x_307 : vec4<f32> = u_xlat1;
  let x_310 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat5 = (vec3<f32>(x_307.y, x_307.y, x_307.y) * vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_314 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_316 : vec4<f32> = u_xlat1;
  let x_319 : vec3<f32> = u_xlat5;
  let x_320 : vec3<f32> = ((vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.x, x_316.x, x_316.x)) + x_319);
  let x_321 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_324 : vec4<f32> = u_xlat1;
  let x_326 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_324.x, x_324.y, x_324.z), vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : f32 = u_xlat13;
  u_xlat13 = max(x_329, 1.17549435e-38f);
  let x_331 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_331);
  let x_333 : f32 = u_xlat13;
  let x_335 : vec4<f32> = u_xlat1;
  let x_337 : vec3<f32> = (vec3<f32>(x_333, x_333, x_333) * vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_341 : vec4<f32> = u_xlat1;
  let x_342 : vec3<f32> = vec3<f32>(x_341.x, x_341.y, x_341.z);
  let x_343 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : bool = u_xlatb12;
  if (x_345) {
    let x_350 : f32 = u_xlat2.y;
    x_346 = x_350;
  } else {
    let x_353 : f32 = x_212.unity_MatrixV[1i].z;
    x_346 = x_353;
  }
  let x_354 : f32 = x_346;
  vs_TEXCOORD4.w = x_354;
  let x_357 : bool = u_xlatb12;
  if (x_357) {
    let x_362 : f32 = u_xlat2.z;
    x_358 = x_362;
  } else {
    let x_365 : f32 = x_212.unity_MatrixV[2i].z;
    x_358 = x_365;
  }
  let x_366 : f32 = x_358;
  vs_TEXCOORD5.w = x_366;
  let x_368 : vec4<f32> = u_xlat1;
  let x_370 : vec3<f32> = u_xlat3;
  u_xlat2 = (vec3<f32>(x_368.y, x_368.z, x_368.x) * vec3<f32>(x_370.z, x_370.x, x_370.y));
  let x_373 : vec3<f32> = u_xlat3;
  let x_375 : vec4<f32> = u_xlat1;
  let x_378 : vec3<f32> = u_xlat2;
  let x_380 : vec3<f32> = ((vec3<f32>(x_373.y, x_373.z, x_373.x) * vec3<f32>(x_375.z, x_375.x, x_375.y)) + -(x_378));
  let x_381 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_384 : f32 = x_71.unity_WorldTransformParams.w;
  u_xlatb12 = (x_384 >= 0.0f);
  let x_386 : bool = u_xlatb12;
  u_xlat12 = select(-1.0f, 1.0f, x_386);
  let x_388 : f32 = u_xlat12;
  let x_390 : vec4<f32> = u_xlat1;
  let x_392 : vec3<f32> = (vec3<f32>(x_388, x_388, x_388) * vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_397 : vec4<f32> = u_xlat0;
  vs_TEXCOORD7 = vec3<f32>(x_397.x, x_397.y, x_397.z);
  vs_TEXCOORD6 = 0.0f;
  let x_400 : vec4<f32> = u_xlat0;
  let x_403 : vec4<f32> = x_212.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_400.y, x_400.y, x_400.y, x_400.y) * x_403);
  let x_406 : vec4<f32> = x_212.unity_MatrixVP[0i];
  let x_407 : vec4<f32> = u_xlat0;
  let x_410 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_406 * vec4<f32>(x_407.x, x_407.x, x_407.x, x_407.x)) + x_410);
  let x_413 : vec4<f32> = x_212.unity_MatrixVP[2i];
  let x_414 : vec4<f32> = u_xlat0;
  let x_417 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_413 * vec4<f32>(x_414.z, x_414.z, x_414.z, x_414.z)) + x_417);
  let x_423 : vec4<f32> = u_xlat0;
  let x_425 : vec4<f32> = x_212.unity_MatrixVP[3i];
  gl_Position = (x_423 + x_425);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD7_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD7, gl_Position);
}


const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;

