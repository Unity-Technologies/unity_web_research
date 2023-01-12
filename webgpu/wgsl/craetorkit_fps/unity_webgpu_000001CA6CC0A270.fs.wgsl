struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_MaxCoC : f32,
}

@group(1) @binding(0) var<uniform> x_12 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

@group(0) @binding(1) var x_CoCTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_CoCTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat13 : f32;
  var u_xlat8 : f32;
  var u_xlat12 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat4 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlatb8 : bool;
  var x_296 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_27 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((-(vec4<f32>(x_17.x, x_17.y, x_17.x, x_17.y)) * vec4<f32>(0.5f, 0.5f, -0.5f, 0.5f)) + vec4<f32>(x_27.x, x_27.y, x_27.x, x_27.y));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_30, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_40 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat0 = (x_36 * vec4<f32>(x_40, x_40, x_40, x_40));
  let x_56 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_56.z, x_56.w));
  u_xlat1 = vec3<f32>(x_58.x, x_58.y, x_58.z);
  let x_65 : f32 = u_xlat1.y;
  let x_68 : f32 = u_xlat1.x;
  u_xlat13 = max(x_65, x_68);
  let x_72 : f32 = u_xlat1.z;
  let x_73 : f32 = u_xlat13;
  u_xlat13 = max(x_72, x_73);
  let x_75 : f32 = u_xlat13;
  u_xlat13 = (x_75 + 1.0f);
  let x_83 : vec4<f32> = u_xlat0;
  let x_85 : vec4<f32> = textureSample(x_CoCTex, sampler_CoCTex, vec2<f32>(x_83.z, x_83.w));
  u_xlat8 = x_85.x;
  let x_87 : f32 = u_xlat8;
  u_xlat8 = ((x_87 * 2.0f) + -1.0f);
  let x_93 : f32 = u_xlat8;
  let x_95 : f32 = u_xlat13;
  u_xlat12 = (abs(x_93) / x_95);
  let x_97 : f32 = u_xlat12;
  let x_99 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_97, x_97, x_97) * x_99);
  let x_105 : vec4<f32> = u_xlat0;
  let x_107 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_105.x, x_105.y));
  let x_108 : vec3<f32> = vec3<f32>(x_107.x, x_107.y, x_107.z);
  let x_109 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_114 : vec4<f32> = u_xlat0;
  let x_116 : vec4<f32> = textureSample(x_CoCTex, sampler_CoCTex, vec2<f32>(x_114.x, x_114.y));
  u_xlat0.x = x_116.x;
  let x_120 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_120 * 2.0f) + -1.0f);
  let x_126 : f32 = u_xlat2.y;
  let x_128 : f32 = u_xlat2.x;
  u_xlat4 = max(x_126, x_128);
  let x_131 : f32 = u_xlat2.z;
  let x_132 : f32 = u_xlat4;
  u_xlat4 = max(x_131, x_132);
  let x_134 : f32 = u_xlat4;
  u_xlat4 = (x_134 + 1.0f);
  let x_137 : f32 = u_xlat0.x;
  let x_139 : f32 = u_xlat4;
  u_xlat4 = (abs(x_137) / x_139);
  let x_141 : vec4<f32> = u_xlat2;
  let x_143 : f32 = u_xlat4;
  let x_146 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143, x_143, x_143)) + x_146);
  let x_148 : f32 = u_xlat12;
  let x_149 : f32 = u_xlat4;
  u_xlat4 = (x_148 + x_149);
  let x_152 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_156 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_152.x, x_152.y, x_152.x, x_152.y) * vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f)) + vec4<f32>(x_156.x, x_156.y, x_156.x, x_156.y));
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_159, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat2 = (x_163 * vec4<f32>(x_165, x_165, x_165, x_165));
  let x_172 : vec4<f32> = u_xlat2;
  let x_174 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_172.x, x_172.y));
  u_xlat3 = vec3<f32>(x_174.x, x_174.y, x_174.z);
  let x_177 : f32 = u_xlat3.y;
  let x_179 : f32 = u_xlat3.x;
  u_xlat12 = max(x_177, x_179);
  let x_182 : f32 = u_xlat3.z;
  let x_183 : f32 = u_xlat12;
  u_xlat12 = max(x_182, x_183);
  let x_185 : f32 = u_xlat12;
  u_xlat12 = (x_185 + 1.0f);
  let x_190 : vec4<f32> = u_xlat2;
  let x_192 : vec4<f32> = textureSample(x_CoCTex, sampler_CoCTex, vec2<f32>(x_190.x, x_190.y));
  u_xlat13 = x_192.x;
  let x_194 : f32 = u_xlat13;
  u_xlat13 = ((x_194 * 2.0f) + -1.0f);
  let x_197 : f32 = u_xlat13;
  let x_199 : f32 = u_xlat12;
  u_xlat12 = (abs(x_197) / x_199);
  let x_201 : vec3<f32> = u_xlat3;
  let x_202 : f32 = u_xlat12;
  let x_205 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_201 * vec3<f32>(x_202, x_202, x_202)) + x_205);
  let x_207 : f32 = u_xlat12;
  let x_208 : f32 = u_xlat4;
  u_xlat4 = (x_207 + x_208);
  let x_213 : vec4<f32> = u_xlat2;
  let x_215 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_213.z, x_213.w));
  u_xlat3 = vec3<f32>(x_215.x, x_215.y, x_215.z);
  let x_220 : vec4<f32> = u_xlat2;
  let x_222 : vec4<f32> = textureSample(x_CoCTex, sampler_CoCTex, vec2<f32>(x_220.z, x_220.w));
  u_xlat12 = x_222.x;
  let x_224 : f32 = u_xlat12;
  u_xlat12 = ((x_224 * 2.0f) + -1.0f);
  let x_228 : f32 = u_xlat3.y;
  let x_230 : f32 = u_xlat3.x;
  u_xlat2.x = max(x_228, x_230);
  let x_234 : f32 = u_xlat3.z;
  let x_236 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_234, x_236);
  let x_240 : f32 = u_xlat2.x;
  u_xlat2.x = (x_240 + 1.0f);
  let x_243 : f32 = u_xlat12;
  let x_246 : f32 = u_xlat2.x;
  u_xlat2.x = (abs(x_243) / x_246);
  let x_249 : vec3<f32> = u_xlat3;
  let x_250 : vec4<f32> = u_xlat2;
  let x_253 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_249 * vec3<f32>(x_250.x, x_250.x, x_250.x)) + x_253);
  let x_255 : f32 = u_xlat4;
  let x_257 : f32 = u_xlat2.x;
  u_xlat4 = (x_255 + x_257);
  let x_259 : f32 = u_xlat4;
  u_xlat4 = max(x_259, 0.0001f);
  let x_262 : vec3<f32> = u_xlat1;
  let x_263 : f32 = u_xlat4;
  u_xlat1 = (x_262 / vec3<f32>(x_263, x_263, x_263));
  let x_266 : f32 = u_xlat8;
  let x_267 : f32 = u_xlat13;
  u_xlat4 = min(x_266, x_267);
  let x_269 : f32 = u_xlat8;
  let x_270 : f32 = u_xlat13;
  u_xlat8 = max(x_269, x_270);
  let x_272 : f32 = u_xlat12;
  let x_273 : f32 = u_xlat8;
  u_xlat8 = max(x_272, x_273);
  let x_275 : f32 = u_xlat12;
  let x_276 : f32 = u_xlat4;
  u_xlat4 = min(x_275, x_276);
  let x_278 : f32 = u_xlat4;
  let x_280 : f32 = u_xlat0.x;
  u_xlat4 = min(x_278, x_280);
  let x_282 : f32 = u_xlat8;
  let x_284 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_282, x_284);
  let x_291 : f32 = u_xlat0.x;
  let x_292 : f32 = u_xlat4;
  u_xlatb8 = (x_291 < -(x_292));
  let x_295 : bool = u_xlatb8;
  if (x_295) {
    let x_299 : f32 = u_xlat4;
    x_296 = x_299;
  } else {
    let x_302 : f32 = u_xlat0.x;
    x_296 = x_302;
  }
  let x_303 : f32 = x_296;
  u_xlat0.x = x_303;
  let x_306 : f32 = u_xlat0.x;
  let x_309 : f32 = x_12.x_MaxCoC;
  u_xlat0.x = (x_306 * x_309);
  let x_313 : f32 = x_12.x_MainTex_TexelSize.y;
  let x_315 : f32 = x_12.x_MainTex_TexelSize.y;
  u_xlat4 = (x_313 + x_315);
  let x_317 : f32 = u_xlat4;
  u_xlat4 = (1.0f / x_317);
  let x_319 : f32 = u_xlat4;
  let x_321 : f32 = u_xlat0.x;
  u_xlat4 = (x_319 * abs(x_321));
  let x_324 : f32 = u_xlat4;
  u_xlat4 = clamp(x_324, 0.0f, 1.0f);
  let x_329 : f32 = u_xlat0.x;
  SV_Target0.w = x_329;
  let x_333 : f32 = u_xlat4;
  u_xlat0.x = ((x_333 * -2.0f) + 3.0f);
  let x_339 : f32 = u_xlat4;
  let x_340 : f32 = u_xlat4;
  u_xlat4 = (x_339 * x_340);
  let x_342 : f32 = u_xlat4;
  let x_344 : f32 = u_xlat0.x;
  u_xlat0.x = (x_342 * x_344);
  let x_347 : vec4<f32> = u_xlat0;
  let x_349 : vec3<f32> = u_xlat1;
  let x_350 : vec3<f32> = (vec3<f32>(x_347.x, x_347.x, x_347.x) * x_349);
  let x_351 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
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

