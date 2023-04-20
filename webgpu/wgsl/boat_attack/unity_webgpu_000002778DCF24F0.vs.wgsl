diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_ScaledScreenParams : vec4<f32>,
  /* @offset(16) */
  x_ZBufferParams : vec4<f32>,
  /* @offset(32) */
  x_FlareData1 : vec4<f32>,
  /* @offset(48) */
  x_FlareData2 : vec4<f32>,
  /* @offset(64) */
  x_FlareData3 : vec4<f32>,
}

var<private> u_xlatu0 : vec3<u32>;

var<private> gl_VertexIndex : i32;

var<private> u_xlati5 : i32;

var<private> u_xlati10 : i32;

var<private> u_xlat1 : vec2<f32>;

var<private> u_xlati0 : i32;

var<private> u_xlat0 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(0) var<uniform> x_132 : VGlobals;

var<private> u_xlatu5 : u32;

var<private> u_xlatb10 : vec2<bool>;

var<private> u_xlatu1 : vec4<u32>;

var<private> u_xlat2 : vec2<f32>;

var<private> u_xlati12 : i32;

var<private> u_xlatu12 : u32;

var<private> u_xlatu17 : u32;

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlati17 : i32;

var<private> u_xlatu3 : u32;

var<private> u_xlat17 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlatb12 : vec2<bool>;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlatb17 : bool;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatb1 : vec2<bool>;

var<private> u_xlat6 : f32;

@group(0) @binding(1) var x_FlareOcclusionRemapTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_FlareOcclusionRemapTex : sampler;

var<private> u_xlatb5 : bool;

var<private> u_xlatb15 : bool;

var<private> vs_TEXCOORD1 : f32;

var<private> u_xlatu15 : u32;

var<private> gl_Position : vec4<f32>;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var u_xlatu_loop_1 : u32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_424 : f32;
  var x_441 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_47 : i32 = gl_VertexIndex;
  u_xlatu0.x = (bitcast<u32>(x_47) >> 1u);
  let x_56 : i32 = gl_VertexIndex;
  u_xlati5 = bitcast<i32>((bitcast<u32>(x_56) & 1u));
  let x_61 : i32 = u_xlati5;
  let x_64 : u32 = u_xlatu0.x;
  u_xlati10 = (-(x_61) + -(bitcast<i32>(x_64)));
  let x_68 : i32 = u_xlati10;
  u_xlati10 = (x_68 + 1i);
  let x_71 : i32 = u_xlati10;
  u_xlatu0.z = (bitcast<u32>(x_71) & 1u);
  let x_81 : vec3<u32> = u_xlatu0;
  u_xlat1 = vec2<f32>(vec2<u32>(x_81.x, x_81.z));
  let x_90 : vec2<f32> = u_xlat1;
  let x_96 : vec2<f32> = ((x_90 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_99 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_96.x, x_96.y, x_99.z, x_99.w);
  let x_102 : i32 = u_xlati5;
  let x_104 : u32 = u_xlatu0.x;
  u_xlati0 = (x_102 + bitcast<i32>(x_104));
  let x_107 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_107) & 1u);
  let x_114 : u32 = u_xlatu0.x;
  u_xlat0 = f32(x_114);
  let x_117 : f32 = u_xlat0;
  vs_TEXCOORD0.y = (-(x_117) + 1.0f);
  let x_123 : f32 = u_xlat1.x;
  vs_TEXCOORD0.x = (-(x_123) + 1.0f);
  let x_136 : f32 = x_132.x_FlareData1.y;
  u_xlatb0 = !((x_136 == 0.0f));
  let x_139 : bool = u_xlatb0;
  if (x_139) {
    let x_143 : f32 = x_132.x_FlareData1.y;
    u_xlat0 = (1.0f / x_143);
    let x_147 : f32 = x_132.x_FlareData1.y;
    u_xlatu5 = u32(x_147);
    let x_154 : f32 = x_132.x_FlareData3.x;
    u_xlatb10.x = (0.0f < x_154);
    u_xlatu1.z = 0u;
    u_xlatu1.w = 0u;
    u_xlat2.x = 0.0f;
    u_xlatu_loop_1 = 0u;
    loop {
      let x_171 : u32 = u_xlatu_loop_1;
      let x_172 : u32 = u_xlatu5;
      if ((x_171 < x_172)) {
      } else {
        break;
      }
      let x_175 : u32 = u_xlatu_loop_1;
      u_xlati12 = (bitcast<i32>(x_175) << bitcast<u32>(1i));
      let x_178 : i32 = u_xlati12;
      u_xlati12 = bitcast<i32>((bitcast<u32>(x_178) ^ 2747636419u));
      let x_184 : i32 = u_xlati12;
      u_xlatu12 = (bitcast<u32>(x_184) * 2654435769u);
      let x_189 : u32 = u_xlatu12;
      u_xlatu17 = (x_189 >> 16u);
      let x_192 : u32 = u_xlatu17;
      let x_193 : u32 = u_xlatu12;
      u_xlati12 = bitcast<i32>((x_192 ^ x_193));
      let x_196 : i32 = u_xlati12;
      u_xlatu12 = (bitcast<u32>(x_196) * 2654435769u);
      let x_199 : u32 = u_xlatu12;
      u_xlatu17 = (x_199 >> 16u);
      let x_201 : u32 = u_xlatu17;
      let x_202 : u32 = u_xlatu12;
      u_xlati12 = bitcast<i32>((x_201 ^ x_202));
      let x_205 : i32 = u_xlati12;
      u_xlatu12 = (bitcast<u32>(x_205) * 2654435769u);
      let x_209 : u32 = u_xlatu12;
      u_xlat12.x = f32(x_209);
      let x_213 : f32 = u_xlat12.x;
      u_xlat12.x = (x_213 * 0.00000000023283064365f);
      let x_218 : u32 = u_xlatu_loop_1;
      param = 1i;
      param_1 = bitcast<i32>(x_218);
      param_2 = 1i;
      param_3 = 31i;
      let x_225 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
      u_xlati17 = x_225;
      let x_226 : i32 = u_xlati17;
      u_xlati17 = bitcast<i32>((bitcast<u32>(x_226) ^ 2747636419u));
      let x_230 : i32 = u_xlati17;
      u_xlatu17 = (bitcast<u32>(x_230) * 2654435769u);
      let x_234 : u32 = u_xlatu17;
      u_xlatu3 = (x_234 >> 16u);
      let x_236 : u32 = u_xlatu17;
      let x_237 : u32 = u_xlatu3;
      u_xlati17 = bitcast<i32>((x_236 ^ x_237));
      let x_240 : i32 = u_xlati17;
      u_xlatu17 = (bitcast<u32>(x_240) * 2654435769u);
      let x_243 : u32 = u_xlatu17;
      u_xlatu3 = (x_243 >> 16u);
      let x_245 : u32 = u_xlatu17;
      let x_246 : u32 = u_xlatu3;
      u_xlati17 = bitcast<i32>((x_245 ^ x_246));
      let x_249 : i32 = u_xlati17;
      u_xlatu17 = (bitcast<u32>(x_249) * 2654435769u);
      let x_253 : u32 = u_xlatu17;
      u_xlat17 = f32(x_253);
      let x_256 : f32 = u_xlat12.x;
      u_xlat12.x = sqrt(x_256);
      let x_259 : f32 = u_xlat17;
      u_xlat17 = (x_259 * 0.00000000146291811998f);
      let x_265 : f32 = u_xlat17;
      u_xlat3.x = sin(x_265);
      let x_269 : f32 = u_xlat17;
      u_xlat4.x = cos(x_269);
      let x_273 : f32 = u_xlat3.x;
      u_xlat4.y = x_273;
      let x_275 : vec2<f32> = u_xlat12;
      let x_277 : vec2<f32> = u_xlat4;
      u_xlat12 = (vec2<f32>(x_275.x, x_275.x) * x_277);
      let x_281 : vec4<f32> = x_132.x_FlareData1;
      let x_283 : vec2<f32> = u_xlat12;
      let x_287 : vec4<f32> = x_132.x_FlareData2;
      u_xlat12 = ((vec2<f32>(x_281.x, x_281.x) * x_283) + vec2<f32>(x_287.x, x_287.y));
      let x_290 : vec2<f32> = u_xlat12;
      let x_294 : vec2<f32> = ((x_290 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
      let x_295 : vec3<f32> = u_xlat3;
      u_xlat3 = vec3<f32>(x_294.x, x_294.y, x_295.z);
      let x_298 : f32 = u_xlat3.y;
      u_xlat3.z = (-(x_298) + 1.0f);
      let x_303 : vec3<f32> = u_xlat3;
      let x_307 : vec4<bool> = (vec4<f32>(x_303.x, x_303.z, x_303.x, x_303.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
      u_xlatb12 = vec2<bool>(x_307.x, x_307.y);
      let x_310 : bool = u_xlatb12.y;
      let x_312 : bool = u_xlatb12.x;
      u_xlatb12.x = (x_310 & x_312);
      let x_319 : vec3<f32> = u_xlat3;
      let x_321 : vec4<bool> = (vec4<f32>(1.0f, 0.0f, 1.0f, 1.0f) >= vec4<f32>(x_319.x, x_319.x, x_319.z, x_319.z));
      let x_322 : vec2<bool> = vec2<bool>(x_321.x, x_321.z);
      let x_323 : vec3<bool> = u_xlatb8;
      u_xlatb8 = vec3<bool>(x_322.x, x_323.y, x_322.y);
      let x_327 : bool = u_xlatb8.z;
      let x_329 : bool = u_xlatb8.x;
      u_xlatb17 = (x_327 & x_329);
      let x_331 : bool = u_xlatb17;
      let x_333 : bool = u_xlatb12.x;
      u_xlatb12.x = (x_331 & x_333);
      let x_337 : bool = u_xlatb12.x;
      if (x_337) {
        let x_340 : vec3<f32> = u_xlat3;
        let x_343 : vec4<f32> = x_132.x_ScaledScreenParams;
        u_xlat12 = (vec2<f32>(x_340.x, x_340.z) * vec2<f32>(x_343.x, x_343.y));
        let x_346 : vec2<f32> = u_xlat12;
        let x_347 : vec2<u32> = vec2<u32>(x_346);
        let x_348 : vec4<u32> = u_xlatu1;
        u_xlatu1 = vec4<u32>(x_347.x, x_347.y, x_348.z, x_348.w);
        let x_354 : vec4<u32> = u_xlatu1;
        let x_359 : u32 = u_xlatu1.w;
        let x_361 : vec4<f32> = textureLoad(x_CameraDepthTexture, bitcast<vec2<i32>>(vec2<u32>(x_354.x, x_354.y)), bitcast<i32>(x_359));
        u_xlat1.x = x_361.x;
        let x_365 : f32 = x_132.x_ZBufferParams.z;
        let x_367 : f32 = u_xlat1.x;
        let x_370 : f32 = x_132.x_ZBufferParams.w;
        u_xlat1.x = ((x_365 * x_367) + x_370);
        let x_374 : f32 = u_xlat1.x;
        u_xlat1.x = (1.0f / x_374);
        let x_379 : f32 = x_132.x_FlareData1.z;
        let x_381 : f32 = u_xlat1.x;
        u_xlatb6 = (x_379 < x_381);
        let x_384 : f32 = u_xlat1.x;
        let x_386 : f32 = x_132.x_FlareData1.z;
        u_xlat12.x = (x_384 + -(x_386));
        let x_391 : f32 = u_xlat1.x;
        let x_394 : f32 = x_132.x_FlareData1.z;
        u_xlat1.x = (abs(x_391) + abs(x_394));
        let x_399 : f32 = u_xlat12.x;
        let x_402 : f32 = u_xlat1.x;
        u_xlat1.x = (abs(x_399) / x_402);
        let x_407 : f32 = u_xlat1.x;
        u_xlatb1.x = (x_407 < 0.00000005960464477539f);
        let x_412 : bool = u_xlatb1.x;
        let x_413 : bool = u_xlatb6;
        u_xlatb1.x = (x_412 | x_413);
        let x_417 : f32 = u_xlat0;
        let x_419 : f32 = u_xlat2.x;
        u_xlat6 = (x_417 + x_419);
        let x_422 : bool = u_xlatb1.x;
        if (x_422) {
          let x_427 : f32 = u_xlat6;
          x_424 = x_427;
        } else {
          let x_430 : f32 = u_xlat2.x;
          x_424 = x_430;
        }
        let x_431 : f32 = x_424;
        u_xlat2.x = x_431;
      } else {
        let x_434 : f32 = u_xlat0;
        let x_436 : f32 = u_xlat2.x;
        u_xlat1.x = (x_434 + x_436);
        let x_440 : bool = u_xlatb10.x;
        if (x_440) {
          let x_445 : f32 = u_xlat1.x;
          x_441 = x_445;
        } else {
          let x_448 : f32 = u_xlat2.x;
          x_441 = x_448;
        }
        let x_449 : f32 = x_441;
        u_xlat2.x = x_449;
      }

      continuing {
        let x_451 : u32 = u_xlatu_loop_1;
        u_xlatu_loop_1 = (x_451 + bitcast<u32>(1i));
      }
    }
    let x_454 : f32 = u_xlat2.x;
    u_xlat2.x = x_454;
    let x_457 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_457, 0.0f, 1.0f);
    u_xlat2.y = 0.0f;
    let x_469 : vec2<f32> = u_xlat2;
    let x_470 : vec4<f32> = textureSampleLevel(x_FlareOcclusionRemapTex, sampler_FlareOcclusionRemapTex, x_469, 0.0f);
    u_xlat0 = x_470.x;
    let x_472 : f32 = u_xlat0;
    u_xlat0 = x_472;
    let x_473 : f32 = u_xlat0;
    u_xlat0 = clamp(x_473, 0.0f, 1.0f);
  } else {
    u_xlat0 = 1.0f;
  }
  let x_478 : f32 = x_132.x_FlareData3.x;
  u_xlatb5 = (x_478 < 0.0f);
  let x_481 : vec4<f32> = x_132.x_FlareData2;
  let x_484 : vec4<bool> = (vec4<f32>(x_481.x, x_481.y, x_481.x, x_481.y) < vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  u_xlatb10 = vec2<bool>(x_484.x, x_484.y);
  let x_487 : bool = u_xlatb10.y;
  let x_489 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_487 | x_489);
  let x_493 : vec4<f32> = x_132.x_FlareData2;
  let x_496 : vec4<bool> = (vec4<f32>(x_493.x, x_493.y, x_493.x, x_493.x) >= vec4<f32>(1.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb1 = vec2<bool>(x_496.x, x_496.y);
  let x_500 : bool = u_xlatb1.y;
  let x_502 : bool = u_xlatb1.x;
  u_xlatb15 = (x_500 | x_502);
  let x_504 : bool = u_xlatb15;
  let x_506 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_504 | x_506);
  let x_510 : bool = u_xlatb10.x;
  let x_511 : bool = u_xlatb5;
  u_xlatb5 = (x_510 & x_511);
  let x_515 : bool = u_xlatb5;
  let x_516 : f32 = u_xlat0;
  vs_TEXCOORD1 = select(x_516, 0.0f, x_515);
  let x_520 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_520.x, x_520.y, vec2<f32>(1.0f, 1.0f).x, vec2<f32>(1.0f, 1.0f).y);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD1_1 : f32,
}

@vertex
fn main(@builtin(vertex_index) gl_VertexIndex_param : u32) -> main_out {
  gl_VertexIndex = bitcast<i32>(gl_VertexIndex_param);
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1);
}


