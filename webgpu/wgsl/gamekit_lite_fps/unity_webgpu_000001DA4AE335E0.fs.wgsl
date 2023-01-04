struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat8 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlat5 : vec2<f32>;

var<private> u_xlat2 : f32;

var<private> u_xlat3 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlat6 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlatb14 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(6) var sampler_Lut3D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_210 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_30 : vec4<f32> = x_25.x_Distortion_Amount;
  u_xlat8 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_25.x_Distortion_Amount;
  let x_44 : vec4<f32> = x_25.x_Distortion_CenterScale;
  let x_47 : vec2<f32> = ((vec2<f32>(x_36.x, x_36.y) * vec2<f32>(x_39.z, x_39.z)) + -(vec2<f32>(x_44.x, x_44.y)));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_25.x_Distortion_CenterScale;
  let x_55 : vec2<f32> = (vec2<f32>(x_50.x, x_50.y) * vec2<f32>(x_53.z, x_53.w));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_59.x, x_59.y), vec2<f32>(x_61.x, x_61.y));
  let x_69 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_69);
  let x_79 : f32 = x_25.x_Distortion_Amount.w;
  u_xlatb5 = (0.0f < x_79);
  let x_81 : bool = u_xlatb5;
  if (x_81) {
    let x_85 : vec4<f32> = u_xlat1;
    let x_88 : vec4<f32> = x_25.x_Distortion_Amount;
    u_xlat5 = (vec2<f32>(x_85.x, x_85.x) * vec2<f32>(x_88.x, x_88.y));
    let x_93 : f32 = u_xlat5.x;
    u_xlat2 = sin(x_93);
    let x_97 : f32 = u_xlat5.x;
    u_xlat3 = cos(x_97);
    let x_99 : f32 = u_xlat2;
    let x_100 : f32 = u_xlat3;
    u_xlat5.x = (x_99 / x_100);
    let x_107 : f32 = u_xlat5.y;
    u_xlat9 = (1.0f / x_107);
    let x_110 : f32 = u_xlat5.x;
    let x_111 : f32 = u_xlat9;
    u_xlat5.x = ((x_110 * x_111) + -1.0f);
    let x_116 : vec4<f32> = u_xlat0;
    let x_118 : vec2<f32> = u_xlat5;
    let x_121 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_118.x, x_118.x)) + x_121);
  } else {
    let x_126 : f32 = u_xlat1.x;
    u_xlat13 = (1.0f / x_126);
    let x_128 : f32 = u_xlat13;
    let x_130 : f32 = x_25.x_Distortion_Amount.x;
    u_xlat13 = (x_128 * x_130);
    let x_133 : f32 = u_xlat1.x;
    let x_135 : f32 = x_25.x_Distortion_Amount.y;
    u_xlat1.x = (x_133 * x_135);
    let x_139 : f32 = u_xlat1.x;
    u_xlat2 = min(abs(x_139), 1.0f);
    let x_144 : f32 = u_xlat1.x;
    u_xlat6 = max(abs(x_144), 1.0f);
    let x_147 : f32 = u_xlat6;
    u_xlat6 = (1.0f / x_147);
    let x_149 : f32 = u_xlat6;
    let x_150 : f32 = u_xlat2;
    u_xlat2 = (x_149 * x_150);
    let x_152 : f32 = u_xlat2;
    let x_153 : f32 = u_xlat2;
    u_xlat6 = (x_152 * x_153);
    let x_156 : f32 = u_xlat6;
    u_xlat10 = ((x_156 * 0.0208351f) + -0.085133001f);
    let x_161 : f32 = u_xlat6;
    let x_162 : f32 = u_xlat10;
    u_xlat10 = ((x_161 * x_162) + 0.180141002f);
    let x_166 : f32 = u_xlat6;
    let x_167 : f32 = u_xlat10;
    u_xlat10 = ((x_166 * x_167) + -0.330299497f);
    let x_171 : f32 = u_xlat6;
    let x_172 : f32 = u_xlat10;
    u_xlat6 = ((x_171 * x_172) + 0.999866009f);
    let x_176 : f32 = u_xlat6;
    let x_177 : f32 = u_xlat2;
    u_xlat10 = (x_176 * x_177);
    let x_181 : f32 = u_xlat1.x;
    u_xlatb14 = (1.0f < abs(x_181));
    let x_184 : f32 = u_xlat10;
    u_xlat10 = ((x_184 * -2.0f) + 1.570796371f);
    let x_189 : bool = u_xlatb14;
    let x_190 : f32 = u_xlat10;
    u_xlat10 = select(0.0f, x_190, x_189);
    let x_192 : f32 = u_xlat2;
    let x_193 : f32 = u_xlat6;
    let x_195 : f32 = u_xlat10;
    u_xlat2 = ((x_192 * x_193) + x_195);
    let x_198 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_198, 1.0f);
    let x_203 : f32 = u_xlat1.x;
    let x_205 : f32 = u_xlat1.x;
    u_xlatb1 = (x_203 < -(x_205));
    let x_208 : bool = u_xlatb1;
    if (x_208) {
      let x_213 : f32 = u_xlat2;
      x_210 = -(x_213);
    } else {
      let x_216 : f32 = u_xlat2;
      x_210 = x_216;
    }
    let x_217 : f32 = x_210;
    u_xlat1.x = x_217;
    let x_219 : f32 = u_xlat13;
    let x_221 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_219 * x_221) + -1.0f);
    let x_225 : vec4<f32> = u_xlat0;
    let x_227 : vec4<f32> = u_xlat1;
    let x_230 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_225.x, x_225.y) * vec2<f32>(x_227.x, x_227.x)) + x_230);
  }
  let x_243 : vec2<f32> = vs_TEXCOORD0;
  let x_244 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_243);
  u_xlat0.x = x_244.x;
  let x_252 : vec2<f32> = u_xlat5;
  let x_253 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_252);
  u_xlat1 = x_253;
  let x_255 : vec4<f32> = u_xlat0;
  let x_257 : vec4<f32> = u_xlat1;
  let x_259 : vec3<f32> = (vec3<f32>(x_255.x, x_255.x, x_255.x) * vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_262 : vec4<f32> = u_xlat1;
  let x_266 : f32 = x_25.x_PostExposure;
  let x_268 : f32 = x_25.x_PostExposure;
  let x_270 : f32 = x_25.x_PostExposure;
  let x_272 : f32 = x_25.x_PostExposure;
  let x_273 : vec4<f32> = vec4<f32>(x_266, x_268, x_270, x_272);
  u_xlat0 = (vec4<f32>(x_262.w, x_262.x, x_262.y, x_262.z) * vec4<f32>(x_273.x, x_273.y, x_273.z, x_273.w));
  let x_280 : vec4<f32> = u_xlat0;
  let x_287 : vec3<f32> = ((vec3<f32>(x_280.y, x_280.z, x_280.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_288 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_290 : vec4<f32> = u_xlat1;
  let x_292 : vec3<f32> = log2(vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec4<f32> = u_xlat1;
  let x_302 : vec3<f32> = ((vec3<f32>(x_295.x, x_295.y, x_295.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_303 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat1;
  let x_309 : vec3<f32> = clamp(vec3<f32>(x_305.x, x_305.y, x_305.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat1;
  let x_317 : vec2<f32> = x_25.x_Lut3D_Params;
  let x_319 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_317.y, x_317.y, x_317.y));
  let x_320 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_323 : f32 = x_25.x_Lut3D_Params.x;
  u_xlat13 = (x_323 * 0.5f);
  let x_325 : vec4<f32> = u_xlat1;
  let x_328 : vec2<f32> = x_25.x_Lut3D_Params;
  let x_331 : f32 = u_xlat13;
  let x_333 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_328.x, x_328.x, x_328.x)) + vec3<f32>(x_331, x_331, x_331));
  let x_334 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_344 : vec4<f32> = u_xlat1;
  let x_346 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec3<f32> = vec3<f32>(x_346.x, x_346.y, x_346.z);
  let x_348 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_348.x, x_347.x, x_347.y, x_347.z);
  let x_352 : f32 = x_25.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_352);
  let x_354 : bool = u_xlatb1;
  if (x_354) {
    let x_357 : vec4<f32> = u_xlat0;
    let x_358 : vec3<f32> = vec3<f32>(x_357.y, x_357.z, x_357.w);
    let x_359 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
    let x_361 : vec4<f32> = u_xlat1;
    let x_365 : vec3<f32> = clamp(vec3<f32>(x_361.x, x_361.y, x_361.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_366 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
    let x_368 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_368.x, x_368.y, x_368.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_378 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_378.y, x_378.z, x_378.w, x_378.x);
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

