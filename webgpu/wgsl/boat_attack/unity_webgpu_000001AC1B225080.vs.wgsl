diagnostic(off, derivative_uniformity);

struct Props {
  /* @offset(0) */
  x_Validity : f32,
  /* @offset(4) */
  x_DilationThreshold : f32,
  /* @offset(8) */
  x_TouchupedByVolume : f32,
  /* @offset(16) */
  x_IndexInAtlas : vec4<f32>,
  /* @offset(32) */
  x_Offset : vec4<f32>,
  /* @offset(48) */
  x_RelativeSize : f32,
}

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(80) */
  x_ProbeSize : f32,
  /* @offset(84) */
  x_CullDistance : f32,
  /* @offset(88) */
  x_MaxAllowedSubdiv : i32,
  /* @offset(92) */
  x_MinAllowedSubdiv : i32,
  /* @offset(96) */
  x_DebugProbeVolumeSampling : i32,
}

alias Arr = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr,
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

alias Arr_1 = array<u32, 4u>;

struct x_positionNormalBuffer_type {
  /* @offset(0) */
  value : Arr_1,
}

alias RTArr = array<x_positionNormalBuffer_type>;

struct x_positionNormalBuffer {
  /* @offset(0) */
  x_positionNormalBuffer_buf : RTArr,
}

struct ShaderVariablesProbeVolumes {
  /* @offset(0) */
  x_PoolDim_CellInMeters : vec4<f32>,
  /* @offset(16) */
  x_RcpPoolDim_Padding : vec4<f32>,
  /* @offset(32) */
  x_MinEntryPos_Noise : vec4<f32>,
  /* @offset(48) */
  x_IndicesDim_IndexChunkSize : vec4<f32>,
  /* @offset(64) */
  x_Biases_CellInMinBrick_MinBrickSize : vec4<f32>,
  /* @offset(80) */
  x_LeakReductionParams : vec4<f32>,
  /* @offset(96) */
  x_Weight_MinLoadedCellInEntries : vec4<f32>,
  /* @offset(112) */
  x_MaxLoadedCellInEntries_FrameIndex : vec4<f32>,
  /* @offset(128) */
  x_NormalizationClamp_IndirectionEntryDim_Padding : vec4<f32>,
}

alias Arr_2 = array<u32, 3u>;

struct x_APVResCellIndices_type {
  /* @offset(0) */
  value : Arr_2,
}

alias RTArr_1 = array<x_APVResCellIndices_type>;

struct x_APVResCellIndices {
  /* @offset(0) */
  x_APVResCellIndices_buf : RTArr_1,
}

alias Arr_3 = array<u32, 1u>;

struct x_APVResIndex_type {
  /* @offset(0) */
  value : Arr_3,
}

alias RTArr_2 = array<x_APVResIndex_type>;

struct x_APVResIndex {
  /* @offset(0) */
  x_APVResIndex_buf : RTArr_2,
}

var<private> u_xlati0 : i32;

@group(1) @binding(1) var<uniform> x_34 : Props;

var<private> u_xlat10 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_47 : VGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerDraw;

var<private> u_xlatb10 : bool;

var<private> u_xlatb20 : bool;

var<private> u_xlatb0 : bool;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(6) var<storage, read> x_118 : x_positionNormalBuffer;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_173 : ShaderVariablesProbeVolumes;

var<private> u_xlatb4 : vec3<bool>;

var<private> u_xlatb5 : vec3<bool>;

var<private> u_xlatb30 : bool;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlati4 : vec3<i32>;

var<private> u_xlati5 : vec3<i32>;

var<private> u_xlati31 : i32;

var<private> u_xlati32 : i32;

var<private> u_xlatu4 : vec4<u32>;

@group(0) @binding(4) var<storage, read> x_295 : x_APVResCellIndices;

var<private> u_xlatb31 : bool;

var<private> u_xlatu32 : u32;

var<private> u_xlat32 : f32;

var<private> u_xlatu6 : vec4<u32>;

var<private> u_xlatu7 : vec4<u32>;

var<private> u_xlatu5 : vec4<u32>;

var<private> u_xlat31 : f32;

var<private> u_xlati3 : vec3<i32>;

var<private> u_xlatb16 : vec3<bool>;

var<private> u_xlatb7 : vec3<bool>;

var<private> u_xlati7 : vec2<i32>;

var<private> u_xlatu30 : u32;

@group(0) @binding(3) var<storage, read> x_563 : x_APVResIndex;

var<private> u_xlatu31 : u32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(5) var x_APVResValidity : texture_3d<f32>;

var<private> u_xlat33 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatu15 : vec3<u32>;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat20 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> phase0_Output0_3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 : u32 = *(value);
  let x_17 : i32 = *(offset_1);
  let x_21 : i32 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & ~((4294967295u << bitcast<u32>(x_21))));
}

fn main_1() {
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var param_9 : u32;
  var param_10 : i32;
  var param_11 : i32;
  var x_381 : vec3<u32>;
  var x_395 : vec3<u32>;
  var x_406 : vec2<u32>;
  var x_1268 : vec3<f32>;
  var x_1643 : f32;
  var x_1653 : f32;
  var x_1665 : f32;
  var x_1677 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_39 : f32 = x_34.x_IndexInAtlas.w;
  u_xlati0 = i32(x_39);
  let x_51 : vec3<f32> = x_47.x_WorldSpaceCameraPos;
  let x_60 : vec4<f32> = x_57.unity_ObjectToWorld[3i];
  u_xlat10 = (-(x_51) + vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_63 : vec3<f32> = u_xlat10;
  let x_64 : vec3<f32> = u_xlat10;
  u_xlat10.x = dot(x_63, x_64);
  let x_70 : f32 = u_xlat10.x;
  u_xlat10.x = sqrt(x_70);
  let x_77 : f32 = x_47.x_CullDistance;
  let x_79 : f32 = u_xlat10.x;
  u_xlatb10 = (x_77 < x_79);
  let x_85 : i32 = x_47.x_MaxAllowedSubdiv;
  let x_86 : i32 = u_xlati0;
  u_xlatb20 = (x_85 < x_86);
  let x_88 : bool = u_xlatb20;
  let x_89 : bool = u_xlatb10;
  u_xlatb10 = (x_88 | x_89);
  let x_92 : i32 = u_xlati0;
  let x_95 : i32 = x_47.x_MinAllowedSubdiv;
  u_xlatb0 = (x_92 < x_95);
  let x_97 : bool = u_xlatb0;
  let x_98 : bool = u_xlatb10;
  u_xlatb0 = (x_97 | x_98);
  let x_100 : bool = u_xlatb0;
  if (!(x_100)) {
    let x_106 : i32 = x_47.x_DebugProbeVolumeSampling;
    if ((x_106 != 0i)) {
      let x_121 : u32 = x_118.x_positionNormalBuffer_buf[0i].value[0i];
      let x_125 : u32 = x_118.x_positionNormalBuffer_buf[0i].value[1i];
      let x_129 : u32 = x_118.x_positionNormalBuffer_buf[0i].value[2i];
      let x_131 : vec3<f32> = vec3<f32>(bitcast<f32>(x_121), bitcast<f32>(x_125), bitcast<f32>(x_129));
      let x_132 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
      let x_136 : u32 = x_118.x_positionNormalBuffer_buf[1i].value[0i];
      let x_139 : u32 = x_118.x_positionNormalBuffer_buf[1i].value[1i];
      let x_142 : u32 = x_118.x_positionNormalBuffer_buf[1i].value[2i];
      u_xlat1 = vec3<f32>(bitcast<f32>(x_136), bitcast<f32>(x_139), bitcast<f32>(x_142));
      let x_146 : vec4<f32> = u_xlat0;
      let x_150 : vec3<f32> = x_47.x_WorldSpaceCameraPos;
      let x_151 : vec3<f32> = (-(vec3<f32>(x_146.x, x_146.y, x_146.z)) + x_150);
      let x_152 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
      let x_155 : vec4<f32> = u_xlat2;
      let x_157 : vec4<f32> = u_xlat2;
      u_xlat30 = dot(vec3<f32>(x_155.x, x_155.y, x_155.z), vec3<f32>(x_157.x, x_157.y, x_157.z));
      let x_160 : f32 = u_xlat30;
      u_xlat30 = inverseSqrt(x_160);
      let x_162 : f32 = u_xlat30;
      let x_164 : vec4<f32> = u_xlat2;
      let x_166 : vec3<f32> = (vec3<f32>(x_162, x_162, x_162) * vec3<f32>(x_164.x, x_164.y, x_164.z));
      let x_167 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
      let x_170 : vec3<f32> = u_xlat1;
      let x_175 : vec4<f32> = x_173.x_Biases_CellInMinBrick_MinBrickSize;
      let x_178 : vec4<f32> = u_xlat0;
      u_xlat3 = ((x_170 * vec3<f32>(x_175.x, x_175.x, x_175.x)) + vec3<f32>(x_178.x, x_178.y, x_178.z));
      let x_181 : vec4<f32> = u_xlat2;
      let x_184 : vec4<f32> = x_173.x_Biases_CellInMinBrick_MinBrickSize;
      let x_187 : vec3<f32> = u_xlat3;
      let x_188 : vec3<f32> = ((vec3<f32>(x_181.x, x_181.y, x_181.z) * vec3<f32>(x_184.y, x_184.y, x_184.y)) + x_187);
      let x_189 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
      let x_191 : vec4<f32> = u_xlat2;
      let x_195 : vec4<f32> = x_173.x_NormalizationClamp_IndirectionEntryDim_Padding;
      u_xlat3 = (vec3<f32>(x_191.x, x_191.y, x_191.z) / vec3<f32>(x_195.z, x_195.z, x_195.z));
      let x_198 : vec3<f32> = u_xlat3;
      u_xlat3 = floor(x_198);
      let x_203 : vec3<f32> = u_xlat3;
      let x_206 : vec4<f32> = x_173.x_Weight_MinLoadedCellInEntries;
      let x_209 : vec4<bool> = (vec4<f32>(x_203.x, x_203.y, x_203.z, x_203.x) >= vec4<f32>(x_206.y, x_206.z, x_206.w, x_206.y));
      u_xlatb4 = vec3<bool>(x_209.x, x_209.y, x_209.z);
      let x_214 : vec4<f32> = x_173.x_MaxLoadedCellInEntries_FrameIndex;
      let x_216 : vec3<f32> = u_xlat3;
      let x_218 : vec4<bool> = (vec4<f32>(x_214.x, x_214.y, x_214.z, x_214.x) >= vec4<f32>(x_216.x, x_216.y, x_216.z, x_216.x));
      u_xlatb5 = vec3<bool>(x_218.x, x_218.y, x_218.z);
      let x_221 : bool = u_xlatb4.x;
      let x_223 : bool = u_xlatb5.x;
      u_xlatb4.x = (x_221 & x_223);
      let x_228 : bool = u_xlatb4.y;
      let x_230 : bool = u_xlatb5.y;
      u_xlatb4.y = (x_228 & x_230);
      let x_234 : bool = u_xlatb4.z;
      let x_236 : bool = u_xlatb5.z;
      u_xlatb4.z = (x_234 & x_236);
      let x_241 : bool = u_xlatb4.y;
      let x_243 : bool = u_xlatb4.x;
      u_xlatb30 = (x_241 & x_243);
      let x_246 : bool = u_xlatb4.z;
      let x_247 : bool = u_xlatb30;
      u_xlatb30 = (x_246 & x_247);
      let x_250 : vec3<f32> = u_xlat3;
      let x_252 : vec4<f32> = x_173.x_MinEntryPos_Noise;
      u_xlat4 = (x_250 + -(vec3<f32>(x_252.x, x_252.y, x_252.z)));
      let x_259 : vec3<f32> = u_xlat4;
      u_xlati4 = vec3<i32>(x_259);
      let x_263 : vec4<f32> = x_173.x_IndicesDim_IndexChunkSize;
      u_xlati5 = vec3<i32>(vec3<f32>(x_263.x, x_263.y, x_263.w));
      let x_268 : i32 = u_xlati5.y;
      let x_270 : i32 = u_xlati5.x;
      u_xlati31 = (x_268 * x_270);
      let x_274 : i32 = u_xlati4.y;
      let x_276 : i32 = u_xlati5.x;
      let x_279 : i32 = u_xlati4.x;
      u_xlati32 = ((x_274 * x_276) + x_279);
      let x_282 : i32 = u_xlati4.z;
      let x_283 : i32 = u_xlati31;
      let x_285 : i32 = u_xlati32;
      u_xlati31 = ((x_282 * x_283) + x_285);
      let x_296 : i32 = u_xlati31;
      let x_298 : u32 = x_295.x_APVResCellIndices_buf[x_296].value[0i];
      let x_299 : i32 = u_xlati31;
      let x_301 : u32 = x_295.x_APVResCellIndices_buf[x_299].value[1i];
      let x_302 : i32 = u_xlati31;
      let x_304 : u32 = x_295.x_APVResCellIndices_buf[x_302].value[2i];
      let x_306 : vec3<u32> = vec3<u32>(x_298, x_301, x_304);
      let x_307 : vec4<u32> = u_xlatu4;
      u_xlatu4 = vec4<u32>(x_306.x, x_306.y, x_306.z, x_307.w);
      let x_312 : u32 = u_xlatu4.x;
      u_xlatb31 = (bitcast<i32>(x_312) != -1i);
      let x_318 : u32 = u_xlatu4.x;
      u_xlatu32 = (x_318 >> 29u);
      let x_322 : u32 = u_xlatu32;
      u_xlat32 = f32(x_322);
      let x_324 : f32 = u_xlat32;
      u_xlat32 = (x_324 * 1.58496248722076416016f);
      let x_327 : f32 = u_xlat32;
      u_xlat32 = exp2(x_327);
      let x_330 : f32 = u_xlat32;
      u_xlatu6.w = bitcast<u32>(i32(x_330));
      let x_334 : vec4<u32> = u_xlatu4;
      let x_339 : vec3<u32> = (vec3<u32>(x_334.x, x_334.y, x_334.z) & vec3<u32>(536870911u, 1023u, 1023u));
      let x_340 : vec4<u32> = u_xlatu6;
      u_xlatu6 = vec4<u32>(x_339.x, x_339.y, x_339.z, x_340.w);
      let x_345 : u32 = u_xlatu4.y;
      param = x_345;
      param_1 = 10i;
      param_2 = 10i;
      let x_348 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
      let x_351 : u32 = u_xlatu4.z;
      param_3 = x_351;
      param_4 = 10i;
      param_5 = 10i;
      let x_354 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
      let x_358 : u32 = u_xlatu4.z;
      param_6 = x_358;
      param_7 = 20i;
      param_8 = 10i;
      let x_361 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      let x_364 : u32 = u_xlatu4.y;
      param_9 = x_364;
      param_10 = 20i;
      param_11 = 10i;
      let x_367 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_9), &(param_10), &(param_11));
      u_xlatu4 = vec4<u32>(x_348, x_354, x_361, x_367);
      let x_371 : u32 = u_xlatu6.y;
      u_xlatu7.x = x_371;
      let x_374 : vec4<u32> = u_xlatu4;
      let x_375 : vec2<u32> = vec2<u32>(x_374.x, x_374.w);
      let x_376 : vec4<u32> = u_xlatu7;
      u_xlatu7 = vec4<u32>(x_376.x, x_375.x, x_375.y, x_376.w);
      let x_379 : bool = u_xlatb31;
      if (x_379) {
        let x_384 : vec4<u32> = u_xlatu7;
        x_381 = vec3<u32>(x_384.x, x_384.y, x_384.z);
      } else {
        x_381 = vec3<u32>(4294967295u, 4294967295u, 4294967295u);
      }
      let x_388 : vec3<u32> = x_381;
      let x_389 : vec4<u32> = u_xlatu5;
      u_xlatu5 = vec4<u32>(x_388.x, x_388.y, x_389.z, x_388.z);
      let x_392 : u32 = u_xlatu6.z;
      u_xlatu4.x = x_392;
      let x_394 : bool = u_xlatb31;
      if (x_394) {
        let x_398 : vec4<u32> = u_xlatu4;
        x_395 = vec3<u32>(x_398.x, x_398.y, x_398.z);
      } else {
        x_395 = vec3<u32>(4294967295u, 4294967295u, 4294967295u);
      }
      let x_401 : vec3<u32> = x_395;
      let x_402 : vec4<u32> = u_xlatu4;
      u_xlatu4 = vec4<u32>(x_401.x, x_401.y, x_401.z, x_402.w);
      let x_404 : bool = u_xlatb31;
      if (x_404) {
        let x_409 : vec4<u32> = u_xlatu6;
        x_406 = vec2<u32>(x_409.x, x_409.w);
      } else {
        x_406 = vec2<u32>(4294967295u, 4294967295u);
      }
      let x_413 : vec2<u32> = x_406;
      let x_414 : vec4<u32> = u_xlatu6;
      u_xlatu6 = vec4<u32>(x_413.x, x_413.y, x_414.z, x_414.w);
      let x_416 : bool = u_xlatb30;
      let x_417 : bool = u_xlatb31;
      u_xlatb30 = (x_416 & x_417);
      let x_419 : vec3<f32> = u_xlat3;
      let x_422 : vec4<f32> = x_173.x_NormalizationClamp_IndirectionEntryDim_Padding;
      let x_425 : vec4<f32> = u_xlat2;
      u_xlat3 = ((-(x_419) * vec3<f32>(x_422.z, x_422.z, x_422.z)) + vec3<f32>(x_425.x, x_425.y, x_425.z));
      let x_430 : u32 = u_xlatu6.y;
      u_xlat31 = f32(bitcast<i32>(x_430));
      let x_433 : f32 = u_xlat31;
      let x_435 : f32 = x_173.x_Biases_CellInMinBrick_MinBrickSize.w;
      u_xlat31 = (x_433 * x_435);
      let x_437 : vec3<f32> = u_xlat3;
      let x_438 : f32 = u_xlat31;
      u_xlat3 = (x_437 / vec3<f32>(x_438, x_438, x_438));
      let x_441 : vec3<f32> = u_xlat3;
      u_xlat3 = floor(x_441);
      let x_444 : vec3<f32> = u_xlat3;
      u_xlati3 = vec3<i32>(x_444);
      let x_448 : vec3<i32> = u_xlati3;
      let x_450 : vec4<u32> = u_xlatu5;
      let x_453 : vec4<bool> = (vec4<i32>(x_448.x, x_448.y, x_448.z, x_448.z) >= bitcast<vec4<i32>>(vec4<u32>(x_450.x, x_450.y, x_450.w, x_450.w)));
      u_xlatb16 = vec3<bool>(x_453.x, x_453.y, x_453.z);
      let x_456 : vec3<i32> = u_xlati3;
      let x_458 : vec4<u32> = u_xlatu4;
      let x_461 : vec4<bool> = (vec4<i32>(x_456.x, x_456.y, x_456.z, x_456.x) < bitcast<vec4<i32>>(vec4<u32>(x_458.x, x_458.y, x_458.z, x_458.x)));
      u_xlatb7 = vec3<bool>(x_461.x, x_461.y, x_461.z);
      let x_464 : bool = u_xlatb16.x;
      let x_466 : bool = u_xlatb7.x;
      u_xlatb16.x = (x_464 & x_466);
      let x_470 : bool = u_xlatb16.y;
      let x_472 : bool = u_xlatb7.y;
      u_xlatb16.y = (x_470 & x_472);
      let x_476 : bool = u_xlatb16.z;
      let x_478 : bool = u_xlatb7.z;
      u_xlatb16.z = (x_476 & x_478);
      let x_482 : bool = u_xlatb16.y;
      let x_484 : bool = u_xlatb16.x;
      u_xlatb31 = (x_482 & x_484);
      let x_490 : bool = u_xlatb16.z;
      let x_493 : bool = u_xlatb31;
      u_xlati7.x = bitcast<i32>(((select(0u, 1u, x_490) * 4294967295u) & (select(0u, 1u, x_493) * 4294967295u)));
      let x_499 : vec4<u32> = u_xlatu5;
      let x_503 : vec4<u32> = u_xlatu4;
      let x_506 : vec2<i32> = (-(bitcast<vec2<i32>>(vec2<u32>(x_499.x, x_499.y))) + bitcast<vec2<i32>>(vec2<u32>(x_503.x, x_503.y)));
      let x_507 : vec3<i32> = u_xlati4;
      u_xlati4 = vec3<i32>(x_506.x, x_506.y, x_507.z);
      let x_509 : vec4<u32> = u_xlatu5;
      let x_513 : vec3<i32> = u_xlati3;
      u_xlati3 = (-(bitcast<vec3<i32>>(vec3<u32>(x_509.x, x_509.y, x_509.w))) + x_513);
      let x_516 : i32 = u_xlati4.y;
      let x_518 : i32 = u_xlati4.x;
      u_xlati31 = (x_516 * x_518);
      let x_521 : i32 = u_xlati3.x;
      let x_523 : i32 = u_xlati4.y;
      let x_526 : i32 = u_xlati3.y;
      u_xlati32 = ((x_521 * x_523) + x_526);
      let x_529 : i32 = u_xlati3.z;
      let x_530 : i32 = u_xlati31;
      let x_532 : i32 = u_xlati32;
      u_xlati31 = ((x_529 * x_530) + x_532);
      let x_535 : u32 = u_xlatu6.x;
      let x_538 : i32 = u_xlati5.z;
      let x_540 : i32 = u_xlati31;
      u_xlati7.y = ((bitcast<i32>(x_535) * x_538) + x_540);
      let x_543 : bool = u_xlatb30;
      let x_551 : vec2<i32> = u_xlati7;
      let x_554 : vec2<i32> = bitcast<vec2<i32>>(((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_543, x_543)) * vec2<u32>(4294967295u, 4294967295u)) & bitcast<vec2<u32>>(x_551)));
      let x_555 : vec3<i32> = u_xlati3;
      u_xlati3 = vec3<i32>(x_554.x, x_554.y, x_555.z);
      let x_565 : i32 = u_xlati3.y;
      let x_567 : u32 = x_563.x_APVResIndex_buf[x_565].value[0i];
      u_xlatu30 = x_567;
      let x_569 : i32 = u_xlati3.x;
      let x_571 : u32 = u_xlatu30;
      u_xlatu30 = select(4294967295u, x_571, (x_569 != 0i));
      let x_574 : u32 = u_xlatu30;
      u_xlatu31 = (x_574 >> 28u);
      let x_577 : u32 = u_xlatu31;
      u_xlat31 = f32(x_577);
      let x_579 : f32 = u_xlat31;
      u_xlat31 = (x_579 * 1.58496248722076416016f);
      let x_581 : f32 = u_xlat31;
      u_xlat31 = exp2(x_581);
      let x_583 : u32 = u_xlatu30;
      u_xlatu30 = (x_583 & 268435455u);
      let x_586 : u32 = u_xlatu30;
      u_xlat30 = f32(x_586);
      let x_588 : f32 = u_xlat30;
      let x_590 : f32 = x_173.x_RcpPoolDim_Padding.w;
      u_xlat32 = (x_588 * x_590);
      let x_592 : f32 = u_xlat32;
      u_xlat3.z = floor(x_592);
      let x_596 : f32 = x_173.x_PoolDim_CellInMeters.y;
      let x_598 : f32 = x_173.x_PoolDim_CellInMeters.x;
      u_xlat32 = (x_596 * x_598);
      let x_601 : f32 = u_xlat3.z;
      let x_603 : f32 = u_xlat32;
      let x_605 : f32 = u_xlat30;
      u_xlat30 = ((-(x_601) * x_603) + x_605);
      let x_607 : f32 = u_xlat30;
      let x_609 : f32 = x_173.x_RcpPoolDim_Padding.x;
      u_xlat32 = (x_607 * x_609);
      let x_611 : f32 = u_xlat32;
      u_xlat3.y = floor(x_611);
      let x_615 : f32 = u_xlat3.y;
      let x_618 : f32 = x_173.x_PoolDim_CellInMeters.x;
      let x_620 : f32 = u_xlat30;
      u_xlat30 = ((-(x_615) * x_618) + x_620);
      let x_622 : f32 = u_xlat30;
      u_xlat3.x = floor(x_622);
      let x_625 : vec4<f32> = u_xlat2;
      let x_628 : vec4<f32> = x_173.x_Biases_CellInMinBrick_MinBrickSize;
      u_xlat4 = (vec3<f32>(x_625.x, x_625.y, x_625.z) / vec3<f32>(x_628.w, x_628.w, x_628.w));
      let x_631 : vec3<f32> = u_xlat4;
      let x_632 : f32 = u_xlat31;
      u_xlat4 = (x_631 / vec3<f32>(x_632, x_632, x_632));
      let x_635 : vec3<f32> = u_xlat4;
      u_xlat4 = fract(x_635);
      let x_637 : vec3<f32> = u_xlat3;
      u_xlat3 = (x_637 + vec3<f32>(0.5f, 0.5f, 0.5f));
      let x_641 : vec3<f32> = u_xlat4;
      let x_645 : vec3<f32> = u_xlat3;
      u_xlat3 = ((x_641 * vec3<f32>(3.0f, 3.0f, 3.0f)) + x_645);
      let x_647 : vec3<f32> = u_xlat3;
      let x_649 : vec4<f32> = x_173.x_RcpPoolDim_Padding;
      u_xlat3 = (x_647 * vec3<f32>(x_649.x, x_649.y, x_649.z));
      let x_652 : f32 = u_xlat31;
      let x_654 : f32 = x_173.x_Biases_CellInMinBrick_MinBrickSize.w;
      u_xlat30 = (x_652 * x_654);
      let x_656 : f32 = u_xlat30;
      u_xlat31 = (x_656 * 0.3333333432674407959f);
      let x_659 : vec4<f32> = u_xlat2;
      let x_661 : f32 = u_xlat31;
      u_xlat4 = (vec3<f32>(x_659.x, x_659.y, x_659.z) / vec3<f32>(x_661, x_661, x_661));
      let x_665 : vec3<f32> = u_xlat4;
      u_xlat5 = fract(x_665);
      let x_667 : vec3<f32> = u_xlat4;
      let x_668 : vec3<f32> = u_xlat5;
      u_xlat4 = (x_667 + -(x_668));
      let x_671 : vec3<f32> = u_xlat3;
      let x_673 : vec4<f32> = x_173.x_PoolDim_CellInMeters;
      u_xlat3 = ((x_671 * vec3<f32>(x_673.x, x_673.y, x_673.z)) + vec3<f32>(-0.5f, -0.5f, -0.5f));
      let x_679 : vec3<f32> = u_xlat3;
      let x_681 : vec3<u32> = bitcast<vec3<u32>>(vec3<i32>(x_679));
      let x_682 : vec4<u32> = u_xlatu5;
      u_xlatu5 = vec4<u32>(x_681.x, x_681.y, x_681.z, x_682.w);
      let x_684 : vec3<f32> = u_xlat3;
      u_xlat3 = fract(x_684);
      let x_687 : vec3<f32> = u_xlat3;
      u_xlat6 = (-(x_687) + vec3<f32>(1.0f, 1.0f, 1.0f));
      u_xlatu5.w = 0u;
      let x_697 : vec4<u32> = u_xlatu5;
      let x_701 : u32 = u_xlatu5.w;
      let x_703 : vec4<f32> = textureLoad(x_APVResValidity, bitcast<vec3<i32>>(vec3<u32>(x_697.x, x_697.y, x_697.z)), bitcast<i32>(x_701));
      u_xlat32 = x_703.x;
      let x_705 : f32 = u_xlat32;
      u_xlat32 = (x_705 * 255.0f);
      let x_708 : f32 = u_xlat32;
      u_xlatu32 = u32(x_708);
      let x_712 : f32 = u_xlat6.y;
      let x_714 : f32 = u_xlat6.x;
      u_xlat33 = (x_712 * x_714);
      let x_718 : f32 = u_xlat6.z;
      let x_719 : f32 = u_xlat33;
      u_xlat34 = (x_718 * x_719);
      let x_721 : u32 = u_xlatu32;
      u_xlatu5 = (vec4<u32>(x_721, x_721, x_721, x_721) & vec4<u32>(1u, 2u, 4u, 8u));
      let x_727 : u32 = u_xlatu5.x;
      u_xlat5.x = f32(bitcast<i32>(x_727));
      let x_731 : vec3<f32> = u_xlat4;
      let x_732 : f32 = u_xlat31;
      let x_735 : vec4<f32> = u_xlat0;
      let x_738 : vec3<f32> = ((x_731 * vec3<f32>(x_732, x_732, x_732)) + -(vec3<f32>(x_735.x, x_735.y, x_735.z)));
      let x_739 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
      let x_742 : vec4<f32> = u_xlat0;
      let x_744 : vec4<f32> = u_xlat0;
      u_xlat36 = dot(vec3<f32>(x_742.x, x_742.y, x_742.z), vec3<f32>(x_744.x, x_744.y, x_744.z));
      let x_747 : f32 = u_xlat36;
      u_xlat36 = inverseSqrt(x_747);
      let x_750 : vec4<f32> = u_xlat0;
      let x_752 : f32 = u_xlat36;
      let x_754 : vec3<f32> = (vec3<f32>(x_750.x, x_750.y, x_750.z) * vec3<f32>(x_752, x_752, x_752));
      let x_755 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
      let x_757 : vec4<f32> = u_xlat7;
      let x_759 : vec3<f32> = u_xlat1;
      u_xlat36 = dot(vec3<f32>(x_757.x, x_757.y, x_757.z), x_759);
      let x_761 : f32 = u_xlat36;
      let x_763 : f32 = x_173.x_LeakReductionParams.z;
      u_xlat36 = (x_761 + -(x_763));
      let x_766 : f32 = u_xlat36;
      u_xlat36 = clamp(x_766, 0.0f, 1.0f);
      let x_770 : f32 = u_xlat5.x;
      let x_771 : f32 = u_xlat36;
      u_xlat5.x = (x_770 * x_771);
      let x_775 : vec3<f32> = u_xlat3;
      let x_777 : vec3<f32> = u_xlat6;
      let x_779 : vec2<f32> = (vec2<f32>(x_775.x, x_775.y) * vec2<f32>(x_777.y, x_777.x));
      let x_780 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_779.x, x_779.y, x_780.z);
      let x_782 : vec3<f32> = u_xlat6;
      let x_784 : vec3<f32> = u_xlat6;
      let x_786 : vec2<f32> = (vec2<f32>(x_782.z, x_782.z) * vec2<f32>(x_784.x, x_784.y));
      let x_787 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_786.x, x_786.y, x_787.z, x_787.w);
      let x_791 : vec4<u32> = u_xlatu5;
      u_xlatu15 = min(vec3<u32>(x_791.y, x_791.z, x_791.w), vec3<u32>(1u, 1u, 1u));
      let x_796 : vec3<u32> = u_xlatu15;
      u_xlat15 = vec3<f32>(bitcast<vec3<i32>>(x_796));
      let x_800 : f32 = u_xlat30;
      let x_804 : vec4<f32> = u_xlat0;
      u_xlat8 = ((vec3<f32>(x_800, x_800, x_800) * vec3<f32>(0.3333333432674407959f, 0.0f, 0.0f)) + vec3<f32>(x_804.x, x_804.y, x_804.z));
      let x_807 : vec3<f32> = u_xlat8;
      let x_808 : vec3<f32> = u_xlat8;
      u_xlat36 = dot(x_807, x_808);
      let x_810 : f32 = u_xlat36;
      u_xlat36 = inverseSqrt(x_810);
      let x_812 : f32 = u_xlat36;
      let x_814 : vec3<f32> = u_xlat8;
      u_xlat8 = (vec3<f32>(x_812, x_812, x_812) * x_814);
      let x_816 : vec3<f32> = u_xlat8;
      let x_817 : vec3<f32> = u_xlat1;
      u_xlat36 = dot(x_816, x_817);
      let x_819 : f32 = u_xlat36;
      let x_821 : f32 = x_173.x_LeakReductionParams.z;
      u_xlat36 = (x_819 + -(x_821));
      let x_824 : f32 = u_xlat36;
      u_xlat36 = clamp(x_824, 0.0f, 1.0f);
      let x_827 : f32 = u_xlat15.x;
      let x_828 : f32 = u_xlat36;
      u_xlat15.x = (x_827 * x_828);
      let x_832 : f32 = u_xlat15.x;
      let x_834 : f32 = u_xlat7.x;
      u_xlat8.x = (x_832 * x_834);
      let x_837 : f32 = u_xlat34;
      let x_839 : f32 = u_xlat5.x;
      let x_842 : f32 = u_xlat8.x;
      u_xlat34 = ((x_837 * x_839) + x_842);
      let x_844 : f32 = u_xlat30;
      let x_848 : vec4<f32> = u_xlat0;
      let x_850 : vec3<f32> = ((vec3<f32>(x_844, x_844, x_844) * vec3<f32>(0.0f, 0.3333333432674407959f, 0.0f)) + vec3<f32>(x_848.x, x_848.y, x_848.z));
      let x_851 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_850.x, x_851.y, x_850.y, x_850.z);
      let x_853 : vec4<f32> = u_xlat7;
      let x_855 : vec4<f32> = u_xlat7;
      u_xlat5.x = dot(vec3<f32>(x_853.x, x_853.z, x_853.w), vec3<f32>(x_855.x, x_855.z, x_855.w));
      let x_860 : f32 = u_xlat5.x;
      u_xlat5.x = inverseSqrt(x_860);
      let x_863 : vec3<f32> = u_xlat5;
      let x_865 : vec4<f32> = u_xlat7;
      let x_867 : vec3<f32> = (vec3<f32>(x_863.x, x_863.x, x_863.x) * vec3<f32>(x_865.x, x_865.z, x_865.w));
      let x_868 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_867.x, x_868.y, x_867.y, x_867.z);
      let x_870 : vec4<f32> = u_xlat7;
      let x_872 : vec3<f32> = u_xlat1;
      u_xlat5.x = dot(vec3<f32>(x_870.x, x_870.z, x_870.w), x_872);
      let x_876 : f32 = u_xlat5.x;
      let x_878 : f32 = x_173.x_LeakReductionParams.z;
      u_xlat5.x = (x_876 + -(x_878));
      let x_883 : f32 = u_xlat5.x;
      u_xlat5.x = clamp(x_883, 0.0f, 1.0f);
      let x_887 : f32 = u_xlat15.y;
      let x_889 : f32 = u_xlat5.x;
      u_xlat5.x = (x_887 * x_889);
      let x_893 : f32 = u_xlat5.x;
      let x_895 : f32 = u_xlat7.y;
      u_xlat8.y = (x_893 * x_895);
      let x_899 : f32 = u_xlat7.y;
      let x_901 : f32 = u_xlat5.x;
      let x_903 : f32 = u_xlat34;
      u_xlat34 = ((x_899 * x_901) + x_903);
      let x_906 : f32 = u_xlat3.y;
      let x_908 : f32 = u_xlat3.x;
      u_xlat5.x = (x_906 * x_908);
      let x_912 : f32 = u_xlat6.z;
      let x_914 : f32 = u_xlat5.x;
      u_xlat15.x = (x_912 * x_914);
      let x_917 : f32 = u_xlat30;
      let x_921 : vec4<f32> = u_xlat0;
      let x_923 : vec3<f32> = ((vec3<f32>(x_917, x_917, x_917) * vec3<f32>(0.3333333432674407959f, 0.3333333432674407959f, 0.0f)) + vec3<f32>(x_921.x, x_921.y, x_921.z));
      let x_924 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
      let x_927 : vec4<f32> = u_xlat7;
      let x_929 : vec4<f32> = u_xlat7;
      u_xlat25 = dot(vec3<f32>(x_927.x, x_927.y, x_927.z), vec3<f32>(x_929.x, x_929.y, x_929.z));
      let x_932 : f32 = u_xlat25;
      u_xlat25 = inverseSqrt(x_932);
      let x_934 : f32 = u_xlat25;
      let x_936 : vec4<f32> = u_xlat7;
      let x_938 : vec3<f32> = (vec3<f32>(x_934, x_934, x_934) * vec3<f32>(x_936.x, x_936.y, x_936.z));
      let x_939 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
      let x_941 : vec4<f32> = u_xlat7;
      let x_943 : vec3<f32> = u_xlat1;
      u_xlat25 = dot(vec3<f32>(x_941.x, x_941.y, x_941.z), x_943);
      let x_945 : f32 = u_xlat25;
      let x_947 : f32 = x_173.x_LeakReductionParams.z;
      u_xlat25 = (x_945 + -(x_947));
      let x_950 : f32 = u_xlat25;
      u_xlat25 = clamp(x_950, 0.0f, 1.0f);
      let x_953 : f32 = u_xlat15.z;
      let x_954 : f32 = u_xlat25;
      u_xlat25 = (x_953 * x_954);
      let x_956 : f32 = u_xlat25;
      let x_958 : f32 = u_xlat15.x;
      u_xlat8.z = (x_956 * x_958);
      let x_962 : f32 = u_xlat15.x;
      let x_963 : f32 = u_xlat25;
      let x_965 : f32 = u_xlat34;
      u_xlat34 = ((x_962 * x_963) + x_965);
      let x_968 : f32 = u_xlat3.z;
      let x_969 : f32 = u_xlat33;
      u_xlat33 = (x_968 * x_969);
      let x_971 : u32 = u_xlatu32;
      u_xlatu7 = (vec4<u32>(x_971, x_971, x_971, x_971) & vec4<u32>(16u, 32u, 64u, 128u));
      let x_979 : vec4<u32> = u_xlatu7;
      u_xlatu7 = min(x_979, vec4<u32>(1u, 1u, 1u, 1u));
      let x_982 : vec4<u32> = u_xlatu7;
      u_xlat7 = vec4<f32>(bitcast<vec4<i32>>(x_982));
      let x_985 : f32 = u_xlat30;
      let x_989 : vec4<f32> = u_xlat0;
      u_xlat15 = ((vec3<f32>(x_985, x_985, x_985) * vec3<f32>(0.0f, 0.0f, 0.3333333432674407959f)) + vec3<f32>(x_989.x, x_989.y, x_989.z));
      let x_992 : vec3<f32> = u_xlat15;
      let x_993 : vec3<f32> = u_xlat15;
      u_xlat32 = dot(x_992, x_993);
      let x_995 : f32 = u_xlat32;
      u_xlat32 = inverseSqrt(x_995);
      let x_997 : f32 = u_xlat32;
      let x_999 : vec3<f32> = u_xlat15;
      u_xlat15 = (vec3<f32>(x_997, x_997, x_997) * x_999);
      let x_1001 : vec3<f32> = u_xlat15;
      let x_1002 : vec3<f32> = u_xlat1;
      u_xlat32 = dot(x_1001, x_1002);
      let x_1004 : f32 = u_xlat32;
      let x_1006 : f32 = x_173.x_LeakReductionParams.z;
      u_xlat32 = (x_1004 + -(x_1006));
      let x_1009 : f32 = u_xlat32;
      u_xlat32 = clamp(x_1009, 0.0f, 1.0f);
      let x_1012 : f32 = u_xlat7.x;
      let x_1013 : f32 = u_xlat32;
      u_xlat32 = (x_1012 * x_1013);
      let x_1016 : f32 = u_xlat32;
      let x_1017 : f32 = u_xlat33;
      u_xlat9.x = (x_1016 * x_1017);
      let x_1020 : f32 = u_xlat33;
      let x_1021 : f32 = u_xlat32;
      let x_1023 : f32 = u_xlat34;
      u_xlat32 = ((x_1020 * x_1021) + x_1023);
      let x_1025 : vec3<f32> = u_xlat3;
      let x_1027 : vec3<f32> = u_xlat6;
      let x_1029 : vec2<f32> = (vec2<f32>(x_1025.z, x_1025.z) * vec2<f32>(x_1027.x, x_1027.y));
      let x_1030 : vec3<f32> = u_xlat15;
      u_xlat15 = vec3<f32>(x_1029.x, x_1029.y, x_1030.z);
      let x_1032 : f32 = u_xlat30;
      let x_1036 : vec4<f32> = u_xlat0;
      u_xlat6 = ((vec3<f32>(x_1032, x_1032, x_1032) * vec3<f32>(0.3333333432674407959f, 0.0f, 0.3333333432674407959f)) + vec3<f32>(x_1036.x, x_1036.y, x_1036.z));
      let x_1039 : vec3<f32> = u_xlat6;
      let x_1040 : vec3<f32> = u_xlat6;
      u_xlat33 = dot(x_1039, x_1040);
      let x_1042 : f32 = u_xlat33;
      u_xlat33 = inverseSqrt(x_1042);
      let x_1044 : f32 = u_xlat33;
      let x_1046 : vec3<f32> = u_xlat6;
      u_xlat6 = (vec3<f32>(x_1044, x_1044, x_1044) * x_1046);
      let x_1048 : vec3<f32> = u_xlat6;
      let x_1049 : vec3<f32> = u_xlat1;
      u_xlat33 = dot(x_1048, x_1049);
      let x_1051 : f32 = u_xlat33;
      let x_1053 : f32 = x_173.x_LeakReductionParams.z;
      u_xlat33 = (x_1051 + -(x_1053));
      let x_1056 : f32 = u_xlat33;
      u_xlat33 = clamp(x_1056, 0.0f, 1.0f);
      let x_1059 : f32 = u_xlat7.y;
      let x_1060 : f32 = u_xlat33;
      u_xlat33 = (x_1059 * x_1060);
      let x_1062 : f32 = u_xlat33;
      let x_1064 : f32 = u_xlat15.x;
      u_xlat9.y = (x_1062 * x_1064);
      let x_1068 : f32 = u_xlat15.x;
      let x_1069 : f32 = u_xlat33;
      let x_1071 : f32 = u_xlat32;
      u_xlat32 = ((x_1068 * x_1069) + x_1071);
      let x_1073 : f32 = u_xlat30;
      let x_1077 : vec4<f32> = u_xlat0;
      u_xlat6 = ((vec3<f32>(x_1073, x_1073, x_1073) * vec3<f32>(0.0f, 0.3333333432674407959f, 0.3333333432674407959f)) + vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
      let x_1080 : vec3<f32> = u_xlat6;
      let x_1081 : vec3<f32> = u_xlat6;
      u_xlat33 = dot(x_1080, x_1081);
      let x_1083 : f32 = u_xlat33;
      u_xlat33 = inverseSqrt(x_1083);
      let x_1085 : f32 = u_xlat33;
      let x_1087 : vec3<f32> = u_xlat6;
      u_xlat6 = (vec3<f32>(x_1085, x_1085, x_1085) * x_1087);
      let x_1089 : vec3<f32> = u_xlat6;
      let x_1090 : vec3<f32> = u_xlat1;
      u_xlat33 = dot(x_1089, x_1090);
      let x_1092 : f32 = u_xlat33;
      let x_1094 : f32 = x_173.x_LeakReductionParams.z;
      u_xlat33 = (x_1092 + -(x_1094));
      let x_1097 : f32 = u_xlat33;
      u_xlat33 = clamp(x_1097, 0.0f, 1.0f);
      let x_1100 : f32 = u_xlat7.z;
      let x_1101 : f32 = u_xlat33;
      u_xlat33 = (x_1100 * x_1101);
      let x_1103 : f32 = u_xlat33;
      let x_1105 : f32 = u_xlat15.y;
      u_xlat9.z = (x_1103 * x_1105);
      let x_1109 : f32 = u_xlat15.y;
      let x_1110 : f32 = u_xlat33;
      let x_1112 : f32 = u_xlat32;
      u_xlat32 = ((x_1109 * x_1110) + x_1112);
      let x_1115 : f32 = u_xlat3.z;
      let x_1117 : f32 = u_xlat5.x;
      u_xlat33 = (x_1115 * x_1117);
      let x_1119 : f32 = u_xlat30;
      let x_1123 : vec4<f32> = u_xlat0;
      let x_1125 : vec3<f32> = ((vec3<f32>(x_1119, x_1119, x_1119) * vec3<f32>(0.3333333432674407959f, 0.3333333432674407959f, 0.3333333432674407959f)) + vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
      let x_1126 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
      let x_1128 : vec4<f32> = u_xlat0;
      let x_1130 : vec4<f32> = u_xlat0;
      u_xlat34 = dot(vec3<f32>(x_1128.x, x_1128.y, x_1128.z), vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
      let x_1133 : f32 = u_xlat34;
      u_xlat34 = inverseSqrt(x_1133);
      let x_1135 : vec4<f32> = u_xlat0;
      let x_1137 : f32 = u_xlat34;
      let x_1139 : vec3<f32> = (vec3<f32>(x_1135.x, x_1135.y, x_1135.z) * vec3<f32>(x_1137, x_1137, x_1137));
      let x_1140 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
      let x_1142 : vec4<f32> = u_xlat0;
      let x_1144 : vec3<f32> = u_xlat1;
      u_xlat0.x = dot(vec3<f32>(x_1142.x, x_1142.y, x_1142.z), x_1144);
      let x_1148 : f32 = u_xlat0.x;
      let x_1150 : f32 = x_173.x_LeakReductionParams.z;
      u_xlat0.x = (x_1148 + -(x_1150));
      let x_1155 : f32 = u_xlat0.x;
      u_xlat0.x = clamp(x_1155, 0.0f, 1.0f);
      let x_1159 : f32 = u_xlat7.w;
      let x_1161 : f32 = u_xlat0.x;
      u_xlat0.x = (x_1159 * x_1161);
      let x_1165 : f32 = u_xlat0.x;
      let x_1166 : f32 = u_xlat33;
      u_xlat10.x = (x_1165 * x_1166);
      let x_1169 : f32 = u_xlat33;
      let x_1171 : f32 = u_xlat0.x;
      let x_1173 : f32 = u_xlat32;
      u_xlat0.x = ((x_1169 * x_1171) + x_1173);
      let x_1177 : f32 = u_xlat0.x;
      u_xlat0.x = max(x_1177, 0.00009999999747378752f);
      let x_1182 : f32 = u_xlat0.x;
      u_xlat0.x = (1.0f / x_1182);
      let x_1185 : vec4<f32> = u_xlat0;
      let x_1187 : vec3<f32> = u_xlat8;
      u_xlat1 = (vec3<f32>(x_1185.x, x_1185.x, x_1185.x) * x_1187);
      let x_1189 : vec4<f32> = u_xlat0;
      let x_1191 : vec3<f32> = u_xlat9;
      u_xlat5 = (vec3<f32>(x_1189.x, x_1189.x, x_1189.x) * x_1191);
      let x_1193 : vec3<f32> = u_xlat1;
      let x_1197 : vec3<f32> = u_xlat3;
      u_xlat6 = ((vec3<f32>(x_1193.x, x_1193.x, x_1193.x) * vec3<f32>(1.0f, 0.0f, 0.0f)) + -(x_1197));
      let x_1200 : vec3<f32> = u_xlat1;
      let x_1204 : vec3<f32> = u_xlat6;
      u_xlat6 = ((vec3<f32>(x_1200.y, x_1200.y, x_1200.y) * vec3<f32>(0.0f, 1.0f, 0.0f)) + x_1204);
      let x_1206 : vec3<f32> = u_xlat1;
      let x_1210 : vec3<f32> = u_xlat6;
      u_xlat1 = ((vec3<f32>(x_1206.z, x_1206.z, x_1206.z) * vec3<f32>(1.0f, 1.0f, 0.0f)) + x_1210);
      let x_1212 : vec3<f32> = u_xlat5;
      let x_1216 : vec3<f32> = u_xlat1;
      u_xlat1 = ((vec3<f32>(x_1212.x, x_1212.x, x_1212.x) * vec3<f32>(0.0f, 0.0f, 1.0f)) + x_1216);
      let x_1218 : vec3<f32> = u_xlat5;
      let x_1222 : vec3<f32> = u_xlat1;
      u_xlat1 = ((vec3<f32>(x_1218.y, x_1218.y, x_1218.y) * vec3<f32>(1.0f, 0.0f, 1.0f)) + x_1222);
      let x_1224 : vec3<f32> = u_xlat5;
      let x_1228 : vec3<f32> = u_xlat1;
      u_xlat1 = ((vec3<f32>(x_1224.z, x_1224.z, x_1224.z) * vec3<f32>(0.0f, 1.0f, 1.0f)) + x_1228);
      let x_1230 : vec3<f32> = u_xlat10;
      let x_1232 : vec4<f32> = u_xlat0;
      let x_1235 : vec3<f32> = u_xlat1;
      let x_1236 : vec3<f32> = ((vec3<f32>(x_1230.x, x_1230.x, x_1230.x) * vec3<f32>(x_1232.x, x_1232.x, x_1232.x)) + x_1235);
      let x_1237 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
      let x_1239 : vec3<f32> = u_xlat3;
      let x_1240 : vec4<f32> = u_xlat0;
      let x_1242 : vec3<f32> = (x_1239 + vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
      let x_1243 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
      let x_1247 : f32 = x_173.x_LeakReductionParams.x;
      u_xlatb1 = !((x_1247 == 0.0f));
      let x_1249 : vec3<f32> = u_xlat4;
      let x_1251 : f32 = u_xlat31;
      let x_1254 : vec4<f32> = u_xlat2;
      let x_1256 : vec3<f32> = ((-(x_1249) * vec3<f32>(x_1251, x_1251, x_1251)) + vec3<f32>(x_1254.x, x_1254.y, x_1254.z));
      let x_1257 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
      let x_1259 : vec4<f32> = u_xlat2;
      let x_1261 : f32 = u_xlat31;
      let x_1263 : vec3<f32> = (vec3<f32>(x_1259.x, x_1259.y, x_1259.z) / vec3<f32>(x_1261, x_1261, x_1261));
      let x_1264 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
      let x_1266 : bool = u_xlatb1;
      if (x_1266) {
        let x_1271 : vec4<f32> = u_xlat0;
        x_1268 = vec3<f32>(x_1271.x, x_1271.y, x_1271.z);
      } else {
        let x_1274 : vec4<f32> = u_xlat2;
        x_1268 = vec3<f32>(x_1274.x, x_1274.y, x_1274.z);
      }
      let x_1276 : vec3<f32> = x_1268;
      let x_1277 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1277.w);
      let x_1279 : vec3<f32> = u_xlat4;
      let x_1280 : f32 = u_xlat31;
      let x_1284 : vec4<f32> = x_57.unity_ObjectToWorld[3i];
      u_xlat1 = ((x_1279 * vec3<f32>(x_1280, x_1280, x_1280)) + -(vec3<f32>(x_1284.x, x_1284.y, x_1284.z)));
      let x_1288 : vec3<f32> = u_xlat1;
      let x_1289 : vec3<f32> = u_xlat1;
      u_xlat1.x = dot(x_1288, x_1289);
      let x_1293 : f32 = u_xlat1.x;
      u_xlat1.x = sqrt(x_1293);
      let x_1297 : f32 = u_xlat1.x;
      u_xlatb1 = (x_1297 < 0.00009999999747378752f);
      let x_1299 : bool = u_xlatb1;
      if (x_1299) {
        let x_1302 : vec4<f32> = u_xlat0;
        u_xlat1 = (-(vec3<f32>(x_1302.x, x_1302.y, x_1302.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
        let x_1307 : f32 = u_xlat1.y;
        let x_1309 : f32 = u_xlat1.x;
        u_xlat1.x = (x_1307 * x_1309);
        let x_1313 : f32 = u_xlat1.z;
        let x_1315 : f32 = u_xlat1.x;
        u_xlat1.z = (x_1313 * x_1315);
      } else {
        let x_1319 : f32 = u_xlat30;
        let x_1325 : vec4<f32> = x_57.unity_ObjectToWorld[3i];
        let x_1327 : vec3<f32> = ((vec3<f32>(x_1319, x_1319, x_1319) * vec3<f32>(-0.3333333432674407959f, 0.0f, 0.0f)) + vec3<f32>(x_1325.x, x_1325.y, x_1325.z));
        let x_1328 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1328.w);
        let x_1330 : vec3<f32> = u_xlat4;
        let x_1331 : f32 = u_xlat31;
        let x_1334 : vec4<f32> = u_xlat2;
        let x_1337 : vec3<f32> = ((x_1330 * vec3<f32>(x_1331, x_1331, x_1331)) + -(vec3<f32>(x_1334.x, x_1334.y, x_1334.z)));
        let x_1338 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
        let x_1340 : vec4<f32> = u_xlat2;
        let x_1342 : vec4<f32> = u_xlat2;
        u_xlat2.x = dot(vec3<f32>(x_1340.x, x_1340.y, x_1340.z), vec3<f32>(x_1342.x, x_1342.y, x_1342.z));
        let x_1347 : f32 = u_xlat2.x;
        u_xlat2.x = sqrt(x_1347);
        let x_1353 : f32 = u_xlat2.x;
        u_xlatb2.x = (x_1353 < 0.00009999999747378752f);
        let x_1357 : bool = u_xlatb2.x;
        if (x_1357) {
          let x_1360 : vec4<f32> = u_xlat0;
          let x_1364 : vec2<f32> = (-(vec2<f32>(x_1360.y, x_1360.z)) + vec2<f32>(1.0f, 1.0f));
          let x_1365 : vec4<f32> = u_xlat2;
          u_xlat2 = vec4<f32>(x_1364.x, x_1364.y, x_1365.z, x_1365.w);
          let x_1368 : f32 = u_xlat0.x;
          let x_1370 : f32 = u_xlat2.x;
          u_xlat2.x = (x_1368 * x_1370);
          let x_1374 : f32 = u_xlat2.y;
          let x_1376 : f32 = u_xlat2.x;
          u_xlat1.z = (x_1374 * x_1376);
        } else {
          let x_1380 : f32 = u_xlat30;
          let x_1385 : vec4<f32> = x_57.unity_ObjectToWorld[3i];
          let x_1387 : vec3<f32> = ((vec3<f32>(x_1380, x_1380, x_1380) * vec3<f32>(-0.3333333432674407959f, -0.3333333432674407959f, 0.0f)) + vec3<f32>(x_1385.x, x_1385.y, x_1385.z));
          let x_1388 : vec4<f32> = u_xlat2;
          u_xlat2 = vec4<f32>(x_1387.x, x_1387.y, x_1387.z, x_1388.w);
          let x_1390 : vec3<f32> = u_xlat4;
          let x_1391 : f32 = u_xlat31;
          let x_1394 : vec4<f32> = u_xlat2;
          let x_1397 : vec3<f32> = ((x_1390 * vec3<f32>(x_1391, x_1391, x_1391)) + -(vec3<f32>(x_1394.x, x_1394.y, x_1394.z)));
          let x_1398 : vec4<f32> = u_xlat2;
          u_xlat2 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
          let x_1400 : vec4<f32> = u_xlat2;
          let x_1402 : vec4<f32> = u_xlat2;
          u_xlat2.x = dot(vec3<f32>(x_1400.x, x_1400.y, x_1400.z), vec3<f32>(x_1402.x, x_1402.y, x_1402.z));
          let x_1407 : f32 = u_xlat2.x;
          u_xlat2.x = sqrt(x_1407);
          let x_1411 : f32 = u_xlat2.x;
          u_xlatb2.x = (x_1411 < 0.00009999999747378752f);
          let x_1415 : bool = u_xlatb2.x;
          if (x_1415) {
            let x_1419 : f32 = u_xlat0.y;
            let x_1421 : f32 = u_xlat0.x;
            u_xlat2.x = (x_1419 * x_1421);
            let x_1427 : f32 = u_xlat0.z;
            u_xlat12.x = (-(x_1427) + 1.0f);
            let x_1432 : f32 = u_xlat12.x;
            let x_1434 : f32 = u_xlat2.x;
            u_xlat1.z = (x_1432 * x_1434);
          } else {
            let x_1438 : f32 = u_xlat30;
            let x_1443 : vec4<f32> = x_57.unity_ObjectToWorld[3i];
            let x_1445 : vec3<f32> = ((vec3<f32>(x_1438, x_1438, x_1438) * vec3<f32>(0.0f, -0.3333333432674407959f, 0.0f)) + vec3<f32>(x_1443.x, x_1443.y, x_1443.z));
            let x_1446 : vec4<f32> = u_xlat2;
            u_xlat2 = vec4<f32>(x_1445.x, x_1445.y, x_1445.z, x_1446.w);
            let x_1448 : vec3<f32> = u_xlat4;
            let x_1449 : f32 = u_xlat31;
            let x_1452 : vec4<f32> = u_xlat2;
            let x_1455 : vec3<f32> = ((x_1448 * vec3<f32>(x_1449, x_1449, x_1449)) + -(vec3<f32>(x_1452.x, x_1452.y, x_1452.z)));
            let x_1456 : vec4<f32> = u_xlat2;
            u_xlat2 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
            let x_1458 : vec4<f32> = u_xlat2;
            let x_1460 : vec4<f32> = u_xlat2;
            u_xlat2.x = dot(vec3<f32>(x_1458.x, x_1458.y, x_1458.z), vec3<f32>(x_1460.x, x_1460.y, x_1460.z));
            let x_1465 : f32 = u_xlat2.x;
            u_xlat2.x = sqrt(x_1465);
            let x_1469 : f32 = u_xlat2.x;
            u_xlatb2.x = (x_1469 < 0.00009999999747378752f);
            let x_1473 : bool = u_xlatb2.x;
            if (x_1473) {
              let x_1476 : vec4<f32> = u_xlat0;
              let x_1479 : vec2<f32> = (-(vec2<f32>(x_1476.x, x_1476.z)) + vec2<f32>(1.0f, 1.0f));
              let x_1480 : vec4<f32> = u_xlat2;
              u_xlat2 = vec4<f32>(x_1479.x, x_1479.y, x_1480.z, x_1480.w);
              let x_1483 : f32 = u_xlat0.y;
              let x_1485 : f32 = u_xlat2.x;
              u_xlat2.x = (x_1483 * x_1485);
              let x_1489 : f32 = u_xlat2.y;
              let x_1491 : f32 = u_xlat2.x;
              u_xlat1.z = (x_1489 * x_1491);
            } else {
              let x_1495 : f32 = u_xlat30;
              let x_1500 : vec4<f32> = x_57.unity_ObjectToWorld[3i];
              let x_1502 : vec3<f32> = ((vec3<f32>(x_1495, x_1495, x_1495) * vec3<f32>(-0.3333333432674407959f, 0.0f, -0.3333333432674407959f)) + vec3<f32>(x_1500.x, x_1500.y, x_1500.z));
              let x_1503 : vec4<f32> = u_xlat2;
              u_xlat2 = vec4<f32>(x_1502.x, x_1502.y, x_1502.z, x_1503.w);
              let x_1505 : vec3<f32> = u_xlat4;
              let x_1506 : f32 = u_xlat31;
              let x_1509 : vec4<f32> = u_xlat2;
              let x_1512 : vec3<f32> = ((x_1505 * vec3<f32>(x_1506, x_1506, x_1506)) + -(vec3<f32>(x_1509.x, x_1509.y, x_1509.z)));
              let x_1513 : vec4<f32> = u_xlat2;
              u_xlat2 = vec4<f32>(x_1512.x, x_1512.y, x_1512.z, x_1513.w);
              let x_1515 : vec4<f32> = u_xlat2;
              let x_1517 : vec4<f32> = u_xlat2;
              u_xlat2.x = dot(vec3<f32>(x_1515.x, x_1515.y, x_1515.z), vec3<f32>(x_1517.x, x_1517.y, x_1517.z));
              let x_1522 : f32 = u_xlat2.x;
              u_xlat2.x = sqrt(x_1522);
              let x_1525 : vec4<f32> = u_xlat0;
              u_xlat12 = (-(vec2<f32>(x_1525.y, x_1525.x)) + vec2<f32>(1.0f, 1.0f));
              let x_1529 : vec4<f32> = u_xlat0;
              let x_1531 : vec2<f32> = u_xlat12;
              let x_1532 : vec2<f32> = (vec2<f32>(x_1529.x, x_1529.y) * x_1531);
              let x_1533 : vec3<f32> = u_xlat3;
              u_xlat3 = vec3<f32>(x_1532.x, x_1532.y, x_1533.z);
              let x_1535 : f32 = u_xlat30;
              let x_1540 : vec4<f32> = x_57.unity_ObjectToWorld[3i];
              u_xlat5 = ((vec3<f32>(x_1535, x_1535, x_1535) * vec3<f32>(0.0f, 0.0f, -0.3333333432674407959f)) + vec3<f32>(x_1540.x, x_1540.y, x_1540.z));
              let x_1543 : vec3<f32> = u_xlat4;
              let x_1544 : f32 = u_xlat31;
              let x_1547 : vec3<f32> = u_xlat5;
              u_xlat5 = ((x_1543 * vec3<f32>(x_1544, x_1544, x_1544)) + -(x_1547));
              let x_1550 : vec3<f32> = u_xlat5;
              let x_1551 : vec3<f32> = u_xlat5;
              u_xlat32 = dot(x_1550, x_1551);
              let x_1553 : f32 = u_xlat32;
              u_xlat2.w = sqrt(x_1553);
              let x_1557 : f32 = u_xlat12.x;
              let x_1559 : f32 = u_xlat12.y;
              u_xlat12.x = (x_1557 * x_1559);
              let x_1563 : f32 = u_xlat0.z;
              let x_1565 : f32 = u_xlat12.x;
              u_xlat12.x = (x_1563 * x_1565);
              let x_1568 : f32 = u_xlat30;
              let x_1573 : vec4<f32> = x_57.unity_ObjectToWorld[3i];
              u_xlat5 = ((vec3<f32>(x_1568, x_1568, x_1568) * vec3<f32>(-0.3333333432674407959f, -0.3333333432674407959f, -0.3333333432674407959f)) + vec3<f32>(x_1573.x, x_1573.y, x_1573.z));
              let x_1576 : vec3<f32> = u_xlat4;
              let x_1577 : f32 = u_xlat31;
              let x_1580 : vec3<f32> = u_xlat5;
              u_xlat5 = ((x_1576 * vec3<f32>(x_1577, x_1577, x_1577)) + -(x_1580));
              let x_1584 : vec3<f32> = u_xlat5;
              let x_1585 : vec3<f32> = u_xlat5;
              u_xlat22 = dot(x_1584, x_1585);
              let x_1587 : f32 = u_xlat22;
              u_xlat2.z = sqrt(x_1587);
              let x_1590 : vec4<f32> = u_xlat2;
              let x_1593 : vec4<bool> = (vec4<f32>(x_1590.x, x_1590.x, x_1590.z, x_1590.w) < vec4<f32>(0.00009999999747378752f, 0.0f, 0.00009999999747378752f, 0.00009999999747378752f));
              let x_1594 : vec3<bool> = vec3<bool>(x_1593.x, x_1593.z, x_1593.w);
              let x_1595 : vec4<bool> = u_xlatb2;
              u_xlatb2 = vec4<bool>(x_1594.x, x_1595.y, x_1594.y, x_1594.z);
              let x_1598 : f32 = u_xlat0.y;
              let x_1600 : f32 = u_xlat0.x;
              u_xlat0.x = (x_1598 * x_1600);
              let x_1604 : f32 = u_xlat0.z;
              let x_1606 : f32 = u_xlat0.x;
              u_xlat0.x = (x_1604 * x_1606);
              let x_1609 : f32 = u_xlat30;
              let x_1614 : vec4<f32> = x_57.unity_ObjectToWorld[3i];
              u_xlat5 = ((vec3<f32>(x_1609, x_1609, x_1609) * vec3<f32>(0.0f, -0.3333333432674407959f, -0.3333333432674407959f)) + vec3<f32>(x_1614.x, x_1614.y, x_1614.z));
              let x_1617 : vec3<f32> = u_xlat4;
              let x_1618 : f32 = u_xlat31;
              let x_1621 : vec3<f32> = u_xlat5;
              u_xlat4 = ((x_1617 * vec3<f32>(x_1618, x_1618, x_1618)) + -(x_1621));
              let x_1624 : vec3<f32> = u_xlat4;
              let x_1625 : vec3<f32> = u_xlat4;
              u_xlat10.x = dot(x_1624, x_1625);
              let x_1629 : f32 = u_xlat10.x;
              u_xlat10.x = sqrt(x_1629);
              let x_1633 : f32 = u_xlat10.x;
              u_xlatb10 = (x_1633 < 0.00009999999747378752f);
              let x_1636 : vec4<f32> = u_xlat0;
              let x_1638 : vec3<f32> = u_xlat3;
              u_xlat20 = (vec2<f32>(x_1636.z, x_1636.z) * vec2<f32>(x_1638.x, x_1638.y));
              let x_1641 : bool = u_xlatb10;
              if (x_1641) {
                let x_1647 : f32 = u_xlat20.y;
                x_1643 = x_1647;
              } else {
                x_1643 = 0.0f;
              }
              let x_1649 : f32 = x_1643;
              u_xlat10.x = x_1649;
              let x_1652 : bool = u_xlatb2.z;
              if (x_1652) {
                let x_1657 : f32 = u_xlat0.x;
                x_1653 = x_1657;
              } else {
                let x_1660 : f32 = u_xlat10.x;
                x_1653 = x_1660;
              }
              let x_1661 : f32 = x_1653;
              u_xlat0.x = x_1661;
              let x_1664 : bool = u_xlatb2.w;
              if (x_1664) {
                let x_1669 : f32 = u_xlat12.x;
                x_1665 = x_1669;
              } else {
                let x_1672 : f32 = u_xlat0.x;
                x_1665 = x_1672;
              }
              let x_1673 : f32 = x_1665;
              u_xlat0.x = x_1673;
              let x_1676 : bool = u_xlatb2.x;
              if (x_1676) {
                let x_1681 : f32 = u_xlat20.x;
                x_1677 = x_1681;
              } else {
                let x_1684 : f32 = u_xlat0.x;
                x_1677 = x_1684;
              }
              let x_1685 : f32 = x_1677;
              u_xlat1.z = x_1685;
            }
          }
        }
      }
      let x_1688 : f32 = u_xlat1.z;
      u_xlatb0 = (x_1688 == 0.0f);
      let x_1690 : bool = u_xlatb0;
      if (x_1690) {
        gl_Position = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
        vs_COLOR0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
        phase0_Output0_3 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
        vs_TEXCOORD1 = vec3<f32>(0.0f, 0.0f, 0.0f);
        let x_1707 : vec4<f32> = phase0_Output0_3;
        vs_TEXCOORD0 = vec2<f32>(x_1707.x, x_1707.y);
        let x_1710 : vec4<f32> = phase0_Output0_3;
        vs_TEXCOORD2 = vec2<f32>(x_1710.z, x_1710.w);
        return;
      }
      let x_1715 : vec4<f32> = in_POSITION0;
      let x_1718 : vec4<f32> = x_57.unity_ObjectToWorld[1i];
      u_xlat0 = (vec4<f32>(x_1715.y, x_1715.y, x_1715.y, x_1715.y) * x_1718);
      let x_1721 : vec4<f32> = x_57.unity_ObjectToWorld[0i];
      let x_1722 : vec4<f32> = in_POSITION0;
      let x_1725 : vec4<f32> = u_xlat0;
      u_xlat0 = ((x_1721 * vec4<f32>(x_1722.x, x_1722.x, x_1722.x, x_1722.x)) + x_1725);
      let x_1728 : vec4<f32> = x_57.unity_ObjectToWorld[2i];
      let x_1729 : vec4<f32> = in_POSITION0;
      let x_1732 : vec4<f32> = u_xlat0;
      u_xlat0 = ((x_1728 * vec4<f32>(x_1729.z, x_1729.z, x_1729.z, x_1729.z)) + x_1732);
      let x_1734 : vec4<f32> = u_xlat0;
      let x_1735 : vec4<f32> = u_xlat0;
      u_xlat31 = dot(x_1734, x_1735);
      let x_1737 : f32 = u_xlat31;
      u_xlat31 = inverseSqrt(x_1737);
      let x_1739 : vec4<f32> = u_xlat0;
      let x_1740 : f32 = u_xlat31;
      u_xlat0 = (x_1739 * vec4<f32>(x_1740, x_1740, x_1740, x_1740));
      let x_1743 : vec4<f32> = u_xlat0;
      let x_1745 : f32 = x_47.x_ProbeSize;
      let x_1747 : f32 = x_47.x_ProbeSize;
      let x_1749 : f32 = x_47.x_ProbeSize;
      let x_1751 : f32 = x_47.x_ProbeSize;
      let x_1752 : vec4<f32> = vec4<f32>(x_1745, x_1747, x_1749, x_1751);
      u_xlat0 = (x_1743 * vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1752.w));
      let x_1759 : vec4<f32> = u_xlat0;
      let x_1764 : vec4<f32> = x_57.unity_ObjectToWorld[3i];
      u_xlat0 = ((x_1759 * vec4<f32>(0.30000001192092895508f, 0.30000001192092895508f, 0.30000001192092895508f, 0.30000001192092895508f)) + x_1764);
      let x_1766 : vec4<f32> = u_xlat0;
      let x_1769 : vec4<f32> = x_47.unity_MatrixVP[1i];
      u_xlat2 = (vec4<f32>(x_1766.y, x_1766.y, x_1766.y, x_1766.y) * x_1769);
      let x_1772 : vec4<f32> = x_47.unity_MatrixVP[0i];
      let x_1773 : vec4<f32> = u_xlat0;
      let x_1776 : vec4<f32> = u_xlat2;
      u_xlat2 = ((x_1772 * vec4<f32>(x_1773.x, x_1773.x, x_1773.x, x_1773.x)) + x_1776);
      let x_1779 : vec4<f32> = x_47.unity_MatrixVP[2i];
      let x_1780 : vec4<f32> = u_xlat0;
      let x_1783 : vec4<f32> = u_xlat2;
      u_xlat2 = ((x_1779 * vec4<f32>(x_1780.z, x_1780.z, x_1780.z, x_1780.z)) + x_1783);
      let x_1786 : vec4<f32> = x_47.unity_MatrixVP[3i];
      let x_1787 : vec4<f32> = u_xlat0;
      let x_1790 : vec4<f32> = u_xlat2;
      u_xlat0 = ((x_1786 * vec4<f32>(x_1787.w, x_1787.w, x_1787.w, x_1787.w)) + x_1790);
      let x_1793 : f32 = u_xlat0.z;
      u_xlat20.x = (x_1793 + 1.0f);
      let x_1797 : f32 = u_xlat20.x;
      u_xlat20.x = ((x_1797 * 0.19999998807907104492f) + 0.60000002384185791016f);
      let x_1804 : f32 = u_xlat0.w;
      let x_1806 : f32 = u_xlat20.x;
      gl_Position.z = (x_1804 * x_1806);
      let x_1812 : vec3<f32> = in_NORMAL0;
      let x_1814 : vec4<f32> = x_57.unity_ObjectToWorld[0i];
      u_xlat2.x = dot(x_1812, vec3<f32>(x_1814.x, x_1814.y, x_1814.z));
      let x_1818 : vec3<f32> = in_NORMAL0;
      let x_1820 : vec4<f32> = x_57.unity_ObjectToWorld[1i];
      u_xlat2.y = dot(x_1818, vec3<f32>(x_1820.x, x_1820.y, x_1820.z));
      let x_1824 : vec3<f32> = in_NORMAL0;
      let x_1826 : vec4<f32> = x_57.unity_ObjectToWorld[2i];
      u_xlat2.z = dot(x_1824, vec3<f32>(x_1826.x, x_1826.y, x_1826.z));
      let x_1830 : vec4<f32> = u_xlat2;
      let x_1832 : vec4<f32> = u_xlat2;
      u_xlat20.x = dot(vec3<f32>(x_1830.x, x_1830.y, x_1830.z), vec3<f32>(x_1832.x, x_1832.y, x_1832.z));
      let x_1837 : f32 = u_xlat20.x;
      u_xlat20.x = inverseSqrt(x_1837);
      let x_1840 : vec2<f32> = u_xlat20;
      let x_1842 : vec4<f32> = u_xlat2;
      vs_TEXCOORD1 = (vec3<f32>(x_1840.x, x_1840.x, x_1840.x) * vec3<f32>(x_1842.x, x_1842.y, x_1842.z));
      let x_1845 : vec4<f32> = u_xlat0;
      let x_1846 : vec3<f32> = vec3<f32>(x_1845.x, x_1845.y, x_1845.w);
      let x_1848 : vec4<f32> = gl_Position;
      gl_Position = vec4<f32>(x_1846.x, x_1846.y, x_1848.z, x_1846.z);
      let x_1851 : vec4<f32> = in_COLOR0;
      vs_COLOR0 = x_1851;
      let x_1854 : vec2<f32> = in_TEXCOORD0;
      let x_1855 : vec3<f32> = u_xlat1;
      u_xlat1 = vec3<f32>(x_1854.x, x_1854.y, x_1855.z);
    } else {
      let x_1858 : vec4<f32> = in_POSITION0;
      let x_1861 : f32 = x_47.x_ProbeSize;
      let x_1863 : f32 = x_47.x_ProbeSize;
      let x_1865 : f32 = x_47.x_ProbeSize;
      let x_1866 : vec3<f32> = vec3<f32>(x_1861, x_1863, x_1865);
      let x_1871 : vec3<f32> = (vec3<f32>(x_1858.x, x_1858.y, x_1858.z) * vec3<f32>(x_1866.x, x_1866.y, x_1866.z));
      let x_1872 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_1871.x, x_1871.y, x_1871.z, x_1872.w);
      let x_1874 : vec4<f32> = u_xlat0;
      let x_1877 : vec4<f32> = x_57.unity_ObjectToWorld[1i];
      u_xlat2 = (vec4<f32>(x_1874.y, x_1874.y, x_1874.y, x_1874.y) * x_1877);
      let x_1880 : vec4<f32> = x_57.unity_ObjectToWorld[0i];
      let x_1881 : vec4<f32> = u_xlat0;
      let x_1884 : vec4<f32> = u_xlat2;
      u_xlat2 = ((x_1880 * vec4<f32>(x_1881.x, x_1881.x, x_1881.x, x_1881.x)) + x_1884);
      let x_1887 : vec4<f32> = x_57.unity_ObjectToWorld[2i];
      let x_1888 : vec4<f32> = u_xlat0;
      let x_1891 : vec4<f32> = u_xlat2;
      u_xlat0 = ((x_1887 * vec4<f32>(x_1888.z, x_1888.z, x_1888.z, x_1888.z)) + x_1891);
      let x_1893 : vec4<f32> = u_xlat0;
      let x_1895 : vec4<f32> = x_57.unity_ObjectToWorld[3i];
      u_xlat0 = (x_1893 + x_1895);
      let x_1897 : vec4<f32> = u_xlat0;
      let x_1900 : vec4<f32> = x_47.unity_MatrixVP[1i];
      u_xlat2 = (vec4<f32>(x_1897.y, x_1897.y, x_1897.y, x_1897.y) * x_1900);
      let x_1903 : vec4<f32> = x_47.unity_MatrixVP[0i];
      let x_1904 : vec4<f32> = u_xlat0;
      let x_1907 : vec4<f32> = u_xlat2;
      u_xlat2 = ((x_1903 * vec4<f32>(x_1904.x, x_1904.x, x_1904.x, x_1904.x)) + x_1907);
      let x_1910 : vec4<f32> = x_47.unity_MatrixVP[2i];
      let x_1911 : vec4<f32> = u_xlat0;
      let x_1914 : vec4<f32> = u_xlat2;
      u_xlat2 = ((x_1910 * vec4<f32>(x_1911.z, x_1911.z, x_1911.z, x_1911.z)) + x_1914);
      let x_1917 : vec4<f32> = x_47.unity_MatrixVP[3i];
      let x_1918 : vec4<f32> = u_xlat0;
      let x_1921 : vec4<f32> = u_xlat2;
      gl_Position = ((x_1917 * vec4<f32>(x_1918.w, x_1918.w, x_1918.w, x_1918.w)) + x_1921);
      let x_1924 : vec3<f32> = in_NORMAL0;
      let x_1926 : vec4<f32> = x_57.unity_ObjectToWorld[0i];
      u_xlat0.x = dot(x_1924, vec3<f32>(x_1926.x, x_1926.y, x_1926.z));
      let x_1930 : vec3<f32> = in_NORMAL0;
      let x_1932 : vec4<f32> = x_57.unity_ObjectToWorld[1i];
      u_xlat0.y = dot(x_1930, vec3<f32>(x_1932.x, x_1932.y, x_1932.z));
      let x_1936 : vec3<f32> = in_NORMAL0;
      let x_1938 : vec4<f32> = x_57.unity_ObjectToWorld[2i];
      u_xlat0.z = dot(x_1936, vec3<f32>(x_1938.x, x_1938.y, x_1938.z));
      let x_1942 : vec4<f32> = u_xlat0;
      let x_1944 : vec4<f32> = u_xlat0;
      u_xlat30 = dot(vec3<f32>(x_1942.x, x_1942.y, x_1942.z), vec3<f32>(x_1944.x, x_1944.y, x_1944.z));
      let x_1947 : f32 = u_xlat30;
      u_xlat30 = inverseSqrt(x_1947);
      let x_1949 : f32 = u_xlat30;
      let x_1951 : vec4<f32> = u_xlat0;
      vs_TEXCOORD1 = (vec3<f32>(x_1949, x_1949, x_1949) * vec3<f32>(x_1951.x, x_1951.y, x_1951.z));
      vs_COLOR0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
      u_xlat1.x = 0.0f;
      u_xlat1.y = 0.0f;
      u_xlat1.z = 0.0f;
    }
  } else {
    gl_Position = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
    vs_COLOR0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
    u_xlat1.x = 0.0f;
    u_xlat1.y = 0.0f;
    u_xlat1.z = 0.0f;
    vs_TEXCOORD1 = vec3<f32>(0.0f, 0.0f, 0.0f);
  }
  let x_1962 : vec3<f32> = u_xlat1;
  let x_1963 : vec4<f32> = phase0_Output0_3;
  phase0_Output0_3 = vec4<f32>(x_1962.x, x_1962.y, x_1962.z, x_1963.w);
  phase0_Output0_3.w = 1.0f;
  let x_1966 : vec4<f32> = phase0_Output0_3;
  vs_TEXCOORD0 = vec2<f32>(x_1966.x, x_1966.y);
  let x_1968 : vec4<f32> = phase0_Output0_3;
  vs_TEXCOORD2 = vec2<f32>(x_1968.z, x_1968.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD1_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1);
}


