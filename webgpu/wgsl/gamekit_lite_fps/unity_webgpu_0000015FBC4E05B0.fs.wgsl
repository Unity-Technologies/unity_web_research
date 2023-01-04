struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_12 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_CameraDepthNormalsTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_CameraDepthNormalsTexture : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat10 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : f32 = x_12.x_MainTex_TexelSize.x;
  u_xlat0.x = x_19;
  u_xlat0.y = 0.0f;
  let x_26 : vec4<f32> = u_xlat0;
  let x_38 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((-(vec4<f32>(x_26.x, x_26.y, x_26.x, x_26.y)) * vec4<f32>(2.769230843f, 1.384615421f, 6.461538315f, 3.230769157f)) + vec4<f32>(x_38.x, x_38.y, x_38.x, x_38.y));
  let x_41 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_41, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_46 : vec4<f32> = u_xlat0;
  let x_49 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_46.x, x_46.y, x_46.x, x_46.y) * vec4<f32>(2.769230843f, 1.384615421f, 6.461538315f, 3.230769157f)) + vec4<f32>(x_49.x, x_49.y, x_49.x, x_49.y));
  let x_52 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_52, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_56 : vec4<f32> = u_xlat0;
  let x_59 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat0 = (x_56 * vec4<f32>(x_59, x_59, x_59, x_59));
  let x_62 : vec4<f32> = u_xlat1;
  let x_64 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat1 = (x_62 * vec4<f32>(x_64, x_64, x_64, x_64));
  let x_78 : vec4<f32> = u_xlat1;
  let x_80 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_78.x, x_78.y));
  u_xlat2 = x_80;
  let x_84 : vec4<f32> = u_xlat1;
  let x_86 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_84.z, x_84.w));
  u_xlat1 = x_86;
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_90.y, x_90.z, x_90.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_105 : vec2<f32> = vs_TEXCOORD1;
  let x_106 : vec4<f32> = textureSample(x_CameraDepthNormalsTexture, sampler_CameraDepthNormalsTexture, x_105);
  u_xlat3 = vec3<f32>(x_106.x, x_106.y, x_106.z);
  let x_108 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_108 * vec3<f32>(3.555399895f, 3.555399895f, 0.0f)) + vec3<f32>(-1.777699947f, -1.777699947f, 1.0f));
  let x_116 : vec3<f32> = u_xlat3;
  let x_117 : vec3<f32> = u_xlat3;
  u_xlat13 = dot(x_116, x_117);
  let x_119 : f32 = u_xlat13;
  u_xlat13 = (2.0f / x_119);
  let x_122 : vec3<f32> = u_xlat3;
  let x_124 : f32 = u_xlat13;
  let x_126 : vec2<f32> = (vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124, x_124));
  let x_127 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_126.x, x_126.y, x_127.z);
  let x_129 : f32 = u_xlat13;
  u_xlat9.z = (x_129 + -1.0f);
  let x_133 : vec3<f32> = u_xlat9;
  u_xlat3 = (x_133 * vec3<f32>(1.0f, 1.0f, -1.0f));
  let x_138 : vec3<f32> = u_xlat9;
  let x_144 : vec3<f32> = ((x_138 * vec3<f32>(0.5f, 0.5f, -0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_145 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_145.x, x_144.x, x_144.y, x_144.z);
  let x_147 : vec3<f32> = u_xlat3;
  let x_148 : vec3<f32> = u_xlat7;
  u_xlat7.x = dot(x_147, x_148);
  let x_152 : f32 = u_xlat7.x;
  u_xlat7.x = (x_152 + -0.800000012f);
  let x_157 : f32 = u_xlat7.x;
  u_xlat7.x = (x_157 * 5.000000477f);
  let x_162 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_162, 0.0f, 1.0f);
  let x_167 : f32 = u_xlat7.x;
  u_xlat12 = ((x_167 * -2.0f) + 3.0f);
  let x_173 : f32 = u_xlat7.x;
  let x_175 : f32 = u_xlat7.x;
  u_xlat7.x = (x_173 * x_175);
  let x_179 : f32 = u_xlat7.x;
  let x_180 : f32 = u_xlat12;
  u_xlat7.x = (x_179 * x_180);
  let x_184 : f32 = u_xlat7.x;
  u_xlat7.x = (x_184 * 0.31621623f);
  let x_189 : f32 = u_xlat7.x;
  let x_191 : f32 = u_xlat2.x;
  u_xlat2.x = (x_189 * x_191);
  let x_197 : vec2<f32> = vs_TEXCOORD1;
  let x_198 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_197);
  u_xlat12 = x_198.x;
  let x_200 : f32 = u_xlat12;
  let x_204 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_200 * 0.227027029f) + x_204);
  let x_211 : vec4<f32> = u_xlat0;
  let x_213 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_211.x, x_211.y));
  u_xlat4 = x_213;
  let x_217 : vec4<f32> = u_xlat0;
  let x_219 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_217.z, x_217.w));
  u_xlat0 = x_219;
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat9 = ((vec3<f32>(x_220.y, x_220.z, x_220.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_224 : vec3<f32> = u_xlat3;
  let x_225 : vec3<f32> = u_xlat9;
  u_xlat12 = dot(x_224, x_225);
  let x_227 : f32 = u_xlat12;
  u_xlat12 = (x_227 + -0.800000012f);
  let x_229 : f32 = u_xlat12;
  u_xlat12 = (x_229 * 5.000000477f);
  let x_231 : f32 = u_xlat12;
  u_xlat12 = clamp(x_231, 0.0f, 1.0f);
  let x_234 : f32 = u_xlat12;
  u_xlat17 = ((x_234 * -2.0f) + 3.0f);
  let x_237 : f32 = u_xlat12;
  let x_238 : f32 = u_xlat12;
  u_xlat12 = (x_237 * x_238);
  let x_240 : f32 = u_xlat12;
  let x_241 : f32 = u_xlat17;
  u_xlat12 = (x_240 * x_241);
  let x_243 : f32 = u_xlat12;
  u_xlat17 = (x_243 * 0.31621623f);
  let x_245 : f32 = u_xlat12;
  let x_248 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_245 * 0.31621623f) + x_248);
  let x_252 : f32 = u_xlat4.x;
  let x_253 : f32 = u_xlat17;
  let x_256 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_252 * x_253) + x_256);
  let x_260 : vec4<f32> = u_xlat1;
  u_xlat6 = ((vec3<f32>(x_260.y, x_260.z, x_260.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_264 : vec3<f32> = u_xlat3;
  let x_265 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_264, x_265);
  let x_269 : f32 = u_xlat6.x;
  u_xlat6.x = (x_269 + -0.800000012f);
  let x_273 : f32 = u_xlat6.x;
  u_xlat6.x = (x_273 * 5.000000477f);
  let x_277 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_277, 0.0f, 1.0f);
  let x_282 : f32 = u_xlat6.x;
  u_xlat11 = ((x_282 * -2.0f) + 3.0f);
  let x_286 : f32 = u_xlat6.x;
  let x_288 : f32 = u_xlat6.x;
  u_xlat6.x = (x_286 * x_288);
  let x_292 : f32 = u_xlat6.x;
  let x_293 : f32 = u_xlat11;
  u_xlat6.x = (x_292 * x_293);
  let x_297 : f32 = u_xlat6.x;
  u_xlat11 = (x_297 * 0.07027027f);
  let x_301 : f32 = u_xlat6.x;
  let x_304 : f32 = u_xlat7.x;
  u_xlat6.x = ((x_301 * 0.07027027f) + x_304);
  let x_308 : f32 = u_xlat1.x;
  let x_309 : f32 = u_xlat11;
  let x_312 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_308 * x_309) + x_312);
  let x_316 : vec4<f32> = u_xlat0;
  u_xlat5 = ((vec3<f32>(x_316.y, x_316.z, x_316.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_320 : vec3<f32> = u_xlat3;
  let x_321 : vec3<f32> = u_xlat5;
  u_xlat5.x = dot(x_320, x_321);
  let x_325 : f32 = u_xlat5.x;
  u_xlat5.x = (x_325 + -0.800000012f);
  let x_329 : f32 = u_xlat5.x;
  u_xlat5.x = (x_329 * 5.000000477f);
  let x_333 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_333, 0.0f, 1.0f);
  let x_338 : f32 = u_xlat5.x;
  u_xlat10 = ((x_338 * -2.0f) + 3.0f);
  let x_342 : f32 = u_xlat5.x;
  let x_344 : f32 = u_xlat5.x;
  u_xlat5.x = (x_342 * x_344);
  let x_348 : f32 = u_xlat5.x;
  let x_349 : f32 = u_xlat10;
  u_xlat5.x = (x_348 * x_349);
  let x_353 : f32 = u_xlat5.x;
  u_xlat10 = (x_353 * 0.07027027f);
  let x_356 : f32 = u_xlat5.x;
  let x_359 : f32 = u_xlat6.x;
  u_xlat5.x = ((x_356 * 0.07027027f) + x_359);
  let x_363 : f32 = u_xlat5.x;
  u_xlat5.x = (x_363 + 0.227027029f);
  let x_367 : f32 = u_xlat0.x;
  let x_368 : f32 = u_xlat10;
  let x_371 : f32 = u_xlat1.x;
  u_xlat0.x = ((x_367 * x_368) + x_371);
  let x_375 : f32 = u_xlat0.x;
  let x_377 : f32 = u_xlat5.x;
  SV_Target0.x = (x_375 / x_377);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

