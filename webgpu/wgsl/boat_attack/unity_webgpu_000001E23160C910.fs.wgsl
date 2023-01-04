struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(2) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(1) @binding(1) var<uniform> x_45 : UnityPerMaterial;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat2 : f32;
  var u_xlat4 : f32;
  var u_xlat6 : f32;
  var u_xlatb4 : bool;
  var u_xlatb6 : bool;
  var x_106 : f32;
  var u_xlatb0 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_33);
  u_xlat0.x = x_35.w;
  let x_42 : f32 = u_xlat0.x;
  let x_48 : f32 = x_45.x_BaseColor.w;
  u_xlat2 = (x_42 * x_48);
  let x_51 : f32 = u_xlat0.x;
  let x_53 : f32 = x_45.x_BaseColor.w;
  let x_57 : f32 = x_45.x_Cutoff;
  u_xlat0.x = ((x_51 * x_53) + -(x_57));
  let x_62 : f32 = u_xlat2;
  u_xlat4 = dpdxCoarse(x_62);
  let x_65 : f32 = u_xlat2;
  u_xlat6 = dpdyCoarse(x_65);
  let x_67 : f32 = u_xlat6;
  let x_69 : f32 = u_xlat4;
  u_xlat4 = (abs(x_67) + abs(x_69));
  let x_72 : f32 = u_xlat4;
  u_xlat4 = max(x_72, 0.0001f);
  let x_76 : f32 = u_xlat0.x;
  let x_77 : f32 = u_xlat4;
  u_xlat0.x = (x_76 / x_77);
  let x_81 : f32 = u_xlat0.x;
  u_xlat0.x = (x_81 + 0.5f);
  let x_86 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_86, 0.0f, 1.0f);
  let x_95 : f32 = x_26.x_AlphaToMaskAvailable;
  u_xlatb4 = !((x_95 == 0.0f));
  let x_98 : f32 = u_xlat2;
  let x_100 : f32 = x_45.x_Cutoff;
  u_xlatb6 = (x_98 >= x_100);
  let x_102 : bool = u_xlatb6;
  let x_103 : f32 = u_xlat2;
  u_xlat2 = select(0.0f, x_103, x_102);
  let x_105 : bool = u_xlatb4;
  if (x_105) {
    let x_110 : f32 = u_xlat0.x;
    x_106 = x_110;
  } else {
    let x_112 : f32 = u_xlat2;
    x_106 = x_112;
  }
  let x_113 : f32 = x_106;
  u_xlat0.x = x_113;
  let x_116 : f32 = u_xlat0.x;
  u_xlat0.x = (x_116 + -0.0001f);
  let x_122 : f32 = u_xlat0.x;
  u_xlatb0 = (x_122 < 0.0f);
  let x_124 : bool = u_xlatb0;
  if (((select(0i, 1i, x_124) * -1i) != 0i)) {
    discard;
  }
  let x_137 : vec2<f32> = vs_TEXCOORD1;
  let x_139 : f32 = x_26.x_GlobalMipBias.x;
  let x_140 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_137, x_139);
  u_xlat0 = vec3<f32>(x_140.x, x_140.y, x_140.w);
  let x_143 : f32 = u_xlat0.x;
  let x_146 : f32 = u_xlat0.z;
  u_xlat0.x = (x_143 * x_146);
  let x_149 : vec3<f32> = u_xlat0;
  let x_156 : vec2<f32> = ((vec2<f32>(x_149.x, x_149.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_157 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_156.x, x_156.y, x_157.z);
  let x_160 : vec3<f32> = u_xlat0;
  let x_164 : vec4<f32> = vs_TEXCOORD4;
  u_xlat1 = (vec3<f32>(x_160.y, x_160.y, x_160.y) * vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : vec3<f32> = u_xlat0;
  let x_170 : vec4<f32> = vs_TEXCOORD3;
  let x_173 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_167.x, x_167.x, x_167.x) * vec3<f32>(x_170.x, x_170.y, x_170.z)) + x_173);
  let x_175 : vec3<f32> = u_xlat0;
  let x_177 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_175.x, x_175.y), vec2<f32>(x_177.x, x_177.y));
  let x_182 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_182, 1.0f);
  let x_186 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_186) + 1.0f);
  let x_191 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_191);
  let x_195 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_195, 1.00000002e-16f);
  let x_199 : vec3<f32> = u_xlat0;
  let x_202 : vec4<f32> = vs_TEXCOORD2;
  let x_205 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(x_202.x, x_202.y, x_202.z)) + x_205);
  let x_207 : vec3<f32> = u_xlat0;
  let x_208 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(x_207, x_208);
  let x_210 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_210);
  let x_214 : f32 = u_xlat6;
  let x_216 : vec3<f32> = u_xlat0;
  let x_217 : vec3<f32> = (vec3<f32>(x_214, x_214, x_214) * x_216);
  let x_218 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec2<f32>, @location(3) vs_TEXCOORD4_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

