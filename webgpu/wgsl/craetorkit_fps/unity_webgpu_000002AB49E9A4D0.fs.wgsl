struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_MaxCoC : f32,
  x_RcpAspect : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_35 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat6 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat4 : vec4<f32>;
  var indexable : array<vec4<u32>, 43u>;
  var u_xlat18 : f32;
  var u_xlat5 : f32;
  var u_xlatb22 : bool;
  var u_xlat22 : f32;
  var u_xlatb0 : bool;
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0.x = x_25.w;
  let x_41 : f32 = x_35.x_MainTex_TexelSize.y;
  let x_43 : f32 = x_35.x_MainTex_TexelSize.y;
  u_xlat6 = (x_41 + x_43);
  u_xlat1.w = 1.0f;
  u_xlat2.x = 0.0f;
  u_xlat2.y = 0.0f;
  u_xlat2.z = 0.0f;
  u_xlat2.w = 0.0f;
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlat3.w = 0.0f;
  u_xlati_loop_1 = 0i;
  loop {
    let x_69 : i32 = u_xlati_loop_1;
    if ((x_69 < 43i)) {
    } else {
      break;
    }
    let x_76 : f32 = x_35.x_MaxCoC;
    let x_78 : f32 = x_35.x_MaxCoC;
    let x_79 : vec2<f32> = vec2<f32>(x_76, x_78);
    let x_203 : i32 = u_xlati_loop_1;
    indexable = array<vec4<u32>, 43u>(vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(1052389004u, 0u, 0u, 0u), vec4<u32>(1047013945u, 1049726997u, 0u, 0u), vec4<u32>(3181754281u, 1052083084u, 0u, 0u), vec4<u32>(3198664312u, 1042386948u, 0u, 0u), vec4<u32>(3198664312u, 3189870594u, 0u, 0u), vec4<u32>(3181754261u, 3199566733u, 0u, 0u), vec4<u32>(1047013942u, 3197210646u, 0u, 0u), vec4<u32>(1060015011u, 0u, 0u, 0u), vec4<u32>(1058882193u, 1050113794u, 0u, 0u), vec4<u32>(1054451605u, 1057519379u, 0u, 0u), vec4<u32>(1041980464u, 1059728211u, 0u, 0u), vec4<u32>(3189464110u, 1059728211u, 0u, 0u), vec4<u32>(3201935257u, 1057519378u, 0u, 0u), vec4<u32>(3206365841u, 1050113795u, 0u, 0u), vec4<u32>(3207498659u, 0u, 0u, 0u), vec4<u32>(3206365841u, 3197597442u, 0u, 0u), vec4<u32>(3201935249u, 3205003029u, 0u, 0u), vec4<u32>(3189464092u, 3207211860u, 0u, 0u), vec4<u32>(1041980487u, 3207211858u, 0u, 0u), vec4<u32>(1054451603u, 3205003029u, 0u, 0u), vec4<u32>(1058882193u, 3197597442u, 0u, 0u), vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(1064607851u, 1050077735u, 0u, 0u), vec4<u32>(1062437986u, 1058026943u, 0u, 0u), vec4<u32>(1059036423u, 1061692956u, 0u, 0u), vec4<u32>(1052446201u, 1064193470u, 0u, 0u), vec4<u32>(1033440267u, 1065306304u, 0u, 0u), vec4<u32>(3194215560u, 1064932576u, 0u, 0u), vec4<u32>(3204448257u, 1063105495u, 0u, 0u), vec4<u32>(3208358219u, 1059987404u, 0u, 0u), vec4<u32>(3211175397u, 1054746117u, 0u, 0u), vec4<u32>(3212649477u, 1041800829u, 0u, 0u), vec4<u32>(3212649476u, 3189284504u, 0u, 0u), vec4<u32>(3211175397u, 3202229763u, 0u, 0u), vec4<u32>(3208358217u, 3207471054u, 0u, 0u), vec4<u32>(3204448253u, 3210589144u, 0u, 0u), vec4<u32>(3194215564u, 3212416224u, 0u, 0u), vec4<u32>(1033440306u, 3212789951u, 0u, 0u), vec4<u32>(1052446218u, 3211677115u, 0u, 0u), vec4<u32>(1059036421u, 3209176606u, 0u, 0u), vec4<u32>(1062437987u, 3205510589u, 0u, 0u), vec4<u32>(1064607853u, 3197561371u, 0u, 0u));
    let x_209 : vec4<u32> = indexable[x_203];
    let x_212 : vec2<f32> = (vec2<f32>(x_79.x, x_79.y) * bitcast<vec2<f32>>(vec2<u32>(x_209.x, x_209.y)));
    let x_213 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_213.x, x_212.x, x_212.y, x_213.w);
    let x_216 : vec4<f32> = u_xlat4;
    let x_218 : vec4<f32> = u_xlat4;
    u_xlat18 = dot(vec2<f32>(x_216.y, x_216.z), vec2<f32>(x_218.y, x_218.z));
    let x_221 : f32 = u_xlat18;
    u_xlat18 = sqrt(x_221);
    let x_224 : f32 = u_xlat4.y;
    let x_227 : f32 = x_35.x_RcpAspect;
    u_xlat4.x = (x_224 * x_227);
    let x_230 : vec4<f32> = u_xlat4;
    let x_233 : vec2<f32> = vs_TEXCOORD0;
    let x_234 : vec2<f32> = (vec2<f32>(x_230.x, x_230.z) + x_233);
    let x_235 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_234.x, x_234.y, x_235.z, x_235.w);
    let x_237 : vec4<f32> = u_xlat4;
    let x_241 : vec2<f32> = clamp(vec2<f32>(x_237.x, x_237.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_242 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_241.x, x_241.y, x_242.z, x_242.w);
    let x_244 : vec4<f32> = u_xlat4;
    let x_247 : f32 = x_35.x_RenderViewportScaleFactor;
    let x_249 : vec2<f32> = (vec2<f32>(x_244.x, x_244.y) * vec2<f32>(x_247, x_247));
    let x_250 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_249.x, x_249.y, x_250.z, x_250.w);
    let x_255 : vec4<f32> = u_xlat4;
    let x_257 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_255.x, x_255.y));
    u_xlat4 = x_257;
    let x_260 : f32 = u_xlat0.x;
    let x_262 : f32 = u_xlat4.w;
    u_xlat5 = min(x_260, x_262);
    let x_264 : f32 = u_xlat5;
    u_xlat5 = max(x_264, 0.0f);
    let x_266 : f32 = u_xlat18;
    let x_268 : f32 = u_xlat5;
    u_xlat5 = (-(x_266) + x_268);
    let x_271 : f32 = x_35.x_MainTex_TexelSize.y;
    let x_274 : f32 = u_xlat5;
    u_xlat5 = ((x_271 * 2.0f) + x_274);
    let x_276 : f32 = u_xlat5;
    let x_277 : f32 = u_xlat6;
    u_xlat5 = (x_276 / x_277);
    let x_279 : f32 = u_xlat5;
    u_xlat5 = clamp(x_279, 0.0f, 1.0f);
    let x_281 : f32 = u_xlat18;
    let x_284 : f32 = u_xlat4.w;
    u_xlat18 = (-(x_281) + -(x_284));
    let x_288 : f32 = x_35.x_MainTex_TexelSize.y;
    let x_290 : f32 = u_xlat18;
    u_xlat18 = ((x_288 * 2.0f) + x_290);
    let x_292 : f32 = u_xlat18;
    let x_293 : f32 = u_xlat6;
    u_xlat18 = (x_292 / x_293);
    let x_295 : f32 = u_xlat18;
    u_xlat18 = clamp(x_295, 0.0f, 1.0f);
    let x_300 : f32 = u_xlat4.w;
    let x_303 : f32 = x_35.x_MainTex_TexelSize.y;
    u_xlatb22 = (-(x_300) >= x_303);
    let x_306 : bool = u_xlatb22;
    u_xlat22 = select(0.0f, 1.0f, x_306);
    let x_308 : f32 = u_xlat18;
    let x_309 : f32 = u_xlat22;
    u_xlat18 = (x_308 * x_309);
    let x_311 : vec4<f32> = u_xlat4;
    let x_312 : vec3<f32> = vec3<f32>(x_311.x, x_311.y, x_311.z);
    let x_313 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
    let x_315 : vec4<f32> = u_xlat1;
    let x_316 : f32 = u_xlat5;
    let x_319 : vec4<f32> = u_xlat2;
    u_xlat2 = ((x_315 * vec4<f32>(x_316, x_316, x_316, x_316)) + x_319);
    let x_321 : vec4<f32> = u_xlat1;
    let x_322 : f32 = u_xlat18;
    let x_325 : vec4<f32> = u_xlat3;
    u_xlat3 = ((x_321 * vec4<f32>(x_322, x_322, x_322, x_322)) + x_325);

    continuing {
      let x_327 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_327 + 1i);
    }
  }
  let x_331 : f32 = u_xlat2.w;
  u_xlatb0 = (x_331 == 0.0f);
  let x_333 : bool = u_xlatb0;
  u_xlat0.x = select(0.0f, 1.0f, x_333);
  let x_337 : f32 = u_xlat0.x;
  let x_339 : f32 = u_xlat2.w;
  u_xlat0.x = (x_337 + x_339);
  let x_342 : vec4<f32> = u_xlat2;
  let x_344 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_342.x, x_342.y, x_342.z) / vec3<f32>(x_344.x, x_344.x, x_344.x));
  let x_349 : f32 = u_xlat3.w;
  u_xlatb18 = (x_349 == 0.0f);
  let x_351 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_351);
  let x_353 : f32 = u_xlat18;
  let x_355 : f32 = u_xlat3.w;
  u_xlat18 = (x_353 + x_355);
  let x_357 : vec4<f32> = u_xlat3;
  let x_359 : f32 = u_xlat18;
  let x_361 : vec3<f32> = (vec3<f32>(x_357.x, x_357.y, x_357.z) / vec3<f32>(x_359, x_359, x_359));
  let x_362 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_365 : f32 = u_xlat3.w;
  u_xlat18 = (x_365 * 0.073060296f);
  let x_368 : f32 = u_xlat18;
  u_xlat18 = min(x_368, 1.0f);
  let x_370 : vec3<f32> = u_xlat0;
  let x_372 : vec4<f32> = u_xlat1;
  let x_374 : vec3<f32> = (-(x_370) + vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_379 : f32 = u_xlat18;
  let x_381 : vec4<f32> = u_xlat1;
  let x_384 : vec3<f32> = u_xlat0;
  let x_385 : vec3<f32> = ((vec3<f32>(x_379, x_379, x_379) * vec3<f32>(x_381.x, x_381.y, x_381.z)) + x_384);
  let x_386 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_388 : f32 = u_xlat18;
  SV_Target0.w = x_388;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

