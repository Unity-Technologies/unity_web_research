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
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(64) */
  x_ShadowBias : vec4<f32>,
  /* @offset(80) */
  x_LightDirection : vec3<f32>,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat3 : vec2<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_35 : UnityInstancing_Terrain;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlatu1 : vec4<u32>;

var<private> u_xlat6 : vec2<f32>;

@group(0) @binding(0) var x_TerrainHeightmapTexture : texture_2d<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_TerrainNormalmapTexture : texture_2d<f32>;

@group(1) @binding(3) var<uniform> x_120 : x_Terrain;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_140 : UnityPerDraw;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_193 : VGlobals;

var<private> u_xlat9 : f32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
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
  u_xlat3 = (vec2<f32>(x_27.x, x_27.y) + vec2<f32>(x_39.x, x_39.y));
  let x_44 : vec2<f32> = u_xlat3;
  let x_45 : i32 = u_xlati0;
  let x_47 : vec4<f32> = x_35.TerrainArray[x_45].x_TerrainPatchInstanceData;
  let x_49 : vec2<f32> = (x_44 * vec2<f32>(x_47.z, x_47.z));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_50.z, x_50.w);
  let x_55 : vec4<f32> = u_xlat0;
  let x_60 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_55.x, x_55.y)));
  let x_61 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_60.x, x_60.y, x_61.z, x_61.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_74 : vec4<u32> = u_xlatu1;
  let x_78 : u32 = u_xlatu1.w;
  let x_80 : vec4<f32> = textureLoad(x_TerrainHeightmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_74.x, x_74.y)), bitcast<i32>(x_78));
  u_xlat6 = vec2<f32>(x_80.x, x_80.y);
  let x_85 : vec4<u32> = u_xlatu1;
  let x_89 : u32 = u_xlatu1.w;
  let x_91 : vec4<f32> = textureLoad(x_TerrainNormalmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_85.x, x_85.y)), bitcast<i32>(x_89));
  let x_93 : vec3<f32> = vec3<f32>(x_91.x, x_91.y, x_91.z);
  let x_94 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_96 : vec4<f32> = u_xlat1;
  let x_103 : vec3<f32> = ((vec3<f32>(x_96.x, x_96.y, x_96.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_109 : f32 = u_xlat6.y;
  let x_113 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_109 * 256.0f) + x_113);
  let x_117 : f32 = u_xlat6.x;
  let x_124 : f32 = x_120.x_TerrainHeightmapScale.y;
  u_xlat6.x = (x_117 * x_124);
  let x_128 : f32 = u_xlat6.x;
  u_xlat6.x = (x_128 * 0.00389105058275163174f);
  let x_134 : vec2<f32> = u_xlat6;
  let x_143 : vec4<f32> = x_140.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_134.x, x_134.x, x_134.x) * vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : vec4<f32> = u_xlat0;
  let x_149 : vec4<f32> = x_120.x_TerrainHeightmapScale;
  u_xlat6 = (vec2<f32>(x_146.x, x_146.y) * vec2<f32>(x_149.x, x_149.z));
  let x_153 : vec4<f32> = u_xlat0;
  let x_157 : vec4<f32> = x_120.x_TerrainHeightmapRecipSize;
  vs_TEXCOORD0 = (vec2<f32>(x_153.x, x_153.y) * vec2<f32>(x_157.z, x_157.w));
  let x_161 : vec4<f32> = x_140.unity_ObjectToWorld[0i];
  let x_163 : vec2<f32> = u_xlat6;
  let x_166 : vec3<f32> = u_xlat2;
  let x_167 : vec3<f32> = ((vec3<f32>(x_161.x, x_161.y, x_161.z) * vec3<f32>(x_163.x, x_163.x, x_163.x)) + x_166);
  let x_168 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_172 : vec4<f32> = x_140.unity_ObjectToWorld[2i];
  let x_174 : vec2<f32> = u_xlat6;
  let x_177 : vec4<f32> = u_xlat0;
  let x_179 : vec3<f32> = ((vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_174.y, x_174.y, x_174.y)) + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_182 : vec4<f32> = u_xlat0;
  let x_186 : vec4<f32> = x_140.unity_ObjectToWorld[3i];
  let x_188 : vec3<f32> = (vec3<f32>(x_182.x, x_182.y, x_182.z) + vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_196 : vec3<f32> = x_193.x_LightDirection;
  let x_198 : vec4<f32> = x_193.x_ShadowBias;
  let x_201 : vec4<f32> = u_xlat0;
  let x_203 : vec3<f32> = ((x_196 * vec3<f32>(x_198.x, x_198.x, x_198.x)) + vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_206 : vec4<f32> = u_xlat1;
  let x_209 : vec4<f32> = x_140.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_206.y, x_206.y, x_206.y) * vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_213 : vec4<f32> = x_140.unity_ObjectToWorld[0i];
  let x_215 : vec4<f32> = u_xlat1;
  let x_218 : vec3<f32> = u_xlat2;
  let x_219 : vec3<f32> = ((vec3<f32>(x_213.x, x_213.y, x_213.z) * vec3<f32>(x_215.x, x_215.x, x_215.x)) + x_218);
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_220.z, x_219.z);
  let x_223 : vec4<f32> = x_140.unity_ObjectToWorld[2i];
  let x_225 : vec4<f32> = u_xlat1;
  let x_228 : vec4<f32> = u_xlat1;
  let x_230 : vec3<f32> = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.z, x_225.z, x_225.z)) + vec3<f32>(x_228.x, x_228.y, x_228.w));
  let x_231 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_234 : vec4<f32> = u_xlat1;
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec3<f32>(x_234.x, x_234.y, x_234.z), vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_239 : f32 = u_xlat9;
  u_xlat9 = max(x_239, 1.17549435e-38f);
  let x_242 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_242);
  let x_244 : f32 = u_xlat9;
  let x_246 : vec4<f32> = u_xlat1;
  let x_248 : vec3<f32> = (vec3<f32>(x_244, x_244, x_244) * vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_249 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_252 : vec3<f32> = x_193.x_LightDirection;
  let x_253 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(x_252, vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : f32 = u_xlat9;
  u_xlat9 = clamp(x_256, 0.0f, 1.0f);
  let x_260 : f32 = u_xlat9;
  u_xlat9 = (-(x_260) + 1.0f);
  let x_263 : f32 = u_xlat9;
  let x_265 : f32 = x_193.x_ShadowBias.y;
  u_xlat9 = (x_263 * x_265);
  let x_267 : vec4<f32> = u_xlat1;
  let x_269 : f32 = u_xlat9;
  let x_272 : vec4<f32> = u_xlat0;
  let x_274 : vec3<f32> = ((vec3<f32>(x_267.x, x_267.y, x_267.z) * vec3<f32>(x_269, x_269, x_269)) + vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_277 : vec4<f32> = u_xlat0;
  let x_280 : vec4<f32> = x_193.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_277.y, x_277.y, x_277.y, x_277.y) * x_280);
  let x_283 : vec4<f32> = x_193.unity_MatrixVP[0i];
  let x_284 : vec4<f32> = u_xlat0;
  let x_287 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_283 * vec4<f32>(x_284.x, x_284.x, x_284.x, x_284.x)) + x_287);
  let x_290 : vec4<f32> = x_193.unity_MatrixVP[2i];
  let x_291 : vec4<f32> = u_xlat0;
  let x_294 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_290 * vec4<f32>(x_291.z, x_291.z, x_291.z, x_291.z)) + x_294);
  let x_296 : vec4<f32> = u_xlat0;
  let x_298 : vec4<f32> = x_193.unity_MatrixVP[3i];
  u_xlat0 = (x_296 + x_298);
  let x_305 : f32 = u_xlat0.z;
  gl_Position.z = min(x_305, 1.0f);
  let x_309 : vec4<f32> = u_xlat0;
  let x_310 : vec3<f32> = vec3<f32>(x_309.x, x_309.y, x_309.w);
  let x_313 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_310.x, x_310.y, x_313.z, x_310.z);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position);
}


const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;

