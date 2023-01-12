struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_MetaVertexControl : vec4<u32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

var<private> in_TEXCOORD1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_35 : VGlobals;

var<private> in_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlatb0 : bool;
  var u_xlat0 : vec4<f32>;
  var x_58 : vec3<f32>;
  var u_xlatb15 : bool;
  var u_xlat1 : vec4<f32>;
  var x_95 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = in_POSITION0.z;
  u_xlatb0 = (0.0f < x_18);
  let x_22 : bool = u_xlatb0;
  u_xlat0.z = select(0.0f, 0.0001f, x_22);
  let x_29 : vec4<f32> = in_TEXCOORD1;
  let x_40 : vec4<f32> = x_35.unity_LightmapST;
  let x_44 : vec4<f32> = x_35.unity_LightmapST;
  let x_46 : vec2<f32> = ((vec2<f32>(x_29.x, x_29.y) * vec2<f32>(x_40.x, x_40.y)) + vec2<f32>(x_44.z, x_44.w));
  let x_47 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_46.x, x_46.y, x_47.z, x_47.w);
  let x_54 : u32 = x_35.unity_MetaVertexControl.x;
  if ((x_54 != 0u)) {
    let x_61 : vec4<f32> = u_xlat0;
    x_58 = vec3<f32>(x_61.x, x_61.y, x_61.z);
  } else {
    let x_64 : vec4<f32> = in_POSITION0;
    x_58 = vec3<f32>(x_64.x, x_64.y, x_64.z);
  }
  let x_66 : vec3<f32> = x_58;
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_66.x, x_66.y, x_66.z, x_67.w);
  let x_71 : f32 = u_xlat0.z;
  u_xlatb15 = (0.0f < x_71);
  let x_74 : bool = u_xlatb15;
  u_xlat1.z = select(0.0f, 0.0001f, x_74);
  let x_78 : vec4<f32> = in_TEXCOORD2;
  let x_82 : vec4<f32> = x_35.unity_DynamicLightmapST;
  let x_86 : vec4<f32> = x_35.unity_DynamicLightmapST;
  let x_88 : vec2<f32> = ((vec2<f32>(x_78.x, x_78.y) * vec2<f32>(x_82.x, x_82.y)) + vec2<f32>(x_86.z, x_86.w));
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_88.x, x_88.y, x_89.z, x_89.w);
  let x_93 : u32 = x_35.unity_MetaVertexControl.y;
  if ((x_93 != 0u)) {
    let x_98 : vec4<f32> = u_xlat1;
    x_95 = vec3<f32>(x_98.x, x_98.y, x_98.z);
  } else {
    let x_101 : vec4<f32> = u_xlat0;
    x_95 = vec3<f32>(x_101.x, x_101.y, x_101.z);
  }
  let x_103 : vec3<f32> = x_95;
  let x_104 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_106 : vec4<f32> = u_xlat0;
  let x_111 : vec4<f32> = x_35.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_106.y, x_106.y, x_106.y, x_106.y) * x_111);
  let x_115 : vec4<f32> = x_35.unity_MatrixVP[0i];
  let x_116 : vec4<f32> = u_xlat0;
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_115 * vec4<f32>(x_116.x, x_116.x, x_116.x, x_116.x)) + x_119);
  let x_123 : vec4<f32> = x_35.unity_MatrixVP[2i];
  let x_124 : vec4<f32> = u_xlat0;
  let x_127 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_123 * vec4<f32>(x_124.z, x_124.z, x_124.z, x_124.z)) + x_127);
  let x_133 : vec4<f32> = u_xlat0;
  let x_136 : vec4<f32> = x_35.unity_MatrixVP[3i];
  gl_Position = (x_133 + x_136);
  let x_143 : vec4<f32> = in_TEXCOORD0;
  let x_147 : vec4<f32> = x_35.x_MainTex_ST;
  let x_151 : vec4<f32> = x_35.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_143.x, x_143.y) * vec2<f32>(x_147.x, x_147.y)) + vec2<f32>(x_151.z, x_151.w));
  let x_156 : vec3<f32> = in_NORMAL0;
  let x_158 : vec4<f32> = x_35.unity_WorldToObject[0i];
  u_xlat0.y = dot(x_156, vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_162 : vec3<f32> = in_NORMAL0;
  let x_164 : vec4<f32> = x_35.unity_WorldToObject[1i];
  u_xlat0.z = dot(x_162, vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_168 : vec3<f32> = in_NORMAL0;
  let x_170 : vec4<f32> = x_35.unity_WorldToObject[2i];
  u_xlat0.x = dot(x_168, vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_175 : vec4<f32> = u_xlat0;
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(vec3<f32>(x_175.x, x_175.y, x_175.z), vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_180);
  let x_182 : f32 = u_xlat15;
  let x_184 : vec4<f32> = u_xlat0;
  let x_186 : vec3<f32> = (vec3<f32>(x_182, x_182, x_182) * vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_190 : vec4<f32> = in_TANGENT0;
  let x_193 : vec4<f32> = x_35.unity_ObjectToWorld[1i];
  let x_195 : vec3<f32> = (vec3<f32>(x_190.y, x_190.y, x_190.y) * vec3<f32>(x_193.y, x_193.z, x_193.x));
  let x_196 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_199 : vec4<f32> = x_35.unity_ObjectToWorld[0i];
  let x_201 : vec4<f32> = in_TANGENT0;
  let x_204 : vec4<f32> = u_xlat1;
  let x_206 : vec3<f32> = ((vec3<f32>(x_199.y, x_199.z, x_199.x) * vec3<f32>(x_201.x, x_201.x, x_201.x)) + vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_210 : vec4<f32> = x_35.unity_ObjectToWorld[2i];
  let x_212 : vec4<f32> = in_TANGENT0;
  let x_215 : vec4<f32> = u_xlat1;
  let x_217 : vec3<f32> = ((vec3<f32>(x_210.y, x_210.z, x_210.x) * vec3<f32>(x_212.z, x_212.z, x_212.z)) + vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : vec4<f32> = u_xlat1;
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_220.x, x_220.y, x_220.z), vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_225);
  let x_227 : f32 = u_xlat15;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = (vec3<f32>(x_227, x_227, x_227) * vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_235 : vec4<f32> = u_xlat0;
  let x_237 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_235.x, x_235.y, x_235.z) * vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : vec4<f32> = u_xlat0;
  let x_242 : vec4<f32> = u_xlat1;
  let x_245 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_240.z, x_240.x, x_240.y) * vec3<f32>(x_242.y, x_242.z, x_242.x)) + -(x_245));
  let x_250 : f32 = in_TANGENT0.w;
  let x_253 : f32 = x_35.unity_WorldTransformParams.w;
  u_xlat15 = (x_250 * x_253);
  let x_255 : f32 = u_xlat15;
  let x_257 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_255, x_255, x_255) * x_257);
  let x_262 : f32 = u_xlat2.x;
  vs_TEXCOORD1.y = x_262;
  let x_266 : f32 = u_xlat1.z;
  vs_TEXCOORD1.x = x_266;
  let x_269 : f32 = u_xlat0.y;
  vs_TEXCOORD1.z = x_269;
  let x_272 : vec4<f32> = in_POSITION0;
  let x_275 : vec4<f32> = x_35.unity_ObjectToWorld[1i];
  u_xlat3 = (vec4<f32>(x_272.y, x_272.y, x_272.y, x_272.y) * x_275);
  let x_278 : vec4<f32> = x_35.unity_ObjectToWorld[0i];
  let x_279 : vec4<f32> = in_POSITION0;
  let x_282 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_278 * vec4<f32>(x_279.x, x_279.x, x_279.x, x_279.x)) + x_282);
  let x_285 : vec4<f32> = x_35.unity_ObjectToWorld[2i];
  let x_286 : vec4<f32> = in_POSITION0;
  let x_289 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_285 * vec4<f32>(x_286.z, x_286.z, x_286.z, x_286.z)) + x_289);
  let x_293 : vec4<f32> = x_35.unity_ObjectToWorld[3i];
  let x_295 : vec4<f32> = in_POSITION0;
  let x_298 : vec4<f32> = u_xlat3;
  u_xlat4 = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_295.w, x_295.w, x_295.w)) + vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : vec4<f32> = u_xlat3;
  let x_303 : vec4<f32> = x_35.unity_ObjectToWorld[3i];
  u_xlat3 = (x_301 + x_303);
  let x_306 : f32 = u_xlat4.x;
  vs_TEXCOORD1.w = x_306;
  let x_310 : f32 = u_xlat1.x;
  vs_TEXCOORD2.x = x_310;
  let x_314 : f32 = u_xlat1.y;
  vs_TEXCOORD3.x = x_314;
  let x_317 : f32 = u_xlat0.z;
  vs_TEXCOORD2.z = x_317;
  let x_320 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = x_320;
  let x_323 : f32 = u_xlat4.y;
  vs_TEXCOORD2.w = x_323;
  let x_326 : f32 = u_xlat4.z;
  vs_TEXCOORD3.w = x_326;
  let x_329 : f32 = u_xlat2.y;
  vs_TEXCOORD2.y = x_329;
  let x_332 : f32 = u_xlat2.z;
  vs_TEXCOORD3.y = x_332;
  let x_336 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_336;
  let x_338 : f32 = u_xlat3.y;
  let x_341 : f32 = x_35.unity_MatrixV[1i].z;
  u_xlat0.x = (x_338 * x_341);
  let x_345 : f32 = x_35.unity_MatrixV[0i].z;
  let x_347 : f32 = u_xlat3.x;
  let x_350 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_345 * x_347) + x_350);
  let x_354 : f32 = x_35.unity_MatrixV[2i].z;
  let x_356 : f32 = u_xlat3.z;
  let x_359 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_354 * x_356) + x_359);
  let x_363 : f32 = x_35.unity_MatrixV[3i].z;
  let x_365 : f32 = u_xlat3.w;
  let x_368 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_363 * x_365) + x_368);
  let x_373 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_373);
  let x_376 : vec4<f32> = u_xlat3;
  let x_379 : vec4<f32> = x_35.unity_MatrixVP[1i];
  let x_381 : vec3<f32> = (vec3<f32>(x_376.y, x_376.y, x_376.y) * vec3<f32>(x_379.x, x_379.y, x_379.w));
  let x_382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_385 : vec4<f32> = x_35.unity_MatrixVP[0i];
  let x_387 : vec4<f32> = u_xlat3;
  let x_390 : vec4<f32> = u_xlat0;
  let x_392 : vec3<f32> = ((vec3<f32>(x_385.x, x_385.y, x_385.w) * vec3<f32>(x_387.x, x_387.x, x_387.x)) + vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_396 : vec4<f32> = x_35.unity_MatrixVP[2i];
  let x_398 : vec4<f32> = u_xlat3;
  let x_401 : vec4<f32> = u_xlat0;
  let x_403 : vec3<f32> = ((vec3<f32>(x_396.x, x_396.y, x_396.w) * vec3<f32>(x_398.z, x_398.z, x_398.z)) + vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_404 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_407 : vec4<f32> = x_35.unity_MatrixVP[3i];
  let x_409 : vec4<f32> = u_xlat3;
  let x_412 : vec4<f32> = u_xlat0;
  let x_414 : vec3<f32> = ((vec3<f32>(x_407.x, x_407.y, x_407.w) * vec3<f32>(x_409.w, x_409.w, x_409.w)) + vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat0;
  let x_421 : vec2<f32> = (vec2<f32>(x_417.x, x_417.z) * vec2<f32>(0.5f, 0.5f));
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_421.x, x_422.y, x_421.y, x_422.w);
  let x_425 : f32 = u_xlat0.y;
  let x_427 : f32 = x_35.x_ProjectionParams.x;
  u_xlat0.x = (x_425 * x_427);
  let x_431 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_431;
  let x_434 : f32 = u_xlat0.x;
  u_xlat1.w = (x_434 * 0.5f);
  let x_437 : vec4<f32> = u_xlat1;
  let x_439 : vec4<f32> = u_xlat1;
  let x_441 : vec2<f32> = (vec2<f32>(x_437.z, x_437.z) + vec2<f32>(x_439.x, x_439.w));
  let x_442 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_441.x, x_441.y, x_442.z, x_442.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_COLOR0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TEXCOORD1_param : vec4<f32>, @location(5) in_TEXCOORD2_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(6) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD2 = in_TEXCOORD2_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_COLOR0);
}

