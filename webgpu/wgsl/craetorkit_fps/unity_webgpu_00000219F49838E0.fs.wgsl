struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(5) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlat27 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati27 : i32;
  var u_xlatb10 : bool;
  var u_xlat2 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat19 : vec2<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat29 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat24 : vec2<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat25 : f32;
  var u_xlat34 : f32;
  var u_xlat17 : f32;
  var u_xlatb26 : bool;
  var u_xlatb29 : bool;
  var x_315 : f32;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_33 : vec2<f32> = vs_TEXCOORD0;
  u_xlat9 = ((x_33 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_41 : vec2<f32> = u_xlat9;
  let x_42 : vec2<f32> = u_xlat9;
  u_xlat27 = dot(x_41, x_42);
  let x_44 : f32 = u_xlat27;
  let x_46 : vec2<f32> = u_xlat9;
  u_xlat9 = (vec2<f32>(x_44, x_44) * x_46);
  let x_48 : vec2<f32> = u_xlat9;
  let x_56 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_58 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_59 : vec2<f32> = vec2<f32>(x_56, x_58);
  u_xlat9 = (x_48 * vec2<f32>(x_59.x, x_59.y));
  let x_66 : vec2<f32> = u_xlat9;
  let x_71 : vec4<f32> = x_51.x_MainTex_TexelSize;
  let x_73 : vec2<f32> = (-(x_66) * vec2<f32>(x_71.z, x_71.w));
  let x_74 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_73.x, x_73.y, x_74.z, x_74.w);
  let x_76 : vec4<f32> = u_xlat1;
  let x_80 : vec2<f32> = (vec2<f32>(x_76.x, x_76.y) * vec2<f32>(0.5f, 0.5f));
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_81.z, x_81.w);
  let x_83 : vec4<f32> = u_xlat1;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat27 = dot(vec2<f32>(x_83.x, x_83.y), vec2<f32>(x_85.x, x_85.y));
  let x_88 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_88);
  let x_92 : f32 = u_xlat27;
  u_xlati27 = i32(x_92);
  let x_94 : i32 = u_xlati27;
  u_xlati27 = max(x_94, 3i);
  let x_96 : i32 = u_xlati27;
  u_xlati27 = min(x_96, 16i);
  let x_99 : i32 = u_xlati27;
  u_xlat1.x = f32(x_99);
  let x_102 : vec2<f32> = u_xlat9;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat9 = (-(x_102) / vec2<f32>(x_104.x, x_104.x));
  let x_114 : f32 = x_51.x_Distortion_Amount.w;
  u_xlatb10 = (0.0f < x_114);
  u_xlat2.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_134 : vec2<f32> = vs_TEXCOORD0;
  u_xlat19 = x_134;
  u_xlati_loop_1 = 0i;
  loop {
    let x_142 : i32 = u_xlati_loop_1;
    let x_143 : i32 = u_xlati27;
    if ((x_142 < x_143)) {
    } else {
      break;
    }
    let x_146 : i32 = u_xlati_loop_1;
    u_xlat29 = f32(x_146);
    let x_148 : f32 = u_xlat29;
    u_xlat29 = (x_148 + 0.5f);
    let x_150 : f32 = u_xlat29;
    let x_152 : f32 = u_xlat1.x;
    u_xlat2.x = (x_150 / x_152);
    let x_156 : vec2<f32> = u_xlat19;
    let x_159 : vec2<f32> = (x_156 + vec2<f32>(-0.5f, -0.5f));
    let x_160 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_159.x, x_159.y, x_160.z, x_160.w);
    let x_163 : vec4<f32> = u_xlat6;
    let x_166 : vec4<f32> = x_51.x_Distortion_Amount;
    u_xlat24 = ((vec2<f32>(x_163.x, x_163.y) * vec2<f32>(x_166.z, x_166.z)) + vec2<f32>(0.5f, 0.5f));
    let x_170 : vec4<f32> = u_xlat6;
    let x_173 : vec4<f32> = x_51.x_Distortion_Amount;
    let x_178 : vec4<f32> = x_51.x_Distortion_CenterScale;
    let x_181 : vec2<f32> = ((vec2<f32>(x_170.x, x_170.y) * vec2<f32>(x_173.z, x_173.z)) + -(vec2<f32>(x_178.x, x_178.y)));
    let x_182 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_181.x, x_181.y, x_182.z, x_182.w);
    let x_184 : vec4<f32> = u_xlat6;
    let x_187 : vec4<f32> = x_51.x_Distortion_CenterScale;
    let x_189 : vec2<f32> = (vec2<f32>(x_184.x, x_184.y) * vec2<f32>(x_187.z, x_187.w));
    let x_190 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_189.x, x_189.y, x_190.z, x_190.w);
    let x_192 : vec4<f32> = u_xlat6;
    let x_194 : vec4<f32> = u_xlat6;
    u_xlat29 = dot(vec2<f32>(x_192.x, x_192.y), vec2<f32>(x_194.x, x_194.y));
    let x_197 : f32 = u_xlat29;
    u_xlat29 = sqrt(x_197);
    let x_199 : bool = u_xlatb10;
    if (x_199) {
      let x_203 : f32 = u_xlat29;
      let x_206 : vec4<f32> = x_51.x_Distortion_Amount;
      u_xlat7 = (vec2<f32>(x_203, x_203) * vec2<f32>(x_206.x, x_206.y));
      let x_211 : f32 = u_xlat7.x;
      u_xlat8 = cos(x_211);
      let x_214 : f32 = u_xlat7.x;
      u_xlat7.x = sin(x_214);
      let x_218 : f32 = u_xlat7.x;
      let x_219 : f32 = u_xlat8;
      u_xlat7.x = (x_218 / x_219);
      let x_224 : f32 = u_xlat7.y;
      u_xlat16 = (1.0f / x_224);
      let x_227 : f32 = u_xlat7.x;
      let x_228 : f32 = u_xlat16;
      u_xlat7.x = ((x_227 * x_228) + -1.0f);
      let x_232 : vec4<f32> = u_xlat6;
      let x_234 : vec2<f32> = u_xlat7;
      let x_237 : vec2<f32> = u_xlat24;
      u_xlat7 = ((vec2<f32>(x_232.x, x_232.y) * vec2<f32>(x_234.x, x_234.x)) + x_237);
    } else {
      let x_241 : f32 = u_xlat29;
      u_xlat25 = (1.0f / x_241);
      let x_243 : f32 = u_xlat25;
      let x_245 : f32 = x_51.x_Distortion_Amount.x;
      u_xlat25 = (x_243 * x_245);
      let x_247 : f32 = u_xlat29;
      let x_249 : f32 = x_51.x_Distortion_Amount.y;
      u_xlat29 = (x_247 * x_249);
      let x_252 : f32 = u_xlat29;
      u_xlat34 = min(abs(x_252), 1.0f);
      let x_255 : f32 = u_xlat29;
      u_xlat8 = max(abs(x_255), 1.0f);
      let x_258 : f32 = u_xlat8;
      u_xlat8 = (1.0f / x_258);
      let x_260 : f32 = u_xlat34;
      let x_261 : f32 = u_xlat8;
      u_xlat34 = (x_260 * x_261);
      let x_263 : f32 = u_xlat34;
      let x_264 : f32 = u_xlat34;
      u_xlat8 = (x_263 * x_264);
      let x_267 : f32 = u_xlat8;
      u_xlat17 = ((x_267 * 0.0208351f) + -0.085133001f);
      let x_272 : f32 = u_xlat8;
      let x_273 : f32 = u_xlat17;
      u_xlat17 = ((x_272 * x_273) + 0.180141002f);
      let x_277 : f32 = u_xlat8;
      let x_278 : f32 = u_xlat17;
      u_xlat17 = ((x_277 * x_278) + -0.330299497f);
      let x_282 : f32 = u_xlat8;
      let x_283 : f32 = u_xlat17;
      u_xlat8 = ((x_282 * x_283) + 0.999866009f);
      let x_287 : f32 = u_xlat34;
      let x_288 : f32 = u_xlat8;
      u_xlat17 = (x_287 * x_288);
      let x_291 : f32 = u_xlat29;
      u_xlatb26 = (1.0f < abs(x_291));
      let x_294 : f32 = u_xlat17;
      u_xlat17 = ((x_294 * -2.0f) + 1.570796371f);
      let x_299 : bool = u_xlatb26;
      let x_300 : f32 = u_xlat17;
      u_xlat17 = select(0.0f, x_300, x_299);
      let x_302 : f32 = u_xlat34;
      let x_303 : f32 = u_xlat8;
      let x_305 : f32 = u_xlat17;
      u_xlat34 = ((x_302 * x_303) + x_305);
      let x_307 : f32 = u_xlat29;
      u_xlat29 = min(x_307, 1.0f);
      let x_310 : f32 = u_xlat29;
      let x_311 : f32 = u_xlat29;
      u_xlatb29 = (x_310 < -(x_311));
      let x_314 : bool = u_xlatb29;
      if (x_314) {
        let x_318 : f32 = u_xlat34;
        x_315 = -(x_318);
      } else {
        let x_321 : f32 = u_xlat34;
        x_315 = x_321;
      }
      let x_322 : f32 = x_315;
      u_xlat29 = x_322;
      let x_323 : f32 = u_xlat25;
      let x_324 : f32 = u_xlat29;
      u_xlat29 = ((x_323 * x_324) + -1.0f);
      let x_327 : vec4<f32> = u_xlat6;
      let x_329 : f32 = u_xlat29;
      let x_332 : vec2<f32> = u_xlat24;
      u_xlat7 = ((vec2<f32>(x_327.x, x_327.y) * vec2<f32>(x_329, x_329)) + x_332);
    }
    let x_334 : vec2<f32> = u_xlat7;
    u_xlat7 = x_334;
    let x_335 : vec2<f32> = u_xlat7;
    u_xlat7 = clamp(x_335, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_339 : vec2<f32> = u_xlat7;
    let x_341 : f32 = x_51.x_RenderViewportScaleFactor;
    let x_343 : vec2<f32> = (x_339 * vec2<f32>(x_341, x_341));
    let x_344 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_343.x, x_343.y, x_344.z, x_344.w);
    let x_351 : vec4<f32> = u_xlat6;
    let x_353 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_351.x, x_351.y), 0.0f);
    u_xlat6 = x_353;
    let x_359 : vec2<f32> = u_xlat2;
    let x_360 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, x_359, 0.0f);
    let x_361 : vec3<f32> = vec3<f32>(x_360.x, x_360.y, x_360.z);
    let x_362 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
    let x_364 : vec4<f32> = u_xlat6;
    let x_365 : vec4<f32> = u_xlat3;
    let x_367 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_364 * x_365) + x_367);
    let x_369 : vec4<f32> = u_xlat3;
    let x_370 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_369 + x_370);
    let x_372 : vec2<f32> = u_xlat9;
    let x_373 : vec2<f32> = u_xlat19;
    u_xlat19 = (x_372 + x_373);

    continuing {
      let x_375 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_375 + 1i);
    }
  }
  let x_377 : vec4<f32> = u_xlat4;
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_377 / x_378);
  let x_380 : vec3<f32> = u_xlat0;
  let x_382 : vec4<f32> = u_xlat1;
  let x_384 : vec3<f32> = (vec3<f32>(x_380.x, x_380.x, x_380.x) * vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_390 : f32 = x_51.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_390);
  let x_392 : bool = u_xlatb0;
  if (x_392) {
    let x_395 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_395.x, x_395.y, x_395.z);
    let x_397 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_397, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_401 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_401, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_410 : vec4<f32> = u_xlat1;
  SV_Target0 = x_410;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

