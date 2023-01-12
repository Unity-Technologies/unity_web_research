struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

type Arr = array<u32, 14u>;

struct unity_ParticleInstanceData_type {
  value : Arr,
}

type RTArr = array<unity_ParticleInstanceData_type>;

struct unity_ParticleInstanceData {
  unity_ParticleInstanceData_buf : RTArr,
}

struct VGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_LightShadowBias : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_ParticleUVShiftData : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_14 : UnityDrawCallInfo;

@group(0) @binding(2) var<storage, read> x_31 : unity_ParticleInstanceData;

@group(1) @binding(1) var<uniform> x_52 : VGlobals;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlatb21 : bool;
  var x_122 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat6 : vec3<f32>;
  var x_417 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_InstanceIndex;
  let x_18 : i32 = x_14.unity_BaseInstanceID;
  u_xlati0 = (x_11 + x_18);
  let x_32 : i32 = u_xlati0;
  let x_36 : u32 = x_31.unity_ParticleInstanceData_buf[x_32].value[13i];
  u_xlat7.x = bitcast<f32>(x_36);
  let x_42 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_42);
  let x_47 : f32 = u_xlat7.x;
  let x_57 : f32 = x_52.unity_ParticleUVShiftData.y;
  u_xlat14 = (x_47 / x_57);
  let x_59 : f32 = u_xlat14;
  u_xlat14 = floor(x_59);
  let x_61 : f32 = u_xlat14;
  let x_64 : f32 = x_52.unity_ParticleUVShiftData.y;
  let x_67 : f32 = u_xlat7.x;
  u_xlat7.x = ((-(x_61) * x_64) + x_67);
  let x_71 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_71);
  let x_77 : f32 = u_xlat7.x;
  let x_80 : f32 = x_52.unity_ParticleUVShiftData.z;
  u_xlat1.x = (x_77 * x_80);
  let x_85 : f32 = x_52.unity_ParticleUVShiftData.w;
  u_xlat7.x = (-(x_85) + 1.0f);
  let x_90 : f32 = u_xlat14;
  let x_93 : f32 = x_52.unity_ParticleUVShiftData.w;
  let x_96 : f32 = u_xlat7.x;
  u_xlat1.y = ((-(x_90) * x_93) + x_96);
  let x_102 : vec2<f32> = in_TEXCOORD0;
  let x_105 : vec4<f32> = x_52.unity_ParticleUVShiftData;
  let x_108 : vec4<f32> = u_xlat1;
  let x_110 : vec2<f32> = ((x_102 * vec2<f32>(x_105.z, x_105.w)) + vec2<f32>(x_108.x, x_108.y));
  let x_111 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_110.x, x_110.y, x_111.z);
  let x_117 : f32 = x_52.unity_ParticleUVShiftData.x;
  u_xlatb21 = !((x_117 == 0.0f));
  let x_120 : bool = u_xlatb21;
  if (x_120) {
    let x_125 : vec3<f32> = u_xlat7;
    x_122 = vec2<f32>(x_125.x, x_125.y);
  } else {
    let x_128 : vec2<f32> = in_TEXCOORD0;
    x_122 = x_128;
  }
  let x_129 : vec2<f32> = x_122;
  let x_130 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_129.x, x_129.y, x_130.z);
  let x_134 : vec3<f32> = u_xlat7;
  let x_138 : vec4<f32> = x_52.x_MainTex_ST;
  let x_142 : vec4<f32> = x_52.x_MainTex_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_134.x, x_134.y) * vec2<f32>(x_138.x, x_138.y)) + vec2<f32>(x_142.z, x_142.w));
  let x_149 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD3 = x_149;
  let x_150 : i32 = u_xlati0;
  let x_153 : u32 = x_31.unity_ParticleInstanceData_buf[x_150].value[7i];
  let x_155 : i32 = u_xlati0;
  let x_158 : u32 = x_31.unity_ParticleInstanceData_buf[x_155].value[8i];
  let x_160 : i32 = u_xlati0;
  let x_163 : u32 = x_31.unity_ParticleInstanceData_buf[x_160].value[6i];
  let x_165 : vec3<f32> = vec3<f32>(bitcast<f32>(x_153), bitcast<f32>(x_158), bitcast<f32>(x_163));
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_170 : f32 = u_xlat1.y;
  u_xlat2.z = x_170;
  let x_173 : i32 = u_xlati0;
  let x_176 : u32 = x_31.unity_ParticleInstanceData_buf[x_173].value[1i];
  let x_178 : i32 = u_xlati0;
  let x_180 : u32 = x_31.unity_ParticleInstanceData_buf[x_178].value[0i];
  let x_182 : i32 = u_xlati0;
  let x_185 : u32 = x_31.unity_ParticleInstanceData_buf[x_182].value[2i];
  let x_187 : vec3<f32> = vec3<f32>(bitcast<f32>(x_176), bitcast<f32>(x_180), bitcast<f32>(x_185));
  let x_188 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_191 : f32 = u_xlat3.z;
  u_xlat2.x = x_191;
  let x_193 : i32 = u_xlati0;
  let x_195 : u32 = x_31.unity_ParticleInstanceData_buf[x_193].value[3i];
  let x_197 : i32 = u_xlati0;
  let x_199 : u32 = x_31.unity_ParticleInstanceData_buf[x_197].value[4i];
  let x_201 : i32 = u_xlati0;
  let x_204 : u32 = x_31.unity_ParticleInstanceData_buf[x_201].value[5i];
  u_xlat7 = vec3<f32>(bitcast<f32>(x_195), bitcast<f32>(x_199), bitcast<f32>(x_204));
  let x_208 : i32 = u_xlati0;
  let x_211 : u32 = x_31.unity_ParticleInstanceData_buf[x_208].value[9i];
  let x_213 : i32 = u_xlati0;
  let x_216 : u32 = x_31.unity_ParticleInstanceData_buf[x_213].value[10i];
  let x_218 : i32 = u_xlati0;
  let x_221 : u32 = x_31.unity_ParticleInstanceData_buf[x_218].value[11i];
  u_xlat4 = vec3<f32>(bitcast<f32>(x_211), bitcast<f32>(x_216), bitcast<f32>(x_221));
  let x_225 : f32 = u_xlat7.z;
  u_xlat2.y = x_225;
  let x_228 : f32 = u_xlat1.x;
  u_xlat3.z = x_228;
  let x_231 : f32 = u_xlat3.y;
  u_xlat1.x = x_231;
  let x_234 : f32 = u_xlat7.x;
  u_xlat1.y = x_234;
  let x_237 : f32 = u_xlat7.y;
  u_xlat3.y = x_237;
  let x_240 : vec4<f32> = u_xlat2;
  let x_242 : vec4<f32> = u_xlat1;
  let x_244 : vec3<f32> = (vec3<f32>(x_240.z, x_240.x, x_240.y) * vec3<f32>(x_242.y, x_242.z, x_242.x));
  let x_245 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : vec4<f32> = u_xlat1;
  let x_249 : vec4<f32> = u_xlat2;
  let x_252 : vec4<f32> = u_xlat0;
  let x_255 : vec3<f32> = ((vec3<f32>(x_247.z, x_247.x, x_247.y) * vec3<f32>(x_249.y, x_249.z, x_249.x)) + -(vec3<f32>(x_252.x, x_252.y, x_252.z)));
  let x_256 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_259 : vec4<f32> = u_xlat2;
  let x_261 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec3<f32>(x_259.y, x_259.z, x_259.x) * vec3<f32>(x_261.z, x_261.x, x_261.y));
  let x_264 : vec4<f32> = u_xlat3;
  let x_266 : vec4<f32> = u_xlat2;
  let x_269 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_264.y, x_264.z, x_264.x) * vec3<f32>(x_266.z, x_266.x, x_266.y)) + -(x_269));
  let x_273 : vec4<f32> = u_xlat1;
  let x_275 : vec3<f32> = u_xlat5;
  u_xlat21 = dot(vec3<f32>(x_273.x, x_273.y, x_273.z), x_275);
  let x_277 : f32 = u_xlat21;
  u_xlat21 = (1.0f / x_277);
  let x_279 : f32 = u_xlat21;
  let x_281 : vec4<f32> = u_xlat0;
  let x_283 : vec3<f32> = (vec3<f32>(x_279, x_279, x_279) * vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_288 : vec3<f32> = in_NORMAL0;
  let x_289 : vec4<f32> = u_xlat0;
  u_xlat0.y = dot(x_288, vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_294 : vec4<f32> = u_xlat1;
  let x_296 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_294.z, x_294.x, x_294.y) * vec3<f32>(x_296.y, x_296.z, x_296.x));
  let x_299 : vec4<f32> = u_xlat1;
  let x_301 : vec4<f32> = u_xlat3;
  let x_304 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_299.y, x_299.z, x_299.x) * vec3<f32>(x_301.z, x_301.x, x_301.y)) + -(x_304));
  let x_307 : f32 = u_xlat21;
  let x_309 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_307, x_307, x_307) * x_309);
  let x_311 : f32 = u_xlat21;
  let x_313 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_311, x_311, x_311) * x_313);
  let x_315 : vec3<f32> = in_NORMAL0;
  let x_316 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(x_315, x_316);
  let x_319 : vec3<f32> = in_NORMAL0;
  let x_320 : vec3<f32> = u_xlat6;
  u_xlat0.z = dot(x_319, x_320);
  let x_323 : vec4<f32> = u_xlat0;
  let x_325 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_323.x, x_323.y, x_323.z), vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_328);
  let x_330 : f32 = u_xlat21;
  let x_332 : vec4<f32> = u_xlat0;
  let x_334 : vec3<f32> = (vec3<f32>(x_330, x_330, x_330) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_338 : f32 = u_xlat4.x;
  u_xlat1.w = x_338;
  let x_340 : vec4<f32> = u_xlat1;
  let x_342 : vec4<f32> = in_POSITION0;
  u_xlat1.x = dot(x_340, x_342);
  let x_346 : f32 = u_xlat4.y;
  u_xlat3.w = x_346;
  let x_349 : f32 = u_xlat4.z;
  u_xlat2.w = x_349;
  let x_351 : vec4<f32> = u_xlat2;
  let x_352 : vec4<f32> = in_POSITION0;
  u_xlat1.z = dot(x_351, x_352);
  let x_355 : vec4<f32> = u_xlat3;
  let x_356 : vec4<f32> = in_POSITION0;
  u_xlat1.y = dot(x_355, x_356);
  let x_359 : vec4<f32> = u_xlat1;
  let x_363 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  let x_367 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  let x_369 : vec3<f32> = ((-(vec3<f32>(x_359.x, x_359.y, x_359.z)) * vec3<f32>(x_363.w, x_363.w, x_363.w)) + vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_372 : vec4<f32> = u_xlat2;
  let x_374 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_372.x, x_372.y, x_372.z), vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_377);
  let x_379 : f32 = u_xlat21;
  let x_381 : vec4<f32> = u_xlat2;
  let x_383 : vec3<f32> = (vec3<f32>(x_379, x_379, x_379) * vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat0;
  let x_388 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_386.x, x_386.y, x_386.z), vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : f32 = u_xlat21;
  let x_393 : f32 = u_xlat21;
  u_xlat21 = ((-(x_391) * x_393) + 1.0f);
  let x_396 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_396);
  let x_398 : f32 = u_xlat21;
  let x_400 : f32 = x_52.unity_LightShadowBias.z;
  u_xlat21 = (x_398 * x_400);
  let x_402 : vec4<f32> = u_xlat0;
  let x_405 : f32 = u_xlat21;
  let x_408 : vec4<f32> = u_xlat1;
  let x_410 : vec3<f32> = ((-(vec3<f32>(x_402.x, x_402.y, x_402.z)) * vec3<f32>(x_405, x_405, x_405)) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_414 : f32 = x_52.unity_LightShadowBias.z;
  u_xlatb21 = !((x_414 == 0.0f));
  let x_416 : bool = u_xlatb21;
  if (x_416) {
    let x_420 : vec4<f32> = u_xlat0;
    x_417 = vec3<f32>(x_420.x, x_420.y, x_420.z);
  } else {
    let x_423 : vec4<f32> = u_xlat1;
    x_417 = vec3<f32>(x_423.x, x_423.y, x_423.z);
  }
  let x_425 : vec3<f32> = x_417;
  let x_426 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_428 : vec4<f32> = u_xlat0;
  let x_431 : vec4<f32> = x_52.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_428.y, x_428.y, x_428.y, x_428.y) * x_431);
  let x_434 : vec4<f32> = x_52.unity_MatrixVP[0i];
  let x_435 : vec4<f32> = u_xlat0;
  let x_438 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_434 * vec4<f32>(x_435.x, x_435.x, x_435.x, x_435.x)) + x_438);
  let x_441 : vec4<f32> = x_52.unity_MatrixVP[2i];
  let x_442 : vec4<f32> = u_xlat0;
  let x_445 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_441 * vec4<f32>(x_442.z, x_442.z, x_442.z, x_442.z)) + x_445);
  let x_448 : vec4<f32> = x_52.unity_MatrixVP[3i];
  let x_449 : vec4<f32> = in_POSITION0;
  let x_452 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_448 * vec4<f32>(x_449.w, x_449.w, x_449.w, x_449.w)) + x_452);
  let x_455 : f32 = u_xlat0.w;
  let x_457 : f32 = u_xlat0.z;
  u_xlat1.x = min(x_455, x_457);
  let x_461 : f32 = u_xlat0.z;
  let x_464 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_461) + x_464);
  let x_472 : f32 = x_52.unity_LightShadowBias.y;
  let x_474 : f32 = u_xlat1.x;
  let x_477 : f32 = u_xlat0.z;
  gl_Position.z = ((x_472 * x_474) + x_477);
  let x_481 : vec4<f32> = u_xlat0;
  let x_482 : vec3<f32> = vec3<f32>(x_481.x, x_481.y, x_481.w);
  let x_484 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_482.x, x_482.y, x_484.z, x_482.z);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD3_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(3) in_TEXCOORD0_param : vec2<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD1, vs_TEXCOORD3, gl_Position);
}

