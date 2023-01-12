struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_TaaParams : vec3<f32>,
}

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(2) var x_CoCTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_CoCTex : sampler;

@group(0) @binding(1) var x_CameraMotionVectorsTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_CameraMotionVectorsTexture : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlatb5 : bool;
  var u_xlat2 : vec4<f32>;
  var x_122 : f32;
  var u_xlatb9 : bool;
  var u_xlat3 : vec2<f32>;
  var u_xlat11 : vec2<f32>;
  var x_156 : vec2<f32>;
  var x_166 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb6 : bool;
  var x_230 : vec3<f32>;
  var u_xlat8 : f32;
  var x_249 : vec2<f32>;
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
    let x_125 : f32 = u_xlat12;
    x_122 = x_125;
  } else {
    let x_128 : f32 = u_xlat1.x;
    x_122 = x_128;
  }
  let x_129 : f32 = x_122;
  u_xlat2.z = x_129;
  let x_131 : f32 = u_xlat12;
  let x_133 : f32 = u_xlat1.x;
  u_xlat12 = max(x_131, x_133);
  let x_136 : f32 = u_xlat0.z;
  let x_137 : f32 = u_xlat12;
  u_xlat12 = max(x_136, x_137);
  let x_141 : f32 = u_xlat0.z;
  let x_143 : f32 = u_xlat2.z;
  u_xlatb9 = (x_141 < x_143);
  let x_148 : vec4<f32> = x_13.x_MainTex_TexelSize;
  u_xlat3 = (vec2<f32>(x_148.x, x_148.y) * vec2<f32>(1.0f, 0.0f));
  let x_153 : vec2<f32> = u_xlat3;
  u_xlat11 = -(x_153);
  let x_155 : bool = u_xlatb5;
  if (x_155) {
    let x_159 : vec2<f32> = u_xlat11;
    x_156 = x_159;
  } else {
    x_156 = vec2<f32>(0.0f, 0.0f);
  }
  let x_162 : vec2<f32> = x_156;
  let x_163 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_162.x, x_162.y, x_163.z, x_163.w);
  let x_165 : bool = u_xlatb9;
  if (x_165) {
    let x_169 : vec3<f32> = u_xlat0;
    x_166 = x_169;
  } else {
    let x_171 : vec4<f32> = u_xlat2;
    x_166 = vec3<f32>(x_171.x, x_171.y, x_171.z);
  }
  let x_173 : vec3<f32> = x_166;
  u_xlat0 = x_173;
  let x_175 : vec4<f32> = x_13.x_MainTex_TexelSize;
  let x_179 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_175.y, x_175.y, x_175.x, x_175.y) * vec4<f32>(0.0f, 1.0f, 1.0f, 0.0f)) + vec4<f32>(x_179.x, x_179.y, x_179.x, x_179.y));
  let x_182 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_182, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_186 : vec4<f32> = u_xlat2;
  let x_188 : f32 = x_13.x_RenderViewportScaleFactor;
  u_xlat2 = (x_186 * vec4<f32>(x_188, x_188, x_188, x_188));
  let x_195 : vec4<f32> = u_xlat2;
  let x_197 : vec4<f32> = textureSample(x_CoCTex, sampler_CoCTex, vec2<f32>(x_195.x, x_195.y));
  u_xlat5.z = x_197.x;
  let x_203 : vec4<f32> = u_xlat2;
  let x_205 : vec4<f32> = textureSample(x_CoCTex, sampler_CoCTex, vec2<f32>(x_203.z, x_203.w));
  u_xlat2.x = x_205.x;
  let x_210 : f32 = u_xlat5.z;
  let x_212 : f32 = u_xlat0.z;
  u_xlatb6 = (x_210 < x_212);
  let x_215 : vec4<f32> = x_13.x_MainTex_TexelSize;
  let x_218 : vec2<f32> = (vec2<f32>(x_215.y, x_215.y) * vec2<f32>(0.0f, 1.0f));
  let x_219 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_218.x, x_218.y, x_219.z);
  let x_221 : f32 = u_xlat12;
  let x_223 : f32 = u_xlat5.z;
  u_xlat12 = max(x_221, x_223);
  let x_226 : f32 = u_xlat2.x;
  let x_227 : f32 = u_xlat12;
  u_xlat12 = max(x_226, x_227);
  let x_229 : bool = u_xlatb6;
  if (x_229) {
    let x_233 : vec3<f32> = u_xlat5;
    x_230 = x_233;
  } else {
    let x_235 : vec3<f32> = u_xlat0;
    x_230 = x_235;
  }
  let x_236 : vec3<f32> = x_230;
  u_xlat0 = x_236;
  let x_238 : f32 = u_xlat2.x;
  let x_240 : f32 = u_xlat0.z;
  u_xlatb5 = (x_238 < x_240);
  let x_244 : f32 = u_xlat2.x;
  let x_246 : f32 = u_xlat0.z;
  u_xlat8 = min(x_244, x_246);
  let x_248 : bool = u_xlatb5;
  if (x_248) {
    let x_252 : vec2<f32> = u_xlat3;
    x_249 = x_252;
  } else {
    let x_254 : vec3<f32> = u_xlat0;
    x_249 = vec2<f32>(x_254.x, x_254.y);
  }
  let x_256 : vec2<f32> = x_249;
  let x_257 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_256.x, x_256.y, x_257.z);
  let x_259 : vec3<f32> = u_xlat0;
  let x_261 : vec2<f32> = vs_TEXCOORD0;
  let x_262 : vec2<f32> = (vec2<f32>(x_259.x, x_259.y) + x_261);
  let x_263 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_262.x, x_262.y, x_263.z);
  let x_265 : vec3<f32> = u_xlat0;
  let x_269 : vec2<f32> = clamp(vec2<f32>(x_265.x, x_265.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_270 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_269.x, x_269.y, x_270.z);
  let x_272 : vec3<f32> = u_xlat0;
  let x_275 : f32 = x_13.x_RenderViewportScaleFactor;
  let x_277 : vec2<f32> = (vec2<f32>(x_272.x, x_272.y) * vec2<f32>(x_275, x_275));
  let x_278 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_277.x, x_277.y, x_278.z);
  let x_285 : vec3<f32> = u_xlat0;
  let x_287 : vec4<f32> = textureSample(x_CameraMotionVectorsTexture, sampler_CameraMotionVectorsTexture, vec2<f32>(x_285.x, x_285.y));
  let x_288 : vec2<f32> = vec2<f32>(x_287.x, x_287.y);
  let x_289 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_288.x, x_288.y, x_289.z);
  let x_291 : vec3<f32> = u_xlat0;
  let x_294 : vec2<f32> = vs_TEXCOORD0;
  let x_295 : vec2<f32> = (-(vec2<f32>(x_291.x, x_291.y)) + x_294);
  let x_296 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_295.x, x_295.y, x_296.z);
  let x_298 : vec3<f32> = u_xlat0;
  let x_302 : vec2<f32> = clamp(vec2<f32>(x_298.x, x_298.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_303 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_302.x, x_302.y, x_303.z);
  let x_305 : vec3<f32> = u_xlat0;
  let x_308 : f32 = x_13.x_RenderViewportScaleFactor;
  let x_310 : vec2<f32> = (vec2<f32>(x_305.x, x_305.y) * vec2<f32>(x_308, x_308));
  let x_311 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_310.x, x_310.y, x_311.z);
  let x_318 : vec3<f32> = u_xlat0;
  let x_320 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_318.x, x_318.y));
  u_xlat0.x = x_320.x;
  let x_323 : f32 = u_xlat8;
  let x_325 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_323, x_325);
  let x_328 : f32 = u_xlat12;
  let x_330 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_328, x_330);
  let x_334 : f32 = u_xlat1.x;
  let x_337 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_334) + x_337);
  let x_343 : f32 = x_13.x_TaaParams.z;
  let x_345 : f32 = x_13.x_TaaParams.z;
  let x_347 : f32 = x_13.x_TaaParams.z;
  let x_349 : f32 = x_13.x_TaaParams.z;
  let x_351 : vec3<f32> = u_xlat0;
  let x_354 : vec4<f32> = u_xlat1;
  SV_Target0 = ((vec4<f32>(x_343, x_345, x_347, x_349) * vec4<f32>(x_351.x, x_351.x, x_351.x, x_351.x)) + vec4<f32>(x_354.x, x_354.x, x_354.x, x_354.x));
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

