struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
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
  var u_xlat7 : vec2<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati21 : i32;
  var u_xlat2 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat16 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_33 : vec2<f32> = vs_TEXCOORD0;
  u_xlat7 = ((x_33 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_41 : vec2<f32> = u_xlat7;
  let x_42 : vec2<f32> = u_xlat7;
  u_xlat21 = dot(x_41, x_42);
  let x_44 : f32 = u_xlat21;
  let x_46 : vec2<f32> = u_xlat7;
  u_xlat7 = (vec2<f32>(x_44, x_44) * x_46);
  let x_48 : vec2<f32> = u_xlat7;
  let x_56 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_58 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_59 : vec2<f32> = vec2<f32>(x_56, x_58);
  u_xlat7 = (x_48 * vec2<f32>(x_59.x, x_59.y));
  let x_66 : vec2<f32> = u_xlat7;
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
  u_xlat21 = dot(vec2<f32>(x_83.x, x_83.y), vec2<f32>(x_85.x, x_85.y));
  let x_88 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_88);
  let x_92 : f32 = u_xlat21;
  u_xlati21 = i32(x_92);
  let x_94 : i32 = u_xlati21;
  u_xlati21 = max(x_94, 3i);
  let x_97 : i32 = u_xlati21;
  u_xlati21 = min(x_97, 16i);
  let x_100 : i32 = u_xlati21;
  u_xlat1.x = f32(x_100);
  let x_103 : vec2<f32> = u_xlat7;
  let x_105 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_103) / vec2<f32>(x_105.x, x_105.x));
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
  let x_128 : vec2<f32> = vs_TEXCOORD0;
  u_xlat8 = x_128;
  u_xlati_loop_1 = 0i;
  loop {
    let x_136 : i32 = u_xlati_loop_1;
    let x_137 : i32 = u_xlati21;
    if ((x_136 < x_137)) {
    } else {
      break;
    }
    let x_141 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_141);
    let x_145 : f32 = u_xlat16.x;
    u_xlat16.x = (x_145 + 0.5f);
    let x_149 : f32 = u_xlat16.x;
    let x_151 : f32 = u_xlat1.x;
    u_xlat2.x = (x_149 / x_151);
    let x_154 : vec2<f32> = u_xlat8;
    u_xlat16 = x_154;
    let x_155 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_155, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_159 : vec2<f32> = u_xlat16;
    let x_161 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_159 * vec2<f32>(x_161, x_161));
    let x_170 : vec2<f32> = u_xlat16;
    let x_171 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_170, 0.0f);
    u_xlat6 = x_171;
    let x_177 : vec2<f32> = u_xlat2;
    let x_178 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, x_177, 0.0f);
    let x_179 : vec3<f32> = vec3<f32>(x_178.x, x_178.y, x_178.z);
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
  let x_198 : vec3<f32> = u_xlat0;
  let x_200 : vec4<f32> = u_xlat1;
  let x_202 : vec3<f32> = (vec3<f32>(x_198.x, x_198.x, x_198.x) * vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_203 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_208 : f32 = x_51.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_208);
  let x_210 : bool = u_xlatb0;
  if (x_210) {
    let x_213 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_213.x, x_213.y, x_213.z);
    let x_215 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_215, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_219 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_219, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_228 : vec4<f32> = u_xlat1;
  SV_Target0 = x_228;
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

