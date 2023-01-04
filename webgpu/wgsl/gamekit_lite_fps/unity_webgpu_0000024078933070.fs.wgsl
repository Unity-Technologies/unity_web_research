struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(0) var<uniform> x_50 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati21 : i32;

var<private> u_xlat2 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(7) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat22 : f32;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(8) var sampler_Lut3D : sampler;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

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
  let x_55 : f32 = x_50.x_ChromaticAberration_Amount;
  let x_57 : f32 = x_50.x_ChromaticAberration_Amount;
  let x_58 : vec2<f32> = vec2<f32>(x_55, x_57);
  u_xlat7 = (x_47 * vec2<f32>(x_58.x, x_58.y));
  let x_64 : vec2<f32> = u_xlat7;
  let x_69 : vec4<f32> = x_50.x_MainTex_TexelSize;
  let x_71 : vec2<f32> = (-(x_64) * vec2<f32>(x_69.z, x_69.w));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  let x_74 : vec4<f32> = u_xlat1;
  let x_78 : vec2<f32> = (vec2<f32>(x_74.x, x_74.y) * vec2<f32>(0.5f, 0.5f));
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_78.x, x_78.y, x_79.z, x_79.w);
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_81.x, x_81.y), vec2<f32>(x_83.x, x_83.y));
  let x_86 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_86);
  let x_90 : f32 = u_xlat21;
  u_xlati21 = i32(x_90);
  let x_92 : i32 = u_xlati21;
  u_xlati21 = max(x_92, 3i);
  let x_95 : i32 = u_xlati21;
  u_xlati21 = min(x_95, 16i);
  let x_98 : i32 = u_xlati21;
  u_xlat1.x = f32(x_98);
  let x_101 : vec2<f32> = u_xlat7;
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_101) / vec2<f32>(x_103.x, x_103.x));
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
  let x_126 : vec2<f32> = vs_TEXCOORD0;
  u_xlat8 = x_126;
  u_xlati_loop_1 = 0i;
  loop {
    let x_135 : i32 = u_xlati_loop_1;
    let x_136 : i32 = u_xlati21;
    if ((x_135 < x_136)) {
    } else {
      break;
    }
    let x_140 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_140);
    let x_144 : f32 = u_xlat16.x;
    u_xlat16.x = (x_144 + 0.5f);
    let x_148 : f32 = u_xlat16.x;
    let x_150 : f32 = u_xlat1.x;
    u_xlat2.x = (x_148 / x_150);
    let x_153 : vec2<f32> = u_xlat8;
    u_xlat16 = x_153;
    let x_154 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_154, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_158 : vec2<f32> = u_xlat16;
    let x_160 : f32 = x_50.x_RenderViewportScaleFactor;
    u_xlat16 = (x_158 * vec2<f32>(x_160, x_160));
    let x_169 : vec2<f32> = u_xlat16;
    let x_170 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_169, 0.0f);
    u_xlat6 = x_170;
    let x_176 : vec2<f32> = u_xlat2;
    let x_177 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, x_176, 0.0f);
    let x_179 : vec3<f32> = vec3<f32>(x_177.x, x_177.y, x_177.z);
    let x_180 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_182 : vec4<f32> = u_xlat6;
    let x_183 : vec4<f32> = u_xlat3;
    let x_185 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_182 * x_183) + x_185);
    let x_187 : vec4<f32> = u_xlat3;
    let x_188 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_187 + x_188);
    let x_190 : vec2<f32> = u_xlat7;
    let x_191 : vec2<f32> = u_xlat8;
    u_xlat8 = (x_190 + x_191);

    continuing {
      let x_193 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_193 + 1i);
    }
  }
  let x_195 : vec4<f32> = u_xlat4;
  let x_196 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_195 / x_196);
  let x_198 : vec4<f32> = u_xlat0;
  let x_200 : vec4<f32> = u_xlat1;
  let x_202 : vec3<f32> = (vec3<f32>(x_198.x, x_198.x, x_198.x) * vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_203 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_205 : vec4<f32> = u_xlat1;
  let x_209 : f32 = x_50.x_PostExposure;
  let x_211 : f32 = x_50.x_PostExposure;
  let x_213 : f32 = x_50.x_PostExposure;
  let x_215 : f32 = x_50.x_PostExposure;
  let x_216 : vec4<f32> = vec4<f32>(x_209, x_211, x_213, x_215);
  u_xlat0 = (vec4<f32>(x_205.w, x_205.x, x_205.y, x_205.z) * vec4<f32>(x_216.x, x_216.y, x_216.z, x_216.w));
  let x_223 : vec4<f32> = u_xlat0;
  let x_230 : vec3<f32> = ((vec3<f32>(x_223.y, x_223.z, x_223.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_231 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = log2(vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat1;
  let x_245 : vec3<f32> = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_246 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_248 : vec4<f32> = u_xlat1;
  let x_252 : vec3<f32> = clamp(vec3<f32>(x_248.x, x_248.y, x_248.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_253 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec4<f32> = u_xlat1;
  let x_259 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_261 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(x_259.y, x_259.y, x_259.y));
  let x_262 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_266 : f32 = x_50.x_Lut3D_Params.x;
  u_xlat22 = (x_266 * 0.5f);
  let x_268 : vec4<f32> = u_xlat1;
  let x_271 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_274 : f32 = u_xlat22;
  let x_276 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_271.x, x_271.x, x_271.x)) + vec3<f32>(x_274, x_274, x_274));
  let x_277 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_287 : vec4<f32> = u_xlat1;
  let x_289 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec3<f32> = vec3<f32>(x_289.x, x_289.y, x_289.z);
  let x_291 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_291.x, x_290.x, x_290.y, x_290.z);
  let x_297 : f32 = x_50.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_297);
  let x_299 : bool = u_xlatb1;
  if (x_299) {
    let x_302 : vec4<f32> = u_xlat0;
    let x_303 : vec3<f32> = vec3<f32>(x_302.y, x_302.z, x_302.w);
    let x_304 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
    let x_306 : vec4<f32> = u_xlat1;
    let x_310 : vec3<f32> = clamp(vec3<f32>(x_306.x, x_306.y, x_306.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_311 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
    let x_313 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_313.x, x_313.y, x_313.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_323 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_323.y, x_323.z, x_323.w, x_323.x);
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

