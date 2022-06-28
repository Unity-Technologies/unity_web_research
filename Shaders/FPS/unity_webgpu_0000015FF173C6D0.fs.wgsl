struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_TaaParams : vec3<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_13 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat12 : f32;

@group(0) @binding(3) var x_CoCTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_CoCTex : sampler;

var<private> u_xlatb5 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlatb9 : bool;

var<private> u_xlat3 : vec2<f32>;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat8 : f32;

@group(0) @binding(2) var x_CameraMotionVectorsTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_CameraMotionVectorsTexture : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_123 : f32;
  var x_158 : vec2<f32>;
  var x_169 : vec3<f32>;
  var x_233 : vec3<f32>;
  var x_252 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : vec4<f32> = x_13.x_MainTex_TexelSize;
  let x_24 : vec2<f32> = (vec2<f32>(x_19.y, x_19.y) * vec2<f32>(-0.0f, -1.0f));
  let x_25 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_24.x, x_24.y, x_25.z);
  let x_30 : vec4<f32> = x_13.x_MainTex_TexelSize;
  let x_39 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((-(vec4<f32>(x_30.x, x_30.y, x_30.y, x_30.y)) * vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f)) + vec4<f32>(x_39.x, x_39.y, x_39.x, x_39.y));
  let x_42 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_42, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_46 : vec4<f32> = u_xlat1;
  let x_50 : f32 = x_13.x_RenderViewportScaleFactor;
  u_xlat1 = (x_46 * vec4<f32>(x_50, x_50, x_50, x_50));
  let x_65 : vec4<f32> = u_xlat1;
  let x_67 : vec4<f32> = textureSample(x_CoCTex, sampler_CoCTex, vec2<f32>(x_65.x, x_65.y));
  u_xlat12 = x_67.x;
  let x_74 : vec4<f32> = u_xlat1;
  let x_76 : vec4<f32> = textureSample(x_CoCTex, sampler_CoCTex, vec2<f32>(x_74.z, x_74.w));
  u_xlat0.z = x_76.x;
  let x_80 : vec2<f32> = vs_TEXCOORD0;
  let x_84 : vec3<f32> = x_13.x_TaaParams;
  let x_87 : vec2<f32> = (x_80 + -(vec2<f32>(x_84.x, x_84.y)));
  let x_88 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_87.x, x_87.y, x_88.z, x_88.w);
  let x_90 : vec4<f32> = u_xlat1;
  let x_94 : vec2<f32> = clamp(vec2<f32>(x_90.x, x_90.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_94.x, x_94.y, x_95.z, x_95.w);
  let x_97 : vec4<f32> = u_xlat1;
  let x_100 : f32 = x_13.x_RenderViewportScaleFactor;
  let x_102 : vec2<f32> = (vec2<f32>(x_97.x, x_97.y) * vec2<f32>(x_100, x_100));
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_102.x, x_102.y, x_103.z, x_103.w);
  let x_108 : vec4<f32> = u_xlat1;
  let x_110 : vec4<f32> = textureSample(x_CoCTex, sampler_CoCTex, vec2<f32>(x_108.x, x_108.y));
  u_xlat1.x = x_110.x;
  let x_116 : f32 = u_xlat12;
  let x_118 : f32 = u_xlat1.x;
  u_xlatb5 = (x_116 < x_118);
  let x_121 : bool = u_xlatb5;
  if (x_121) {
    let x_126 : f32 = u_xlat12;
    x_123 = x_126;
  } else {
    let x_129 : f32 = u_xlat1.x;
    x_123 = x_129;
  }
  let x_130 : f32 = x_123;
  u_xlat2.z = x_130;
  let x_132 : f32 = u_xlat12;
  let x_134 : f32 = u_xlat1.x;
  u_xlat12 = max(x_132, x_134);
  let x_137 : f32 = u_xlat0.z;
  let x_138 : f32 = u_xlat12;
  u_xlat12 = max(x_137, x_138);
  let x_142 : f32 = u_xlat0.z;
  let x_144 : f32 = u_xlat2.z;
  u_xlatb9 = (x_142 < x_144);
  let x_149 : vec4<f32> = x_13.x_MainTex_TexelSize;
  u_xlat3 = (vec2<f32>(x_149.x, x_149.y) * vec2<f32>(1.0f, 0.0f));
  let x_154 : vec2<f32> = u_xlat3;
  u_xlat11 = -(x_154);
  let x_156 : bool = u_xlatb5;
  if (x_156) {
    let x_161 : vec2<f32> = u_xlat11;
    x_158 = x_161;
  } else {
    x_158 = vec2<f32>(0.0f, 0.0f);
  }
  let x_164 : vec2<f32> = x_158;
  let x_165 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_164.x, x_164.y, x_165.z, x_165.w);
  let x_167 : bool = u_xlatb9;
  if (x_167) {
    let x_172 : vec3<f32> = u_xlat0;
    x_169 = x_172;
  } else {
    let x_174 : vec4<f32> = u_xlat2;
    x_169 = vec3<f32>(x_174.x, x_174.y, x_174.z);
  }
  let x_176 : vec3<f32> = x_169;
  u_xlat0 = x_176;
  let x_178 : vec4<f32> = x_13.x_MainTex_TexelSize;
  let x_182 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_178.y, x_178.y, x_178.x, x_178.y) * vec4<f32>(0.0f, 1.0f, 1.0f, 0.0f)) + vec4<f32>(x_182.x, x_182.y, x_182.x, x_182.y));
  let x_185 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_185, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_189 : vec4<f32> = u_xlat2;
  let x_191 : f32 = x_13.x_RenderViewportScaleFactor;
  u_xlat2 = (x_189 * vec4<f32>(x_191, x_191, x_191, x_191));
  let x_198 : vec4<f32> = u_xlat2;
  let x_200 : vec4<f32> = textureSample(x_CoCTex, sampler_CoCTex, vec2<f32>(x_198.x, x_198.y));
  u_xlat5.z = x_200.x;
  let x_206 : vec4<f32> = u_xlat2;
  let x_208 : vec4<f32> = textureSample(x_CoCTex, sampler_CoCTex, vec2<f32>(x_206.z, x_206.w));
  u_xlat2.x = x_208.x;
  let x_213 : f32 = u_xlat5.z;
  let x_215 : f32 = u_xlat0.z;
  u_xlatb6 = (x_213 < x_215);
  let x_218 : vec4<f32> = x_13.x_MainTex_TexelSize;
  let x_221 : vec2<f32> = (vec2<f32>(x_218.y, x_218.y) * vec2<f32>(0.0f, 1.0f));
  let x_222 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_221.x, x_221.y, x_222.z);
  let x_224 : f32 = u_xlat12;
  let x_226 : f32 = u_xlat5.z;
  u_xlat12 = max(x_224, x_226);
  let x_229 : f32 = u_xlat2.x;
  let x_230 : f32 = u_xlat12;
  u_xlat12 = max(x_229, x_230);
  let x_232 : bool = u_xlatb6;
  if (x_232) {
    let x_236 : vec3<f32> = u_xlat5;
    x_233 = x_236;
  } else {
    let x_238 : vec3<f32> = u_xlat0;
    x_233 = x_238;
  }
  let x_239 : vec3<f32> = x_233;
  u_xlat0 = x_239;
  let x_241 : f32 = u_xlat2.x;
  let x_243 : f32 = u_xlat0.z;
  u_xlatb5 = (x_241 < x_243);
  let x_247 : f32 = u_xlat2.x;
  let x_249 : f32 = u_xlat0.z;
  u_xlat8 = min(x_247, x_249);
  let x_251 : bool = u_xlatb5;
  if (x_251) {
    let x_255 : vec2<f32> = u_xlat3;
    x_252 = x_255;
  } else {
    let x_257 : vec3<f32> = u_xlat0;
    x_252 = vec2<f32>(x_257.x, x_257.y);
  }
  let x_259 : vec2<f32> = x_252;
  let x_260 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_259.x, x_259.y, x_260.z);
  let x_262 : vec3<f32> = u_xlat0;
  let x_264 : vec2<f32> = vs_TEXCOORD0;
  let x_265 : vec2<f32> = (vec2<f32>(x_262.x, x_262.y) + x_264);
  let x_266 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_265.x, x_265.y, x_266.z);
  let x_268 : vec3<f32> = u_xlat0;
  let x_272 : vec2<f32> = clamp(vec2<f32>(x_268.x, x_268.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_273 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_272.x, x_272.y, x_273.z);
  let x_275 : vec3<f32> = u_xlat0;
  let x_278 : f32 = x_13.x_RenderViewportScaleFactor;
  let x_280 : vec2<f32> = (vec2<f32>(x_275.x, x_275.y) * vec2<f32>(x_278, x_278));
  let x_281 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_280.x, x_280.y, x_281.z);
  let x_288 : vec3<f32> = u_xlat0;
  let x_290 : vec4<f32> = textureSample(x_CameraMotionVectorsTexture, sampler_CameraMotionVectorsTexture, vec2<f32>(x_288.x, x_288.y));
  let x_291 : vec2<f32> = vec2<f32>(x_290.x, x_290.y);
  let x_292 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_291.x, x_291.y, x_292.z);
  let x_294 : vec3<f32> = u_xlat0;
  let x_297 : vec2<f32> = vs_TEXCOORD0;
  let x_298 : vec2<f32> = (-(vec2<f32>(x_294.x, x_294.y)) + x_297);
  let x_299 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_298.x, x_298.y, x_299.z);
  let x_301 : vec3<f32> = u_xlat0;
  let x_305 : vec2<f32> = clamp(vec2<f32>(x_301.x, x_301.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_306 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_305.x, x_305.y, x_306.z);
  let x_308 : vec3<f32> = u_xlat0;
  let x_311 : f32 = x_13.x_RenderViewportScaleFactor;
  let x_313 : vec2<f32> = (vec2<f32>(x_308.x, x_308.y) * vec2<f32>(x_311, x_311));
  let x_314 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_313.x, x_313.y, x_314.z);
  let x_321 : vec3<f32> = u_xlat0;
  let x_323 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_321.x, x_321.y));
  u_xlat0.x = x_323.x;
  let x_326 : f32 = u_xlat8;
  let x_328 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_326, x_328);
  let x_331 : f32 = u_xlat12;
  let x_333 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_331, x_333);
  let x_337 : f32 = u_xlat1.x;
  let x_340 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_337) + x_340);
  let x_346 : f32 = x_13.x_TaaParams.z;
  let x_348 : f32 = x_13.x_TaaParams.z;
  let x_350 : f32 = x_13.x_TaaParams.z;
  let x_352 : f32 = x_13.x_TaaParams.z;
  let x_354 : vec3<f32> = u_xlat0;
  let x_357 : vec4<f32> = u_xlat1;
  SV_Target0 = ((vec4<f32>(x_346, x_348, x_350, x_352) * vec4<f32>(x_354.x, x_354.x, x_354.x, x_354.x)) + vec4<f32>(x_357.x, x_357.x, x_357.x, x_357.x));
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

