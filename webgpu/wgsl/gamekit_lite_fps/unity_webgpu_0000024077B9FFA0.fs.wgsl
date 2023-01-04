struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(0) var<uniform> x_51 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati21 : i32;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(7) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(8) var sampler_Lut2D : sampler;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  u_xlat7 = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_40 : vec2<f32> = u_xlat7;
  let x_41 : vec2<f32> = u_xlat7;
  u_xlat21 = dot(x_40, x_41);
  let x_43 : f32 = u_xlat21;
  let x_45 : vec2<f32> = u_xlat7;
  u_xlat7 = (vec2<f32>(x_43, x_43) * x_45);
  let x_47 : vec2<f32> = u_xlat7;
  let x_56 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_58 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_59 : vec2<f32> = vec2<f32>(x_56, x_58);
  u_xlat7 = (x_47 * vec2<f32>(x_59.x, x_59.y));
  let x_65 : vec2<f32> = u_xlat7;
  let x_70 : vec4<f32> = x_51.x_MainTex_TexelSize;
  let x_72 : vec2<f32> = (-(x_65) * vec2<f32>(x_70.z, x_70.w));
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_72.x, x_72.y, x_73.z, x_73.w);
  let x_75 : vec4<f32> = u_xlat1;
  let x_79 : vec2<f32> = (vec2<f32>(x_75.x, x_75.y) * vec2<f32>(0.5f, 0.5f));
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_80.w);
  let x_82 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_82.x, x_82.y), vec2<f32>(x_84.x, x_84.y));
  let x_87 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_87);
  let x_91 : f32 = u_xlat21;
  u_xlati21 = i32(x_91);
  let x_93 : i32 = u_xlati21;
  u_xlati21 = max(x_93, 3i);
  let x_96 : i32 = u_xlati21;
  u_xlati21 = min(x_96, 16i);
  let x_99 : i32 = u_xlati21;
  u_xlat1.x = f32(x_99);
  let x_102 : vec2<f32> = u_xlat7;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_102) / vec2<f32>(x_104.x, x_104.x));
  u_xlat2.y = 0.0f;
  u_xlat16.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_130 : vec2<f32> = vs_TEXCOORD0;
  let x_131 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_141 : i32 = u_xlati_loop_1;
    let x_142 : i32 = u_xlati21;
    if ((x_141 < x_142)) {
    } else {
      break;
    }
    let x_146 : i32 = u_xlati_loop_1;
    u_xlat6.x = f32(x_146);
    let x_150 : f32 = u_xlat6.x;
    u_xlat6.x = (x_150 + 0.5f);
    let x_154 : f32 = u_xlat6.x;
    let x_156 : f32 = u_xlat1.x;
    u_xlat2.x = (x_154 / x_156);
    let x_159 : vec3<f32> = u_xlat8;
    let x_160 : vec2<f32> = vec2<f32>(x_159.x, x_159.y);
    let x_161 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_160.x, x_160.y, x_161.z, x_161.w);
    let x_163 : vec4<f32> = u_xlat6;
    let x_167 : vec2<f32> = clamp(vec2<f32>(x_163.x, x_163.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_168 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_167.x, x_167.y, x_168.z, x_168.w);
    let x_170 : vec4<f32> = u_xlat6;
    let x_173 : f32 = x_51.x_RenderViewportScaleFactor;
    let x_175 : vec2<f32> = (vec2<f32>(x_170.x, x_170.y) * vec2<f32>(x_173, x_173));
    let x_176 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_175.x, x_175.y, x_176.z, x_176.w);
    let x_183 : vec4<f32> = u_xlat6;
    let x_185 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_183.x, x_183.y), 0.0f);
    u_xlat6 = x_185;
    let x_191 : vec3<f32> = u_xlat2;
    let x_193 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_191.x, x_191.y), 0.0f);
    let x_194 : vec3<f32> = vec3<f32>(x_193.x, x_193.y, x_193.z);
    let x_195 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
    let x_197 : vec4<f32> = u_xlat6;
    let x_198 : vec4<f32> = u_xlat3;
    let x_200 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_197 * x_198) + x_200);
    let x_202 : vec4<f32> = u_xlat3;
    let x_203 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_202 + x_203);
    let x_205 : vec2<f32> = u_xlat7;
    let x_206 : vec3<f32> = u_xlat8;
    let x_208 : vec2<f32> = (x_205 + vec2<f32>(x_206.x, x_206.y));
    let x_209 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_208.x, x_208.y, x_209.z);

    continuing {
      let x_211 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_211 + 1i);
    }
  }
  let x_213 : vec4<f32> = u_xlat4;
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_213 / x_214);
  let x_216 : vec4<f32> = u_xlat0;
  let x_218 : vec4<f32> = u_xlat1;
  let x_220 : vec3<f32> = (vec3<f32>(x_216.x, x_216.x, x_216.x) * vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_223 : vec4<f32> = u_xlat1;
  let x_226 : f32 = x_51.x_PostExposure;
  let x_228 : f32 = x_51.x_PostExposure;
  let x_230 : f32 = x_51.x_PostExposure;
  let x_232 : f32 = x_51.x_PostExposure;
  let x_233 : vec4<f32> = vec4<f32>(x_226, x_228, x_230, x_232);
  u_xlat0 = (x_223 * vec4<f32>(x_233.x, x_233.y, x_233.z, x_233.w));
  let x_240 : vec4<f32> = u_xlat0;
  let x_247 : vec3<f32> = ((vec3<f32>(x_240.z, x_240.x, x_240.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_248 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : vec4<f32> = u_xlat1;
  let x_252 : vec3<f32> = log2(vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_253 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec4<f32> = u_xlat1;
  let x_262 : vec3<f32> = ((vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_263 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_265 : vec4<f32> = u_xlat1;
  let x_269 : vec3<f32> = clamp(vec3<f32>(x_265.x, x_265.y, x_265.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_270 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_272 : vec4<f32> = u_xlat1;
  let x_276 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_272.x, x_272.y, x_272.z) * vec3<f32>(x_276.z, x_276.z, x_276.z));
  let x_280 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_280);
  let x_284 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_286 : vec2<f32> = (vec2<f32>(x_284.x, x_284.y) * vec2<f32>(0.5f, 0.5f));
  let x_287 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_286.x, x_286.y, x_287.z);
  let x_289 : vec3<f32> = u_xlat8;
  let x_292 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_295 : vec3<f32> = u_xlat2;
  let x_297 : vec2<f32> = ((vec2<f32>(x_289.y, x_289.z) * vec2<f32>(x_292.x, x_292.y)) + vec2<f32>(x_295.x, x_295.y));
  let x_298 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_298.x, x_297.x, x_297.y, x_298.w);
  let x_301 : f32 = u_xlat8.x;
  let x_303 : f32 = x_51.x_Lut2D_Params.y;
  let x_306 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_301 * x_303) + x_306);
  let x_314 : vec4<f32> = u_xlat3;
  let x_316 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_314.x, x_314.z));
  let x_317 : vec3<f32> = vec3<f32>(x_316.x, x_316.y, x_316.z);
  let x_318 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_321 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_321;
  let x_324 : vec2<f32> = u_xlat16;
  let x_325 : vec4<f32> = u_xlat3;
  u_xlat15 = (x_324 + vec2<f32>(x_325.x, x_325.z));
  let x_331 : vec2<f32> = u_xlat15;
  let x_332 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_331);
  u_xlat2 = vec3<f32>(x_332.x, x_332.y, x_332.z);
  let x_335 : f32 = u_xlat1.x;
  let x_337 : f32 = x_51.x_Lut2D_Params.z;
  let x_340 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_335 * x_337) + -(x_340));
  let x_344 : vec4<f32> = u_xlat4;
  let x_347 : vec3<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_344.x, x_344.y, x_344.z)) + x_347);
  let x_349 : vec4<f32> = u_xlat1;
  let x_351 : vec3<f32> = u_xlat8;
  let x_353 : vec4<f32> = u_xlat4;
  let x_355 : vec3<f32> = ((vec3<f32>(x_349.x, x_349.x, x_349.x) * x_351) + vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_362 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_362);
  let x_364 : bool = u_xlatb1;
  if (x_364) {
    let x_367 : vec4<f32> = u_xlat0;
    let x_368 : vec3<f32> = vec3<f32>(x_367.x, x_367.y, x_367.z);
    let x_369 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
    let x_371 : vec4<f32> = u_xlat1;
    let x_375 : vec3<f32> = clamp(vec3<f32>(x_371.x, x_371.y, x_371.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_376 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
    let x_378 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_378.x, x_378.y, x_378.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_388 : vec4<f32> = u_xlat0;
  SV_Target0 = x_388;
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

